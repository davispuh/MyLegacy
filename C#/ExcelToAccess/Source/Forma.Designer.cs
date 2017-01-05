using System;
namespace ExcelToAccess
{
    partial class Window
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Window));
            this.BrowseXLSFile = new System.Windows.Forms.Button();
            this.FileXLSText = new System.Windows.Forms.TextBox();
            this.BrowseMDBFile = new System.Windows.Forms.Button();
            this.Ok = new System.Windows.Forms.Button();
            this.FileMDBText = new System.Windows.Forms.TextBox();
            this.WorkSheet = new System.Windows.Forms.TextBox();
            this.ResultText = new System.Windows.Forms.ListBox();
            this.Table = new System.Windows.Forms.TextBox();
            this.LocStart = new System.Windows.Forms.TextBox();
            this.LocEnd = new System.Windows.Forms.TextBox();
            this.Symbol1 = new System.Windows.Forms.Label();
            this.PrimaryKey = new System.Windows.Forms.CheckBox();
            this.ExcelFileLabel = new System.Windows.Forms.Label();
            this.AccessFileLabel = new System.Windows.Forms.Label();
            this.ExcelField = new System.Windows.Forms.Label();
            this.TableLabel = new System.Windows.Forms.Label();
            this.WorkSheetLabel = new System.Windows.Forms.Label();
            this.StatusBar = new System.Windows.Forms.StatusStrip();
            this.WorkStatus = new System.Windows.Forms.ToolStripStatusLabel();
            this.Author = new System.Windows.Forms.Label();
            this.GroupTextTip = new System.Windows.Forms.GroupBox();
            this.TipPicture = new System.Windows.Forms.PictureBox();
            this.TextTip = new System.Windows.Forms.Label();
            this.StatusBar.SuspendLayout();
            this.GroupTextTip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TipPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // BrowseXLSFile
            // 
            this.BrowseXLSFile.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.BrowseXLSFile.Location = new System.Drawing.Point(840, 32);
            this.BrowseXLSFile.Name = "BrowseXLSFile";
            this.BrowseXLSFile.Size = new System.Drawing.Size(130, 30);
            this.BrowseXLSFile.TabIndex = 4;
            this.BrowseXLSFile.Text = "Pârlûkot";
            this.BrowseXLSFile.UseVisualStyleBackColor = true;
            this.BrowseXLSFile.Click += new System.EventHandler(this.BrowseFile_Click);
            // 
            // FileXLSText
            // 
            this.FileXLSText.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.FileXLSText.Location = new System.Drawing.Point(504, 35);
            this.FileXLSText.Name = "FileXLSText";
            this.FileXLSText.Size = new System.Drawing.Size(330, 26);
            this.FileXLSText.TabIndex = 3;
            // 
            // BrowseMDBFile
            // 
            this.BrowseMDBFile.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.BrowseMDBFile.Location = new System.Drawing.Point(840, 105);
            this.BrowseMDBFile.Name = "BrowseMDBFile";
            this.BrowseMDBFile.Size = new System.Drawing.Size(130, 30);
            this.BrowseMDBFile.TabIndex = 13;
            this.BrowseMDBFile.Text = "Pârlûkot";
            this.BrowseMDBFile.UseVisualStyleBackColor = true;
            this.BrowseMDBFile.Click += new System.EventHandler(this.BrowseMDBFile_Click);
            // 
            // Ok
            // 
            this.Ok.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.Ok.Location = new System.Drawing.Point(178, 179);
            this.Ok.Name = "Ok";
            this.Ok.Size = new System.Drawing.Size(500, 35);
            this.Ok.TabIndex = 15;
            this.Ok.Text = global::ExcelToAccess.Properties.Resources.Ok;
            this.Ok.UseVisualStyleBackColor = true;
            this.Ok.Click += new System.EventHandler(this.Ok_Click);
            // 
            // FileMDBText
            // 
            this.FileMDBText.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.FileMDBText.Location = new System.Drawing.Point(504, 108);
            this.FileMDBText.Name = "FileMDBText";
            this.FileMDBText.Size = new System.Drawing.Size(330, 26);
            this.FileMDBText.TabIndex = 12;
            // 
            // WorkSheet
            // 
            this.WorkSheet.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.WorkSheet.Location = new System.Drawing.Point(135, 35);
            this.WorkSheet.Name = "WorkSheet";
            this.WorkSheet.Size = new System.Drawing.Size(180, 26);
            this.WorkSheet.TabIndex = 1;
            this.WorkSheet.MouseLeave += new System.EventHandler(this.WorkSheet_MouseLeave);
            this.WorkSheet.MouseHover += new System.EventHandler(this.WorkSheet_MouseHover);
            // 
            // ResultText
            // 
            this.ResultText.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.ResultText.FormattingEnabled = true;
            this.ResultText.HorizontalScrollbar = true;
            this.ResultText.ItemHeight = 19;
            this.ResultText.Location = new System.Drawing.Point(30, 220);
            this.ResultText.Name = "ResultText";
            this.ResultText.Size = new System.Drawing.Size(940, 213);
            this.ResultText.TabIndex = 16;
            // 
            // Table
            // 
            this.Table.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.Table.Location = new System.Drawing.Point(86, 107);
            this.Table.Name = "Table";
            this.Table.Size = new System.Drawing.Size(210, 26);
            this.Table.TabIndex = 10;
            this.Table.MouseLeave += new System.EventHandler(this.Table_MouseLeave);
            this.Table.MouseHover += new System.EventHandler(this.Table_MouseHover);
            // 
            // LocStart
            // 
            this.LocStart.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.LocStart.Location = new System.Drawing.Point(143, 68);
            this.LocStart.Name = "LocStart";
            this.LocStart.Size = new System.Drawing.Size(80, 26);
            this.LocStart.TabIndex = 6;
            this.LocStart.MouseLeave += new System.EventHandler(this.LocStart_MouseLeave);
            this.LocStart.MouseHover += new System.EventHandler(this.LocStart_MouseHover);
            // 
            // LocEnd
            // 
            this.LocEnd.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.LocEnd.Location = new System.Drawing.Point(249, 68);
            this.LocEnd.Name = "LocEnd";
            this.LocEnd.Size = new System.Drawing.Size(80, 26);
            this.LocEnd.TabIndex = 8;
            this.LocEnd.MouseLeave += new System.EventHandler(this.LocEnd_MouseLeave);
            this.LocEnd.MouseHover += new System.EventHandler(this.LocEnd_MouseHover);
            // 
            // Symbol1
            // 
            this.Symbol1.AutoSize = true;
            this.Symbol1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.Symbol1.Location = new System.Drawing.Point(229, 71);
            this.Symbol1.Name = "Symbol1";
            this.Symbol1.Size = new System.Drawing.Size(14, 19);
            this.Symbol1.TabIndex = 7;
            this.Symbol1.Text = ":";
            // 
            // PrimaryKey
            // 
            this.PrimaryKey.AutoSize = true;
            this.PrimaryKey.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.PrimaryKey.Location = new System.Drawing.Point(34, 139);
            this.PrimaryKey.Name = "PrimaryKey";
            this.PrimaryKey.Size = new System.Drawing.Size(266, 23);
            this.PrimaryKey.TabIndex = 14;
            this.PrimaryKey.Text = global::ExcelToAccess.Properties.Resources.PrimaryKey;
            this.PrimaryKey.UseVisualStyleBackColor = true;
            // 
            // ExcelFileLabel
            // 
            this.ExcelFileLabel.AutoSize = true;
            this.ExcelFileLabel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.ExcelFileLabel.Location = new System.Drawing.Point(321, 38);
            this.ExcelFileLabel.Name = "ExcelFileLabel";
            this.ExcelFileLabel.Size = new System.Drawing.Size(177, 19);
            this.ExcelFileLabel.TabIndex = 2;
            this.ExcelFileLabel.Text = "Excel datnes atraðanâs vieta";
            this.ExcelFileLabel.Click += new System.EventHandler(this.ExcelFileLabel_Click);
            // 
            // AccessFileLabel
            // 
            this.AccessFileLabel.AutoSize = true;
            this.AccessFileLabel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.AccessFileLabel.Location = new System.Drawing.Point(310, 111);
            this.AccessFileLabel.Name = "AccessFileLabel";
            this.AccessFileLabel.Size = new System.Drawing.Size(188, 19);
            this.AccessFileLabel.TabIndex = 11;
            this.AccessFileLabel.Text = "Access datnes atraðanâs vieta";
            this.AccessFileLabel.Click += new System.EventHandler(this.AccessFileLabel_Click);
            // 
            // ExcelField
            // 
            this.ExcelField.AutoSize = true;
            this.ExcelField.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.ExcelField.Location = new System.Drawing.Point(30, 71);
            this.ExcelField.Name = "ExcelField";
            this.ExcelField.Size = new System.Drawing.Size(107, 19);
            this.ExcelField.TabIndex = 5;
            this.ExcelField.Text = "Vçrtîbu laukums";
            this.ExcelField.Click += new System.EventHandler(this.ExcelField_Click);
            // 
            // TableLabel
            // 
            this.TableLabel.AutoSize = true;
            this.TableLabel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.TableLabel.Location = new System.Drawing.Point(30, 110);
            this.TableLabel.Name = "TableLabel";
            this.TableLabel.Size = new System.Drawing.Size(50, 19);
            this.TableLabel.TabIndex = 9;
            this.TableLabel.Text = "Tabula";
            this.TableLabel.Click += new System.EventHandler(this.TableLabel_Click);
            // 
            // WorkSheetLabel
            // 
            this.WorkSheetLabel.AutoSize = true;
            this.WorkSheetLabel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.WorkSheetLabel.Location = new System.Drawing.Point(30, 38);
            this.WorkSheetLabel.Name = "WorkSheetLabel";
            this.WorkSheetLabel.Size = new System.Drawing.Size(99, 19);
            this.WorkSheetLabel.TabIndex = 0;
            this.WorkSheetLabel.Text = "DarbaGrâmata";
            this.WorkSheetLabel.Click += new System.EventHandler(this.WorkSheetLabel_Click);
            // 
            // StatusBar
            // 
            this.StatusBar.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.WorkStatus});
            this.StatusBar.Location = new System.Drawing.Point(0, 446);
            this.StatusBar.Name = "StatusBar";
            this.StatusBar.Size = new System.Drawing.Size(994, 22);
            this.StatusBar.SizingGrip = false;
            this.StatusBar.TabIndex = 17;
            this.StatusBar.Text = "StatusBar";
            // 
            // WorkStatus
            // 
            this.WorkStatus.Name = "WorkStatus";
            this.WorkStatus.Size = new System.Drawing.Size(34, 17);
            this.WorkStatus.Text = global::ExcelToAccess.Properties.Resources.Waiting;
            // 
            // Author
            // 
            this.Author.AutoSize = true;
            this.Author.Font = new System.Drawing.Font("Times New Roman", 14.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.Author.Location = new System.Drawing.Point(718, 186);
            this.Author.Name = "Author";
            this.Author.Size = new System.Drawing.Size(131, 22);
            this.Author.TabIndex = 18;
            this.Author.Text = "Programmçja: ";
            // 
            // GroupTextTip
            // 
            this.GroupTextTip.Controls.Add(this.TipPicture);
            this.GroupTextTip.Controls.Add(this.TextTip);
            this.GroupTextTip.Location = new System.Drawing.Point(722, 142);
            this.GroupTextTip.Name = "GroupTextTip";
            this.GroupTextTip.Size = new System.Drawing.Size(153, 72);
            this.GroupTextTip.TabIndex = 19;
            this.GroupTextTip.TabStop = false;
            this.GroupTextTip.Text = "Piemçrs";
            this.GroupTextTip.Visible = false;
            // 
            // TipPicture
            // 
            this.TipPicture.Image = global::ExcelToAccess.Properties.Resources.ExcelTip;
            this.TipPicture.Location = new System.Drawing.Point(6, 44);
            this.TipPicture.Name = "TipPicture";
            this.TipPicture.Size = new System.Drawing.Size(141, 22);
            this.TipPicture.TabIndex = 1;
            this.TipPicture.TabStop = false;
            // 
            // TextTip
            // 
            this.TextTip.AutoSize = true;
            this.TextTip.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(186)));
            this.TextTip.Location = new System.Drawing.Point(6, 16);
            this.TextTip.Name = "TextTip";
            this.TextTip.Size = new System.Drawing.Size(29, 19);
            this.TextTip.TabIndex = 0;
            this.TextTip.Text = "Tip";
            // 
            // Window
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(994, 468);
            this.Controls.Add(this.GroupTextTip);
            this.Controls.Add(this.Author);
            this.Controls.Add(this.StatusBar);
            this.Controls.Add(this.WorkSheetLabel);
            this.Controls.Add(this.TableLabel);
            this.Controls.Add(this.ExcelField);
            this.Controls.Add(this.AccessFileLabel);
            this.Controls.Add(this.ExcelFileLabel);
            this.Controls.Add(this.PrimaryKey);
            this.Controls.Add(this.Symbol1);
            this.Controls.Add(this.LocEnd);
            this.Controls.Add(this.LocStart);
            this.Controls.Add(this.Table);
            this.Controls.Add(this.ResultText);
            this.Controls.Add(this.WorkSheet);
            this.Controls.Add(this.FileMDBText);
            this.Controls.Add(this.Ok);
            this.Controls.Add(this.BrowseMDBFile);
            this.Controls.Add(this.FileXLSText);
            this.Controls.Add(this.BrowseXLSFile);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(ExcelToAccess.Properties.Resources.icon));
            this.MaximizeBox = false;
            this.Name = "Window";
            this.Opacity = 0.97;
            this.Text = "Convert Excel To Access";
            this.StatusBar.ResumeLayout(false);
            this.StatusBar.PerformLayout();
            this.GroupTextTip.ResumeLayout(false);
            this.GroupTextTip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TipPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button BrowseXLSFile;
        private System.Windows.Forms.TextBox FileXLSText;
        private System.Windows.Forms.Button BrowseMDBFile;
        private System.Windows.Forms.Button Ok;
        private System.Windows.Forms.TextBox FileMDBText;
        private System.Windows.Forms.TextBox WorkSheet;
        private System.Windows.Forms.ListBox ResultText;
        private System.Windows.Forms.TextBox Table;
        private System.Windows.Forms.TextBox LocStart;
        private System.Windows.Forms.TextBox LocEnd;
        private System.Windows.Forms.Label Symbol1;
        private System.Windows.Forms.CheckBox PrimaryKey;
        private System.Windows.Forms.Label ExcelFileLabel;
        private System.Windows.Forms.Label AccessFileLabel;
        private System.Windows.Forms.Label ExcelField;
        private System.Windows.Forms.Label TableLabel;
        private System.Windows.Forms.Label WorkSheetLabel;
        private System.Windows.Forms.StatusStrip StatusBar;
        private System.Windows.Forms.ToolStripStatusLabel WorkStatus;
        private System.Windows.Forms.Label Author;
        private System.Windows.Forms.GroupBox GroupTextTip;
        private System.Windows.Forms.Label TextTip;
        private System.Windows.Forms.PictureBox TipPicture;
    }
}

