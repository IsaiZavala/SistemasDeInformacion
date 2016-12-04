using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaHospital.Tools
{
    public class HistorialReportControl : ReportControl
    {
        public virtual string Inicio(){ return null; }

        public virtual string Fin(){ return null; }

        public virtual string GetId(){ return null; }

        public virtual string getTipo() { return null; }

        public virtual string ReportName() { return null; }

        public override MySqlParameter[] GetParameters()
        {

            string id = GetId();
            string fecha_ini = Inicio();
            string fecha_fin = Fin();
            string tipo = getTipo();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@id", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@fecha_ini", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fecha_fin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@tipoFecha", MySqlDbType.VarChar));


            lstParameters[0].Value = id;
            lstParameters[1].Value = fecha_ini;
            lstParameters[2].Value = fecha_fin;
            lstParameters[3].Value = tipo;


            return lstParameters.ToArray();
        }

        public override object[] GetParametersReport()
        {
            object[] objParams = new object[4];
            objParams[0] = new object[] { "CompanyName", "Sistema de hospital" };
            objParams[1] = new object[] { "NombreReporte", ReportName() };
            objParams[2] = new object[] { "inicio", Inicio() };
            objParams[3] = new object[] { "fin", Fin() };
            return objParams;
        }

        public override string TableName()
        {
            return "TAvanceConsultas";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/AvanceXespecialidad.rpt";
        }
    }
}