using System;
using System.Windows.Forms;

[assembly: CLSCompliant(true)]

namespace EProbabilityNamespace
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Form EForm;
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            EForm = new EProbability();
            Application.Run( EForm );
        }
    }
}
