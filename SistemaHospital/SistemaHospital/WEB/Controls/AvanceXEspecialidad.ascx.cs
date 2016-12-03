using MySql.Data.MySqlClient;
using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Controls
{
    public partial class AvanceXEspecialidad : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override MySqlParameter[] GetParameters()
        {

            string id = TextBox_idEspecialidad.Text.Trim();
            string anio = TextBox_anio.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@idEspecialidad", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@ano", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@tipoFecha", MySqlDbType.VarChar));
            

            lstParameters[0].Value = !string.IsNullOrEmpty(id) ? id : "1"; 
            lstParameters[1].Value = !string.IsNullOrEmpty(anio) ? anio : "2016";
            lstParameters[2].Value = !string.IsNullOrEmpty(anio) ? seguimientoList.SelectedValue : "Y";


            return lstParameters.ToArray();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override string StoredProcedureName()
        {
            return "mydb.ConsultasXEspecialidad_Avance";
        }

        public override string TableName()
        {
            return "TAvanceConsultas";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/AvanceXespecialidad.rpt";
        }

        public override string FileName()
        {
            return "especilaidad_anio_";
        }

        public override object[] GetParametersReport()
        {
            object[] objParams = new object[4];
            objParams[0] = new object[] { "CompanyName", "Sistema de hospital" };
            objParams[1] = new object[] { "NombreReporte", "Reporte de Avance de Especialidad" };
            objParams[2] = new object[] { "inicio", Inicio() };
            objParams[3] = new object[] { "fin", Fin() };
            return objParams;
        }

        public string Inicio()
        {
            string inicio="";

            return inicio;
        }

        public string Fin()
        {
            string fin="";

            return fin;
        }
    }
}