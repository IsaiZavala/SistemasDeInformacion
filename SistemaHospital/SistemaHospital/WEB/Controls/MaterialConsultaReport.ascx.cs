using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Controls
{
    public partial class MaterialConsultaReport : Tools.ReportControl
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
            lstParameters.Add(new MySqlParameter("@id", MySqlDbType.Int32));
            lstParameters.Add(new MySqlParameter("@fechaMin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fechaMax", MySqlDbType.Date));

            lstParameters[0].Value = !string.IsNullOrEmpty(id) ? Convert.ToInt32(id) : 1;
            lstParameters[1].Value = !string.IsNullOrEmpty(fechaMin) ? fechaMin : "2000/01/01";
            lstParameters[2].Value = !string.IsNullOrEmpty(fechaMax) ? fechaMax : "2016/12/31";

            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.MaterialXConsulta";
        }

        public override string TableName()
        {
            return "TMaterialConsulta";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/MaterialConsultaReport.rpt";
        }

        public override string FileName()
        {
            return "material_consulta_";
        }
    }
}