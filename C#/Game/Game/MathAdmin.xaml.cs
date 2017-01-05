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
using System.Data.Objects;

namespace Game
{
    /// <summary>
    /// Interaction logic for MathAdmin.xaml
    /// </summary>
    public partial class MathAdmin : UserControl
    {
        private CollectionViewSource ViewSource = null;

        public MathAdmin()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                var query = (ObjectQuery)(from q in Storage.Data.MathTable
                                          select q);
                ViewSource = ((System.Windows.Data.CollectionViewSource)(this.Resources["mathTableViewSource"]));
                ViewSource.Source = query.Execute(System.Data.Objects.MergeOption.AppendOnly);
            }
            catch (Exception Exception)
            {
                Util.ShowErrorAndQuit(Exception);
            }
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            Storage.Data.SaveChanges();

        }

        private void UserControl_Unloaded(object sender, RoutedEventArgs e)
        {
            Storage.Data.Refresh(RefreshMode.StoreWins, Storage.Data.MathTable);
        }
    }
}
