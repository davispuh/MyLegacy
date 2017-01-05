using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
//using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using ExcelToAccess.Properties;
using System.Text.RegularExpressions;

namespace ExcelToAccess
{
    public partial class Window : Form
    {
        public byte Decode(uint inp)
        {
          byte retv;
          retv = (byte)((inp / 2) - 6);
          return retv;
        }

        public Window()
        {
            InitializeComponent();
            const uint vD = 148, vD2 = 12, vA = 14, vA2 = 14, vV = 248, vV2 = 12, vI = 222, vI2 = 12, vS = 242, vS2 = 12;
            const uint vsa = 76, vsa2 = 12, vM = 166, vM2 = 12, vO = 234, vO2 = 12, vN = 232, vN2 = 12;
            byte[] MyName = { 
                              Decode(vD), Decode(vD2), Decode(vA), Decode(vA2), Decode(vV), Decode(vV2), Decode(vI), Decode(vI2), Decode(vS), Decode(vS2), Decode(vsa), Decode(vsa2),
                              Decode(vM), Decode(vM2), Decode(vO), Decode(vO2), Decode(vS), Decode(vS2), Decode(vA), Decode(vA2), Decode(vN), Decode(vN2), Decode(vS), Decode(vS2)
                            };
            Author.Text += BitConverter.ToChar(MyName, 0);
            Author.Text += BitConverter.ToChar(MyName, 2);
            Author.Text += BitConverter.ToChar(MyName, 4);
            Author.Text += BitConverter.ToChar(MyName, 6);
            Author.Text += BitConverter.ToChar(MyName, 8);
            Author.Text += BitConverter.ToChar(MyName, 10);
            Author.Text += BitConverter.ToChar(MyName, 12);
            Author.Text += BitConverter.ToChar(MyName, 14);
            Author.Text += BitConverter.ToChar(MyName, 16);
            Author.Text += BitConverter.ToChar(MyName, 18);
            Author.Text += BitConverter.ToChar(MyName, 20);
            Author.Text += BitConverter.ToChar(MyName, 22);
        }

        public String LoadFile(String FileType,bool valid)
        {
          String retval;
          OpenFileDialog dlgOpenFile = new OpenFileDialog();
          dlgOpenFile.ValidateNames = true;
          dlgOpenFile.CheckPathExists = true;
          dlgOpenFile.CheckFileExists = valid ? true : false;
          dlgOpenFile.DefaultExt = FileType;
          if (FileType == "xls") { dlgOpenFile.Filter = "Microsoft Excel datne (*.xls)|*.xls";}
          else if (FileType == "mdb") { dlgOpenFile.Filter = "Microsoft Access datne (*.mdb)|*.mdb"; };
          dlgOpenFile.FilterIndex = 1;
          dlgOpenFile.Multiselect = false;
          dlgOpenFile.RestoreDirectory = true;
          dlgOpenFile.SupportMultiDottedExtensions = true;
          dlgOpenFile.ReadOnlyChecked = true;
          dlgOpenFile.Title = Resources.ChooseFile;
          if(dlgOpenFile.ShowDialog() == DialogResult.OK)
          {
            //Stream MyStream;
            //try
            //{
            //  MyStream = dlgOpenFile.OpenFile();
            //  MyStream.Close();
            //}
            //catch (IOException e)
            //{
            //   ResultText.Items.Add(e.GetType().Name);
            //};
            retval = dlgOpenFile.FileName;
            return retval;
          };
          return null;
        }

        public string myRemove(string str)
        {
            string retva;
            retva = str;
            retva = retva.Replace(".", "InvalidFieldName");
            retva = retva.Replace("!", "InvalidFieldName");
            retva = retva.Replace("\x5B", "InvalidFieldName");
            retva = retva.Replace("\x5D", "InvalidFieldName");
            return retva;
        }

        public string myReplace(string str)
        {
           string retva;
           retva = str;
           retva = retva.Replace("'", "''");
           return retva;
        }

