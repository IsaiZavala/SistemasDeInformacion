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
    public partial class MedicosXEspecialidad : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override MySqlParameter[] GetParameters()
        {

            string top = "10";

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@top", MySqlDbType.Int64));

            lstParameters[0].Value = !string.IsNullOrEmpty(top) ? top : "10";


            return lstParameters.ToArray();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override string StoredProcedureName()
        {
            return "mydb.MedicosXEspecialidad";
        }

        public override string TableName()
        {
            return "TMedicosXEspecialidad";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/MedicosXEspecialidad.rpt";
        }

        public override string FileName()
        {
            return "medicosXespecialidad_";
        }
    }
}