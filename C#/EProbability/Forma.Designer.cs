namespace EProbabilityNamespace
{
    partial class EProbability
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(EProbability));
            this.StatusBar = new System.Windows.Forms.StatusStrip();
            this.EMenu = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.openToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.ListView = new System.Windows.Forms.ListView();
            this.Number = new System.Windows.Forms.ColumnHeader();
            this.Count = new System.Windows.Forms.ColumnHeader();
            this.FileNameTextBox = new System.Windows.Forms.TextBox();
            this.BrowseButton = new System.Windows.Forms.Button();
            this.Author = new System.Windows.Forms.Label();
            this.LoadButton = new System.Windows.Forms.Button();
            this.EMenu.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // StatusBar
            // 
            resources.ApplyResources(this.StatusBar, "StatusBar");
            this.StatusBar.Name = "StatusBar";
            // 
            // EMenu
            // 
            this.EMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.helpToolStripMenuItem});
            resources.ApplyResources(this.EMenu, "EMenu");
            this.EMenu.Name = "EMenu";
            this.EMenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.openToolStripMenuItem,
            this.toolStripSeparator2,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            resources.ApplyResources(this.fileToolStripMenuItem, "fileToolStripMenuItem");
            // 
            // openToolStripMenuItem
            // 
            resources.ApplyResources(this.openToolStripMenuItem, "openToolStripMenuItem");
            this.openToolStripMenuItem.Name = "openToolStripMenuItem";
            this.openToolStripMenuItem.Click += new System.EventHandler(this.openToolStripMenuItem_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            resources.ApplyResources(this.toolStripSeparator2, "toolStripSeparator2");
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            resources.ApplyResources(this.exitToolStripMenuItem, "exitToolStripMenuItem");
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aboutToolStripMenuItem});
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            resources.ApplyResources(this.helpToolStripMenuItem, "helpToolStripMenuItem");
            // 
            // aboutToolStripMenuItem
            // 
            resources.ApplyResources(this.aboutToolStripMenuItem, "aboutToolStripMenuItem");
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // tableLayoutPanel1
            // 
            resources.ApplyResources(this.tableLayoutPanel1, "tableLayoutPanel1");
            this.tableLayoutPanel1.Controls.Add(this.ListView, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.FileNameTextBox, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.BrowseButton, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.Author, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.LoadButton, 0, 3);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            // 
            // ListView
            // 
            resources.ApplyResources(this.ListView, "ListView");
            this.ListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.Number,
            this.Count});
            this.tableLayoutPanel1.SetColumnSpan(this.ListView, 2);
            this.ListView.FullRowSelect = true;
            this.ListView.GridLines = true;
            this.ListView.MultiSelect = false;
            this.ListView.Name = "ListView";
            this.ListView.ShowGroups = false;
            this.ListView.UseCompatibleStateImageBehavior = false;
            this.ListView.View = System.Windows.Forms.View.Details;
            this.ListView.ColumnClick += new System.Windows.Forms.ColumnClickEventHandler(this.EListViewSort);
            // 
            // Number
            // 
            resources.ApplyResources(this.Number, "Number");
            // 
            // Count
            // 
            resources.ApplyResources(this.Count, "Count");
            // 
            // FileNameTextBox
            // 
            this.FileNameTextBox.AllowDrop = true;
            resources.ApplyResources(this.FileNameTextBox, "FileNameTextBox");
            this.FileNameTextBox.Name = "FileNameTextBox";
            // 
            // BrowseButton
            // 
            resources.ApplyResources(this.BrowseButton, "BrowseButton");
            this.BrowseButton.Name = "BrowseButton";
            this.BrowseButton.UseVisualStyleBackColor = true;
            this.BrowseButton.Click += new System.EventHandler(this.BrowseButton_Click);
            // 
            // Author
            // 
            resources.ApplyResources(this.Author, "Author");
            this.tableLayoutPanel1.SetColumnSpan(this.Author, 2);
            this.Author.Name = "Author";
            // 
            // LoadButton
            // 
            resources.ApplyResources(this.LoadButton, "LoadButton");
            this.tableLayoutPanel1.SetColumnSpan(this.LoadButton, 2);
            this.LoadButton.Name = "LoadButton";
            this.LoadButton.UseVisualStyleBackColor = true;
            this.LoadButton.Click += new System.EventHandler(this.Load_Click);
            // 
            // EProbability
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.StatusBar);
            this.Controls.Add(this.EMenu);
            this.HelpButton = true;
            this.MainMenuStrip = this.EMenu;
            this.Name = "EProbability";
            this.TransparencyKey = System.Drawing.Color.GreenYellow;
            this.Load += new System.EventHandler(this.EWindowForm_Load);
            this.EMenu.ResumeLayout(false);
            this.EMenu.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.StatusStrip StatusBar;
        private System.Windows.Forms.MenuStrip EMenu;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem openToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.ListView ListView;
        private System.Windows.Forms.ColumnHeader Number;
        private System.Windows.Forms.ColumnHeader Count;
        private System.Windows.Forms.Button BrowseButton;
        private System.Windows.Forms.TextBox FileNameTextBox;
        private System.Windows.Forms.Label Author;
        private System.Windows.Forms.Button LoadButton;
    }
}