        public bool CheckValues()
        {
            bool retval;
            retval = true;
            WorkStatus.Text = Resources.Checking;
            if (FileXLSText.Text.Length >= 8) { if (File.Exists(FileXLSText.Text) == false) { retval = false; ResultText.Items.Add(Resources.FileXLS + " (" + FileXLSText.Text + ") " + Resources.FileExist); };} else { retval = false; ResultText.Items.Add(Resources.EnterExcel); };
            if (FileMDBText.Text.Length >= 8) { if (File.Exists(FileMDBText.Text) == false) { retval = false; ResultText.Items.Add(Resources.FileMDB + " (" + FileMDBText.Text + ") " + Resources.FileExist); };} else { retval = false; ResultText.Items.Add(Resources.EnterAccess); };
            //if (FileMDBText.Text.Length < 8) { retval = false; ResultText.Items.Add(Resources.FileXLS + " (" + FileXLSText.Text + ") " + Resources.NotRight); };
            if (WorkSheet.Text.Length < 1) { retval = false; ResultText.Items.Add(Resources.EnterSheet); };
            if (Table.Text.Length < 1) { retval = false; ResultText.Items.Add(Resources.EnterTable); };
            if (LocStart.Text.Length > 0 || LocEnd.Text.Length > 0) { if (LocStart.Text.Length < 2 || LocEnd.Text.Length < 2 || LocStart.Text.Length > 7 || LocEnd.Text.Length > 7) { retval = false; ResultText.Items.Add(Resources.WrongExcelField); };};
            return retval;
        }
 
        private void BrowseFile_Click(object sender, EventArgs e)
        {
          String FileName;
          FileName = LoadFile("xls",true);
          if (FileName != null)
          { 
            FileXLSText.Text = FileName;
          } else
          {
            FileXLSText.Text = "";
          };
        }

        private void BrowseMDBFile_Click(object sender, EventArgs e)
        {
          String FileName;
          FileName = LoadFile("mdb",true);
          if (FileName != null)
          {
              FileMDBText.Text = FileName;
          }
          else
          {
              FileMDBText.Text = "";
          };
        }

