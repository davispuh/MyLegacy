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
    public partial class MainMenu : UserControl
    {

        public MainMenu()
        {
            InitializeComponent();
        }

        private void Math_Click(object sender, RoutedEventArgs e)
        {
            this.Content = new Math();
        }

        private void Words_Click(object sender, RoutedEventArgs e)
        {
        }

        private void GameLabel_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (Keyboard.Modifiers == (ModifierKeys.Control | ModifierKeys.Shift))
            {
                (new Admin()).ShowDialog();
            }
        }
    }
}
