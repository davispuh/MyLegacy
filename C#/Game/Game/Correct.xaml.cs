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
using System.Windows.Shapes;
using System.Media;

namespace Game
{
    /// <summary>
    /// Interaction logic for Correct.xaml
    /// </summary>
    public partial class Correct : Window
    {
        private SoundPlayer Sound;
        public Correct()
        {
            InitializeComponent();
        }

        private void Continue_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            this.Sound = new SoundPlayer("correct.wav");
            this.Sound.Play();
        }
    }
}