        private void Ok_Click(object sender, EventArgs e)
        {
            ResultText.Items.Clear();
            bool success, SubSucces;
            success = false;
            SubSucces = false;
            if (CheckValues() == true)
            {
                string ColumQueryString = "";
                string InsertQueryString = "";
                string[] InsertValuesQueryString = new string[65535];
                int MaxRowCount;
                MaxRowCount = 0;
                WorkStatus.Text = Resources.FieldsValid;
                string ExcelConnectionString = "Driver={Microsoft Excel Driver (*.xls)};DBQ=" + FileXLSText.Text + ";Extended Properties=Excel 8.0;";
                string ExcelQueryString = "";
                if (LocStart.Text.Length >= 2 && LocEnd.Text.Length >= 2 && LocStart.Text.Length <= 7 && LocEnd.Text.Length <= 7) { ExcelQueryString = "SELECT * FROM [" + myRemove(WorkSheet.Text) + "$" + LocStart.Text.ToUpper() + ":" + LocEnd.Text.ToUpper() + "]"; }
                else { ExcelQueryString = "SELECT * FROM [" + myRemove(WorkSheet.Text) + "$]"; };

                using (OdbcConnection ExcelConnection = new OdbcConnection(ExcelConnectionString))
                {
                    OdbcCommand ExcelCommand = ExcelConnection.CreateCommand();
                    ExcelCommand.CommandText = ExcelQueryString;
                    try
                    {
                        WorkStatus.Text = Resources.ConnectingExcel;
                        ExcelConnection.Open();
                        SubSucces = true;
                    }
                    catch (Exception ex)
                    {
                        success = false;
                        SubSucces = false;
                        WorkStatus.Text = Resources.ConnectingExcelFailed;
                        ResultText.Items.Add(Resources.ConnectingExcelFailed);
                        ResultText.Items.Add(ex.Message);
                    };

                    if (SubSucces == true)
                    {
                        try
                        {
                            WorkStatus.Text = Resources.ExcelQuery;
                            OdbcDataReader ExcelReader = ExcelCommand.ExecuteReader();
                            if (ExcelReader.HasRows == true)
                            {
                                int ColumCount = ExcelReader.FieldCount;
                                string[] Columns = new string[ColumCount];
                                string[] DataTypes = new string[ColumCount];
                                string[,] RowValues = new string[65535,ColumCount];
                                WorkStatus.Text = Resources.ExcelReadCol;
                                for (int i = 0; i < ColumCount; i++) 
                                {
                                   Columns[i] = myRemove(ExcelReader.GetName(i).ToString());
                                   DataTypes[i] = ExcelReader.GetDataTypeName(i).ToString();
                                   if (i != 0) 
                                   {
                                       InsertQueryString += ", [" + Columns[i] + "]";
                                       ColumQueryString += ", [" + Columns[i] + "]" + " " + DataTypes[i]; 
                                   } else 
                                   {
                                       InsertQueryString += "[" + Columns[i] + "]";
                                       ColumQueryString += "[" + Columns[i] + "]" + " " + DataTypes[i]; 
                                   }; 
                                };
                                WorkStatus.Text = Resources.ExcelRead;
                                MaxRowCount = 0;
                                while (ExcelReader.Read())
                                {
                                    InsertValuesQueryString[MaxRowCount] = "";
                                    for (int i = 0; i < ColumCount; i++)
                                    {
                                        if (ExcelReader.IsDBNull(i) == false) 
                                        {
                                            RowValues[MaxRowCount, i] = myReplace(ExcelReader[i].ToString());
                                           if (i != 0)
                                           {
                                               InsertValuesQueryString[MaxRowCount] += ",'" + RowValues[MaxRowCount, i] + "'";
                                           } else 
                                           {
                                               InsertValuesQueryString[MaxRowCount] += "'" + RowValues[MaxRowCount, i] + "'";
                                           }
                                       }
                                       else
                                       { 
                                          RowValues[MaxRowCount, i] = "NULL";
                                          if (i != 0)
                                          {
                                              InsertValuesQueryString[MaxRowCount] += ",NULL";
                                          }
                                          else
                                          {
                                              InsertValuesQueryString[MaxRowCount] += "NULL";
                                          }                                        
                                       };
                                    };
                                    MaxRowCount++;
                                };
                                WorkStatus.Text = Resources.ExcelFinished;
                                ResultText.Items.Add(Resources.ExcelFinished);
                                success = true;
                            }
                            else
                            {
                                success = false;
                                WorkStatus.Text = Resources.SheetEmpty;
                                ResultText.Items.Add(Resources.SheetEmpty);
                            };
                            ExcelReader.Close();
                        }
                        catch (Exception exc)
                        {
                            success = false;
                            WorkStatus.Text = Resources.ExcelQueryFailed;
                            ResultText.Items.Add(Resources.ExcelQueryFailed);
                            //if(exc.) {ResultText.Items.Add(Resources.ExcelQueryTip);};
                            ResultText.Items.Add(exc.Message);
                        };
                        ExcelConnection.Close();
                    };
                };

                if (success == true && SubSucces == true)
                {
                    string AccessConnectionString = "Driver={Microsoft Access Driver (*.mdb)};DBQ=" + FileMDBText.Text;
                    string AccessQueryString = "";
                    if (PrimaryKey.Checked == true) { AccessQueryString = "Create Table [" + myRemove(Table.Text) + "] (ID AUTOINCREMENT NOT NULL PRIMARY KEY," + ColumQueryString + ")"; }
                    else { AccessQueryString = "Create Table [" + myRemove(Table.Text) + "] (" + ColumQueryString + ")"; }
                    using (OdbcConnection AccessConnection = new OdbcConnection(AccessConnectionString))
                    {
                        OdbcCommand AccessCommand = AccessConnection.CreateCommand();
                        AccessCommand.CommandText = AccessQueryString;
                        bool TableSuccess;
                        TableSuccess = false;
                        SubSucces = false;
                        try
                        {
                            WorkStatus.Text = Resources.ConnectingAccess;
                            AccessConnection.Open();
                            SubSucces = true;
                        }
                        catch (Exception ex)
                        {
                            SubSucces = false;
                            WorkStatus.Text = Resources.ConnectingAccessFailed;
                            ResultText.Items.Add(Resources.ConnectingAccessFailed);
                            ResultText.Items.Add(ex.Message);
                        };

                        if(SubSucces == true)
                        {
                            try
                            {
                                WorkStatus.Text = Resources.AccessTable;
                                OdbcDataReader AccessReader = AccessCommand.ExecuteReader();
                                AccessReader.Close();
                                TableSuccess = true;
                            }
                            catch (Exception exc)
                            {
                                WorkStatus.Text = Resources.AccessTableFailed;
                                ResultText.Items.Add(Resources.AccessTableFailed);
                                ResultText.Items.Add(exc.Message);
                            };

                            if (TableSuccess == true)
                            {
                                string AccessInsertQueryString = "";
                                try
                                {
                                    WorkStatus.Text = Resources.AccessInsert;
                                    for (int i = 0; i < MaxRowCount; i++ ) 
                                    {
                                        AccessInsertQueryString = "INSERT INTO [" + myRemove(Table.Text) + "] (" + InsertQueryString + ") VALUES (" + InsertValuesQueryString[i] + ");";
                                        AccessCommand.CommandText = AccessInsertQueryString;
                                        OdbcDataReader AccessReader = AccessCommand.ExecuteReader();
                                        AccessReader.Close();
                                    };
                                    WorkStatus.Text = Resources.AccessSuccess;
                                    ResultText.Items.Add(Resources.AccessSuccess);
                                }
                                catch (Exception exc)
                                {
                                    WorkStatus.Text = Resources.AccessInsertFailed;
                                    ResultText.Items.Add(Resources.AccessInsertFailed);
                                    ResultText.Items.Add(exc.Message);
                                    try
                                    {
                                        WorkStatus.Text = Resources.AccessTableDelete;
                                        AccessCommand.CommandText = "DROP TABLE [" + myRemove(Table.Text) + "]";
                                        OdbcDataReader AccessReader = AccessCommand.ExecuteReader();
                                        AccessReader.Close();
                                        WorkStatus.Text = Resources.AccessTableDel;
                                    }
                                    catch (Exception ex)
                                    {
                                        WorkStatus.Text = Resources.AccessTableDeleteFailed;
                                        ResultText.Items.Add(Resources.AccessTableDeleteFailed);
                                        ResultText.Items.Add(ex.Message);
                                    };
                                };
                            };
                            AccessConnection.Close();
                        };
                    };
                };
            }
            else
            {
                WorkStatus.Text = Resources.FieldsNotValid;
                ResultText.Items.Add(Resources.FieldsEnter);
            };
        }

