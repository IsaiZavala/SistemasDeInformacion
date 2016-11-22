using MySql.Data.MySqlClient;
using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB
{
    public partial class VisitasPaciente : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override MySqlParameter[] GetParameters()
        {

            string id = txt_id.Text.Trim();
            string fechaMin = txt_fechaMin.Text.Trim();
            string fechaMax = txt_fechaMax.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@id", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@fechaMin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fechaMax", MySqlDbType.Date));

            lstParameters[0].Value = !string.IsNullOrEmpty(id) ? id : "1";
            lstParameters[1].Value = !string.IsNullOrEmpty(fechaMin) ? fechaMin : "2000/01/01";
            lstParameters[2].Value = !string.IsNullOrEmpty(fechaMax) ? fechaMax : "2016/12/31";

            return lstParameters.ToArray();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override string StoredProcedureName()
        {
            return "mydb.VisitasPaciente";
        }

        public override string TableName()
        {
            return "TVisitasPacientes";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/VisitasPaciente.rpt";
        }

        public override string FileName()
        {
            return "visitas_paciente_";
        }
    }
}