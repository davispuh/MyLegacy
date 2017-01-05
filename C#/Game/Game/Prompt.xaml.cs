using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Game
{
    /// <summary>
    /// Interaction logic for Prompt.xaml
    /// </summary>
    public partial class Prompt : UserControl
    {
        public Prompt()
        {
            InitializeComponent();
        }

        private void Submit_Click(object sender, RoutedEventArgs e)
        {
            if (this.Password.Password == Storage.Settings.AdminPassword)
            {
                this.Content = new AdminMenu();
            }
            else
            {
                this.Password.Clear();
                MessageBox.Show("Nepareiza parole","Kļūda");
            }
        }
    }
}
