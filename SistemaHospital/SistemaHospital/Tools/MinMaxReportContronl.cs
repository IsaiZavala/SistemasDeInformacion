using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaHospital.Tools
{
    public class MinMaxReportContronl : ReportControl
    {
        public override MySqlParameter[] GetParameters()
        {
            string cat_registros = GetN();
            string fechaMin = Inicio();
            string fechaMax = Fin();
            string orden = GetOrden();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@n", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@fecha_ini", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fecha_fin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@tipo", MySqlDbType.VarChar));

            lstParameters[0].Value = !string.IsNullOrEmpty(cat_registros) ? cat_registros : "10"; // cantidad de registros
            lstParameters[1].Value = fechaMin; // cantidad de registros
            lstParameters[2].Value = fechaMax; // cantidad de registros
            lstParameters[3].Value = orden; // cantidad de registros


            return lstParameters.ToArray();
        }

        public virtual string Inicio() { return null; }

        public virtual string Fin() { return null; }

        public virtual string GetOrden() { return null; }

        public virtual string GetN() { return null; }

        public virtual string ReportName() { return null; }

        public override string TableName()
        {
            return "TConsultasXEspecialidad";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/ConsultasXEspecialidad.rpt";
        }

        public override object[] GetParametersReport()
        {
            object[] objParams = new object[4];
            objParams[0] = new object[] { "CompanyName", "Sistema de hospital" };
            objParams[1] = new object[] { "ReportName", ReportName() };
            objParams[2] = new object[] { "fecha_ini", Inicio() };
            objParams[3] = new object[] { "fecha_fin", Fin() };
            return objParams;
        }
    }
}