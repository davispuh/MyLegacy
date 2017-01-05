using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Objects;
using System.Windows;
using System.Data;

namespace Game
{
    public partial class DataContainer : ObjectContext
    {
        partial void OnContextCreated()
        {
            //this.ObjectMaterialized += new ObjectMaterializedEventHandler(DataContainer_ObjectMaterialized);
            //this.SavingChanges += new EventHandler(DataContainer_SavingChanges);
        }

        /*
        void DataContainer_ObjectMaterialized(object sender, ObjectMaterializedEventArgs e)
        {
            if (e.Entity.GetType() == typeof(Math))
            {

            }
        }

        void DataContainer_SavingChanges(object sender, EventArgs e)
        {           
            foreach (ObjectStateEntry entry in ((ObjectContext)sender).ObjectStateManager.GetObjectStateEntries(EntityState.Added))
            {
                if (!entry.IsRelationship && (entry.Entity.GetType() == typeof(Math)))
                {
                    Math MathEntity = (Math)entry.Entity;
                    MathEntity.Id = Guid.NewGuid();
                }
            }
            
        }
        */
    }
}
