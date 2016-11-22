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
            

            lstParameters[0].Value = !string.IsNullOrEmpty(id) ? id : "1"; 
            lstParameters[1].Value = !string.IsNullOrEmpty(anio) ? anio : "2016";


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

    }
}