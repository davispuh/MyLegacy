using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Windows;
using System.Windows.Data;
using System.Data.Objects;

namespace Game
{


    /// <summary>
    /// Interaction logic for AdminMath.xaml
    /// </summary>
    public partial class AdminSentences : UserControl
    {
        public AdminSentences()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {

            // Do not load your data at design time.
            if (!System.ComponentModel.DesignerProperties.GetIsInDesignMode(this))
            {
                //Load your data here and assign the result to the CollectionViewSource.

                try
                {
                    // Do not load your data at design time.
                    if (!System.ComponentModel.DesignerProperties.GetIsInDesignMode(this))
                    {
                        //Load your data here and assign the result to the CollectionViewSource.
                        var query = (ObjectQuery)(from q in Storage.Data.SentenceTable
                                                  select q);
                        System.Windows.Data.CollectionViewSource CollectionViewSource = (System.Windows.Data.CollectionViewSource)this.Resources["sentenceTableViewSource"];
                        CollectionViewSource.Source = query.Execute(System.Data.Objects.MergeOption.AppendOnly);
                    }
                }
                catch (Exception Exception)
                {
                    Util.ShowErrorAndQuit(Exception);
                }
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            Storage.Data.SaveChanges();
            MessageBox.Show("Izmaiņas saglabātas", "Saglabāts");
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            ((UserControl)this.Parent).Content = new AdminMenu();
        }
    }
}
