using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Data.SqlClient;
using System.Data.EntityClient;
using System.Xml.Serialization;
using System.Xml;
using System.IO;

namespace Game
{
    class Storage
    {
        public static Settings Settings = null;
        public static DataContainer Data = null;
        public static EntityConnectionStringBuilder ConnectionString = null;

        static Storage()
        {
            if (Storage.Settings == null)
            {
                XmlSerializer Serializer = new XmlSerializer(typeof(Settings));
                Stream Reader = new FileStream("Settings.xml", FileMode.Open);
                Storage.Settings = (Settings)Serializer.Deserialize(Reader);
            }

            if (Storage.Data == null)
            {
                if (Storage.Settings.SqlType == SqlType.Remote)
                {
                    Storage.InitSqlClientRemote(Storage.Settings.SqlServer, Storage.Settings.SqlCatalog, !Storage.Settings.SqlAuth, Storage.Settings.SqlUser, Storage.Settings.SqlPassword);
                }
                else if (Storage.Settings.SqlType == SqlType.Local)
                {
                    Storage.InitSqlClientLocal(Storage.Settings.SqlCatalog, !Storage.Settings.SqlAuth, Storage.Settings.SqlUser, Storage.Settings.SqlPassword);
                }
                else
                {
                    Storage.InitSqlServerCe(Storage.Settings.SqlCatalog);
                }
                Storage.Data = new DataContainer(Storage.ConnectionString.ToString());
            }
        }

        public static void InitSqlClient(SqlConnectionStringBuilder ConnectionString)
        {
            Storage.ConnectionString = new EntityConnectionStringBuilder();
            Storage.ConnectionString.Provider = "System.Data.SqlClient";
            Storage.ConnectionString.ProviderConnectionString = ConnectionString.ConnectionString;
            Storage.ConnectionString.Metadata = @"res://*/Data.csdl|.\DataServer.ssdl|res://*/Data.msl";
        }

        public static void InitSqlClientLocal(string DBFilename, bool IntegratedSecurity, string User, string Password)
        {
            SqlConnectionStringBuilder ConnectionString = new SqlConnectionStringBuilder();
            ConnectionString.DataSource = @".\SQLEXPRESS";
            ConnectionString.AttachDBFilename = DBFilename;
            ConnectionString.UserInstance = true;
            ConnectionString.ConnectTimeout = 30;
            if (!(ConnectionString.IntegratedSecurity = IntegratedSecurity))
            {
                ConnectionString.UserID = User;
                ConnectionString.Password = Password;
            }

            Storage.InitSqlClient(ConnectionString);
        }

        public static void InitSqlClientRemote(string DataSource, string InitialCatalog, bool IntegratedSecurity, string User, string Password)
        {
            SqlConnectionStringBuilder ConnectionString = new SqlConnectionStringBuilder();
            ConnectionString.DataSource = DataSource;
            ConnectionString.UserInstance = false;
            ConnectionString.ConnectTimeout = 30;
            ConnectionString.InitialCatalog = InitialCatalog;

            if (!(ConnectionString.IntegratedSecurity = IntegratedSecurity))
            {
                ConnectionString.UserID = User;
                ConnectionString.Password = Password;
            }

            Storage.InitSqlClient(ConnectionString);
        }

        public static void InitSqlServerCe(string DataSource)
        {
            SqlConnectionStringBuilder ConnectionString = new SqlConnectionStringBuilder();
            ConnectionString.DataSource = DataSource;

            Storage.ConnectionString = new EntityConnectionStringBuilder();
            Storage.ConnectionString.Provider = "System.Data.SqlServerCe.3.5";
            Storage.ConnectionString.ProviderConnectionString = ConnectionString.ToString();
            Storage.ConnectionString.Metadata = @"res://*/Data.csdl|res://*/Data.ssdl|res://*/Data.msl";
        }

    }
}
