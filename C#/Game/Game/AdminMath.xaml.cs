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
    /// Interaction logic for AdminMath.xaml
    /// </summary>
    public partial class AdminMath : UserControl
    {
        public AdminMath()
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
                    var query = (ObjectQuery)(from q in Storage.Data.MathTable
                                              select q);
                    CollectionViewSource CollectionViewSource = (CollectionViewSource)this.Resources["mathTableViewSource"];
                    CollectionViewSource.Source = query.Execute(System.Data.Objects.MergeOption.AppendOnly);
                }
                catch (Exception Exception)
                {
                    Util.ShowErrorAndQuit(Exception);
                }
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            //System.Data.Metadata.Edm.EntityContainer st = Storage.Data.MathTable.EntitySet.EntityContainer;
            /*
            ObjectStateManager objectStateManager = Storage.Data.ObjectStateManager;
            ObjectStateEntry stateEntry = null;
             * */
            /*
            var order = (from o in Storage.Data.MathTable
                         select o);
            */
            // Attempts to retrieve ObjectStateEntry for the given EntityKey.
            //bool isPresent = objectStateManager.TryGetObjectStateEntry(((System.Data.Objects.DataClasses.IEntityWithKey)order).EntityKey, out stateEntry);EntityKey key = new EntityKey("AdventureWorksEntities.SalesOrderHeaders", entityKeyValues);
            /*
            foreach(var ObjectStateEntry in Storage.Data.ObjectStateManager.GetObjectStateEntry(Math))
                //GetObjectStateEntries(System.Data.EntityState.Added))
            {
                var q = ObjectStateEntry.Entity;
            }
            */
            Storage.Data.SaveChanges();
            MessageBox.Show("Izmaiņas saglabātas","Saglabāts");
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            ((UserControl)this.Parent).Content = new AdminMenu();
        }
    }
}
