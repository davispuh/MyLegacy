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
    /// Interaction logic for AdminMenu.xaml
    /// </summary>
    public partial class AdminMenu : UserControl
    {
        public AdminMenu()
        {
            InitializeComponent();
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            ((Window)((UserControl)this.Parent).Parent).Close();
        }

        private void MathButton_Click(object sender, RoutedEventArgs e)
        {
            ((UserControl)this.Parent).Content = new AdminMath();
        }

        private void WordButton_Click(object sender, RoutedEventArgs e)
        {
            ((UserControl)this.Parent).Content = new AdminSentences();
        }
    }
}
