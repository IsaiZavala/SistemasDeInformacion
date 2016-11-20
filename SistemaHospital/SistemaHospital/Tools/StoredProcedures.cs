using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

using MySql.Data;
using MySql.Data.MySqlClient;
// using System.Data.SqlClient; // SQL Server

namespace SistemaHospital.Tools
{
    public class StoredProcedures
    {
        public static DataTable SP_ConsultarUsuario(string strUser, string strPassword)
        {
            try
            {
                MySqlParameter [] arrParameters = new MySqlParameter [2];
                arrParameters[0] = new MySqlParameter("@User", MySqlDbType.VarChar);
                arrParameters[1] = new MySqlParameter("@Password", MySqlDbType.VarChar);

                arrParameters[0].Value = strUser;
                arrParameters[1].Value = strPassword;

                return RunStoredProcedure("dbo.SP_ConsultarUsuario", arrParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable SP_InsertLogSystem(int IdUser, DateTime IniDate)
        {
            try
            {
                MySqlParameter[] arrParameters = new MySqlParameter[2];
                arrParameters[0] = new MySqlParameter("@IdUser", MySqlDbType.Int32);
                arrParameters[1] = new MySqlParameter("@IniDate", MySqlDbType.DateTime);

                arrParameters[0].Value = IdUser;
                arrParameters[1].Value = IniDate;

                return RunStoredProcedure("dbo.SP_InsertLogSystem", arrParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable SP_UpdateLogSystem(int IdLogSystem, DateTime EndDate)
        {
            try
            {
                MySqlParameter[] arrParameters = new MySqlParameter[2];
                arrParameters[0] = new MySqlParameter("@IdLogSystem", MySqlDbType.Int32);
                arrParameters[1] = new MySqlParameter("@EndDate", MySqlDbType.DateTime);

                arrParameters[0].Value = IdLogSystem;
                arrParameters[1].Value = EndDate;

                return RunStoredProcedure("dbo.SP_UpdateLogSystem", arrParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable RunStoredProcedure(string strNameStoredProcedure, MySqlParameter [] arrParameters)
        {
            DataTable dt = new DataTable();
            MySqlConnection MyConnection = null;
            MySqlDataReader MyReader = null;

            try
            {
                // Create the SQL connection.
                MyConnection = new MySqlConnection(Tools.AppSettings.ConnectionString);
                MyConnection.Open();

                // Create the stored procedure command.
                MySqlCommand MyCommand = new MySqlCommand(strNameStoredProcedure, MyConnection);

                // Set the command type property.
                MyCommand.CommandType = CommandType.StoredProcedure;

                // Pass the string (array) into the stored procedure.
                if (arrParameters != null)
                {
                    MyCommand.Parameters.AddRange(arrParameters);
                }

                MySqlDataAdapter adapter = new MySqlDataAdapter(MyCommand);
                adapter.Fill(dt);
            }
            catch (Exception e)
            {
                // Tools.UnhandledException ex = new Tools.UnhandledException(e.Message, e);
                throw e;
            }
            finally
            {
                if (MyReader != null)
                {
                    MyReader.Close();
                    MyReader.Dispose();
                }

                if (MyConnection != null)
                {
                    MyConnection.Close();
                    MyConnection.Dispose();
                }
            }

            return dt;
        }

        public static DataSet SP_ReporteDesemepenio(string strNameProcedure, CommandType p_CommandType, MySqlParameter [] arrParams)
        {
            try
            {
                DataSet ds = new DataSet();

                string connectionString = Tools.AppSettings.ConnectionString;
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand command = new MySqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = strNameProcedure;
                        command.CommandTimeout = connection.ConnectionTimeout;
                        command.CommandType = p_CommandType;

                        command.Parameters.AddRange(arrParams);

                        using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                        {
                            adapter.Fill(ds);
                        }
                    }                    
                }
                
                return ds;
            }
            catch
            {
                throw;
            }
        }

        public static DataSet SP_ReporteGrafico(string strNameProcedure, CommandType p_CommandType, MySqlParameter[] arrParams)
        {
            try
            {
                DataSet ds = new DataSet();

                string connectionString = Tools.AppSettings.ConnectionString;
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand command = new MySqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = strNameProcedure;
                        command.CommandTimeout = connection.ConnectionTimeout;
                        command.CommandType = p_CommandType;

                        if (arrParams != null)
                        {
                            command.Parameters.AddRange(arrParams);
                        }

                        using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                        {
                            adapter.Fill(ds);
                        }
                    }
                }

                return ds;
            }
            catch
            {
                throw;
            }
        }

    }
}