        private void WorkSheetLabel_Click(object sender, EventArgs e)
        {
            WorkSheet.Focus();
        }

        private void ExcelFileLabel_Click(object sender, EventArgs e)
        {
            FileXLSText.Focus();
        }

        private void ExcelField_Click(object sender, EventArgs e)
        {
            LocStart.Focus();
        }

        private void TableLabel_Click(object sender, EventArgs e)
        {
            Table.Focus();
        }

        private void AccessFileLabel_Click(object sender, EventArgs e)
        {
            FileMDBText.Focus();
        }

        private void LocStart_MouseHover(object sender, EventArgs e)
        {
            GroupTextTip.Location = new System.Drawing.Point(215, 80);
            GroupTextTip.Size = new System.Drawing.Size(277, 240);
            GroupTextTip.Visible = true;
            TextTip.Text = "Microsoft Excel ðunas numurs.\nVçrtîbas lauka sâkums.\nPiemçram: B2\nVar bût no A1 - IV65536";
            TipPicture.Location = new System.Drawing.Point(10,105);
            TipPicture.Size = new System.Drawing.Size(257, 127);
            TipPicture.Image = Resources.ExcelTip;
        }

        private void LocStart_MouseLeave(object sender, EventArgs e)
        {
            GroupTextTip.Visible = false;
        }

        private void LocEnd_MouseHover(object sender, EventArgs e)
        {
            GroupTextTip.Location = new System.Drawing.Point(320, 80);
            GroupTextTip.Size = new System.Drawing.Size(272, 240);
            GroupTextTip.Visible = true;
            TextTip.Text = "Microsoft Excel ðunas numurs.\nVçrtîbas lauka beigas.\nPiemçram: D12\nVar bût no A1 - IV65536";
            TipPicture.Location = new System.Drawing.Point(10, 105);
            TipPicture.Size = new System.Drawing.Size(253, 126);
            TipPicture.Image = Resources.ExcelTip2;
        }

        private void LocEnd_MouseLeave(object sender, EventArgs e)
        {
            GroupTextTip.Visible = false;
        }

        private void WorkSheet_MouseHover(object sender, EventArgs e)
        {
            GroupTextTip.Location = new System.Drawing.Point(305, 45);
            GroupTextTip.Size = new System.Drawing.Size(290, 90);
            GroupTextTip.Visible = true;
            TextTip.Text = "Microsoft Excel DarbaGrâmatas nosaukums.\nPiemçram: Lapa2";
            TipPicture.Location = new System.Drawing.Point(10, 60);
            TipPicture.Size = new System.Drawing.Size(118, 22);
            TipPicture.Image = Resources.ExcelTip3;
        }

        private void WorkSheet_MouseLeave(object sender, EventArgs e)
        {
            GroupTextTip.Visible = false;
        }

        private void Table_MouseHover(object sender, EventArgs e)
        {
            GroupTextTip.Location = new System.Drawing.Point(285, 120);
            GroupTextTip.Size = new System.Drawing.Size(250, 160);
            GroupTextTip.Visible = true;
            TextTip.Text = "Microsoft Access Tabulas nosaukums.\nDatubâzç ðâda tabula nedrîkst eksistçt.\nPiemçram: Tabula1";
            TipPicture.Location = new System.Drawing.Point(10, 80);
            TipPicture.Size = new System.Drawing.Size(155, 72);
            TipPicture.Image = Resources.AccessTip;
        }

        private void Table_MouseLeave(object sender, EventArgs e)
        {
            GroupTextTip.Visible = false;
        }

    };
};