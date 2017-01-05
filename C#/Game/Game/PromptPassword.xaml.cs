using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Windows;

namespace Game
{
    /// <summary>
    /// Interaction logic for PromptPassword.xaml
    /// </summary>
    public partial class PromptPassword : UserControl
    {
        public PromptPassword()
        {
            InitializeComponent();
        }

        private void Enter_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (this.Password.Password == Storage.Settings.AdminPassword)
            {
                this.Content = new AdminMenu();
            }
            else
            {
                MessageBox.Show("Nepareiza parole!", "Kļūda!");
            }
        }
    }
}
