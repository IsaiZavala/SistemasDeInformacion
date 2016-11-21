using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SistemaHospital.Tools;
using MySql.Data.MySqlClient;

namespace SistemaHospital.WEB.Controls
{
    public partial class ConsultasXEspecialidad : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerateReport_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override MySqlParameter[] GetParameters()
        {
            string cat_registros = txtcant_Registros.Text.Trim();
            string fechaMin = txtFechaMin.Text.Trim();
            string fechaMax = txtFechaMax.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@cant_registros", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@fechaMin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fechaMax", MySqlDbType.Date));

            lstParameters[0].Value = !string.IsNullOrEmpty(cat_registros) ? cat_registros : "10"; // cantidad de registros
            lstParameters[1].Value = !string.IsNullOrEmpty(cat_registros) ? cat_registros : "2000/01/01"; // cantidad de registros
            lstParameters[2].Value = !string.IsNullOrEmpty(cat_registros) ? cat_registros : "2016/12/31"; // cantidad de registros


            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.ConsultasXEspecialidad";
        }

        public override string TableName()
        {
            return "TConsultasXEspecialidad";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/TConsultasXEspecialidad.rpt";
        }

        public override string FileName()
        {
            return "ConsXEspecialidad_";
        }
    }
}