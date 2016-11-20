using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Configuration;

namespace SistemaHospital.Tools
{
    public class AppSettings
    {
        /// <summary>
        /// Devuelve una cadena de conexion a la base de datos desde App.Config
        /// </summary>
        public static string ConnectionString
        {
            get
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                return strConnection;
            }
        }

        public static string valueAppSettings(string valueKey)
        {
            string strResult = ConfigurationManager.AppSettings[valueKey];
            return strResult;
        }

        public static string sqlMapConfig
        {
            get { return valueAppSettings("sqlMapConfig"); }
        }
    }
}
