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
    /// Interaction logic for MainMenu.xaml
    /// </summary>
    public partial class AdminMenu : UserControl
    {
        public AdminMenu()
        {
            InitializeComponent();
        }

        private void Math_Click(object sender, RoutedEventArgs e)
        {
            this.Content = new MathAdmin();
        }

        private void Words_Click(object sender, RoutedEventArgs e)
        {
        }
    }
}
