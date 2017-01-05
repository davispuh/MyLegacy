using System;
using System.Windows;

namespace Game
{
    class Util
    {
        public static void ShowErrorAndQuit(Exception Exception)
        {
            string Message = Exception.Message;
            if (Exception.InnerException != null && Exception.InnerException.Message.Length > 0)
            {
                Message = Message + "\n" + Exception.InnerException.Message;
                if (Exception.InnerException.InnerException != null && Exception.InnerException.InnerException.Message.Length > 0)
                {
                    Message = Message + "\n" + Exception.InnerException.InnerException.Message;
                };
            };
            MessageBox.Show(Message, "ERROR!");
            Application.Current.Shutdown(-1);
        }
    }
}
