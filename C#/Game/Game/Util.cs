using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;

namespace Game
{
    class Util
    {
        public static void ShowErrorAndQuit(Exception Exception)
        {
            string Message = AddInnerExceptionMessage(Exception.Message, Exception.InnerException);
            if (Exception.InnerException != null)
            {
                Message = AddInnerExceptionMessage(Message, Exception.InnerException);
            }
            MessageBox.Show(Message, "ERROR!");
            Application.Current.Shutdown(-1);
        }

        public static string AddInnerExceptionMessage(string Message, Exception InnerException)
        {
            if (InnerException != null && InnerException.Message.Length > 0)
            {
                Message = Message + "\n" + InnerException.Message;
            };
            return Message;
        }
    }
}
