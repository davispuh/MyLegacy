using System;
using System.Collections;
using System.Windows.Forms;
using EProbabilityNamespace.Properties;

namespace EProbabilityNamespace
{
    public partial class EProbability : Form
    {
        private Form EAboutBox;
        private byte[] ENumberCount;
        private SortOrder[] EViewSort;

        public static byte Decode( byte inp )
        {
            byte retv;
            retv = (byte)((inp / 2) - 6);
            return retv;
        }

        public EProbability()
        {
            InitializeComponent();
            ENumberCount = new byte[100];
            EViewSort = new SortOrder[3];
            for (int ii = 0; ii < 100; ii++)
            {
                ENumberCount[ii] = 0;
            };
            const byte vD = 148, vD2 = 12, vA = 14, vA2 = 14, vV = 248, vV2 = 12, vI = 222, vI2 = 12, vS = 242, vS2 = 12;
            const byte vsa = 76, vsa2 = 12, vM = 166, vM2 = 12, vO = 234, vO2 = 12, vN = 232, vN2 = 12;
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

        public void EBrosweFile()
        {
            string FileType = "txt";
            string FileFilterName = "Visas datnes (*.*)|*.*" + "|" + 
                                    "Teksta datne (*.txt)|*.txt";

            OpenFileDialog OpenFileDialog = new OpenFileDialog();
            OpenFileDialog.AutoUpgradeEnabled = true;
            OpenFileDialog.ValidateNames = true;
            OpenFileDialog.CheckPathExists = true;
            OpenFileDialog.CheckFileExists = true;
            OpenFileDialog.DefaultExt = FileType;
            OpenFileDialog.Filter = FileFilterName;
            OpenFileDialog.FilterIndex = 2;
            OpenFileDialog.Multiselect = false;
            OpenFileDialog.RestoreDirectory = true;
            OpenFileDialog.SupportMultiDottedExtensions = true;
            OpenFileDialog.ReadOnlyChecked = true;
            OpenFileDialog.Title = Resources.ChooseFile;
            if (OpenFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.FileNameTextBox.Text = OpenFileDialog.FileName;
            };
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            EAboutBox = new AboutBox();
            EAboutBox.ShowDialog();
        }

        private void EWindowForm_Load(object sender, EventArgs e)
        {
            this.ListView.View = View.Details;
            EViewSort[0] = SortOrder.Descending;
            EViewSort[1] = SortOrder.Ascending;
            //this.ListView.ListViewItemSorter = CommandArgument;
            /*if (this.ListView.Sorting == SortOrder.Descending)
            {
                this.ListView.Sorting = SortOrder.Ascending;
            }
            else
            {
                this.ListView.Sorting = SortOrder.Descending;
            };
            */
            /*
            string FixedNumber;
            for (uint CurrentNumber = 1; CurrentNumber <= 75; CurrentNumber++)
            {
                FixedNumber = CurrentNumber.ToString( Application.CurrentCulture );
                if (FixedNumber.Length < 2)
                {
                    FixedNumber = "0" + FixedNumber;
                };
                int extra =  100 / (int)CurrentNumber - 2;
                this.ListView.Items.Add(FixedNumber).SubItems.Add(extra.ToString(Application.CurrentCulture));
            };
             */
        }

        private void EListViewSort(object sender, ColumnClickEventArgs e)
        {
            //e.Header.Index;
            //this.ListView.ListViewItemSorter;
            //this.ListView.Sorting = SortOrder.Descending;
            if (EViewSort[e.Column] == SortOrder.Ascending)
            {
                EViewSort[e.Column] = SortOrder.Descending;
            }
            else
            {
                EViewSort[e.Column] = SortOrder.Ascending;
            }
            this.ListView.ListViewItemSorter = new ListViewItemComparer(e.Column, EViewSort[e.Column] );

            //this.ListView.Sort();
            /*
            if (this.ListView.Sorting == SortOrder.Descending)
            {
                this.ListView.Sorting = SortOrder.Ascending;
            }
            else
            {
                this.ListView.Sorting = SortOrder.Descending;
            };
             * */

        }

        private void BrowseButton_Click(object sender, EventArgs e)
        {
            EBrosweFile();
        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            EBrosweFile();
        }

        private void Load_Click(object sender, EventArgs e)
        {
            if ( string.IsNullOrEmpty(this.FileNameTextBox.Text) == false && System.IO.File.Exists(this.FileNameTextBox.Text) == true)
            {
                string ReadedLine;
                char Character;
                string Buffer;
                byte NumberVariable;
                bool Success;
                bool Continue;
                this.ListView.Items.Clear();
                for (int ii = 0; ii < 100; ii++)
                {
                    ENumberCount[ii] = 0;
                };

                System.IO.StreamReader FileStream = new System.IO.StreamReader(this.FileNameTextBox.Text);

                for (int ii = 0; ii < 100; ii++)
                {
                    ENumberCount[ii] = 0;
                };

                do
                {
                    ReadedLine = FileStream.ReadLine();
                    Buffer = "";
                    Continue = false;
                    if (ReadedLine.Length >= 1)
                    {
                        Continue = true;
                        if (ReadedLine.Length >= 2 && ReadedLine.Substring(0, 2) == "//")
                        {
                            Continue = false;
                        }
                    };
                    
                    if ( Continue == true )
                    {
                        for (uint CurrentChar = 0; CurrentChar < ReadedLine.Length; CurrentChar++)
                        {
                            Character = ReadedLine.ToCharArray((int)CurrentChar, 1)[0];
                            if (Character >= 0x30 && Character <= 0x39)
                            {
                                Buffer += Character;
                            }
                            else
                            {
                                NumberVariable = 0;
                                Success = byte.TryParse(Buffer, System.Globalization.NumberStyles.Integer, Application.CurrentCulture, out NumberVariable);
                                if (Success == true && NumberVariable >= 1 && NumberVariable <= 75)
                                {
                                    ENumberCount[NumberVariable] += 1;
                                    Buffer = "";
                                };
                                if ( Character == 0x2f )
                                {
                                    if (CurrentChar + 1 < ReadedLine.Length && ReadedLine.ToCharArray((int)CurrentChar + 1, 1)[0] == 0x2f )
                                    {
                                        break;
                                    };
                                };
                            };
                        };
                        NumberVariable = 0;
                        Success = byte.TryParse(Buffer, System.Globalization.NumberStyles.Integer, Application.CurrentCulture, out NumberVariable);
                        if (Success == true && NumberVariable >= 1 && NumberVariable <= 75)
                        {
                            ENumberCount[NumberVariable] += 1;
                            Buffer = "";
                        };
                    };
                } while ( FileStream.EndOfStream == false );
                for (uint ii = 1; ii <= 75; ii++ )
                {
                    this.ListView.Items.Add(ii.ToString(Application.CurrentCulture)).SubItems.Add(ENumberCount[ii].ToString(Application.CurrentCulture));
                };
                //string.Forma
                //MessageBox.Show(sr.ReadToEnd());
                FileStream.Close();
            }
            else
            {
                MessageBox.Show(this.Owner, "Fails nav atrasts!", "Kļūda", MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1 );
            };
        }
    }

    // Implements the manual sorting of items by columns.
    class ListViewItemComparer : IComparer
    {
        private int col;
        private SortOrder Arrange;
        public ListViewItemComparer()
        {
            Arrange = SortOrder.Ascending;
            col = 0;
        }
        public ListViewItemComparer(int column, SortOrder CurArrange )
        {
            col = column;
            Arrange = CurArrange;
        }
        public int Compare(object x, object y)
        {
            int OneColum = 0;
            int TwoColum = 0;
            //return String.Compare( ((ListViewItem)x).SubItems[col].Text, ((ListViewItem)y).SubItems[col].Text, true, Application.CurrentCulture );
            ListViewItem ListViewX = (ListViewItem)x;
            ListViewItem ListViewY = (ListViewItem)y;
            if (ListViewX.SubItems.Count > col)
            {
                OneColum = int.Parse(ListViewX.SubItems[col].Text, Application.CurrentCulture);
            };

            if (ListViewY.SubItems.Count > col)
            {
                TwoColum = int.Parse(ListViewY.SubItems[col].Text, Application.CurrentCulture);
            };
            if (Arrange == SortOrder.Descending)
            {
                return TwoColum - OneColum;
            }
            else
            {
                return OneColum - TwoColum;
            };
        }
    }
}
