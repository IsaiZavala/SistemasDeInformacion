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

            string top = n_TextBox.Text;
            string orden = orden_CheckList.SelectedValue;

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@n", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@tipo", MySqlDbType.VarChar));

            lstParameters[0].Value = !string.IsNullOrEmpty(top) ? top : "10";
            lstParameters[1].Value = orden;

            return lstParameters.ToArray();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override string StoredProcedureName()
        {
            return "mydb.Cant_MedicosXEspecialidad";
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

        public override object[] GetParametersReport()
        {
            object[] objParams = new object[2];
            objParams[0] = new object[] { "CompanyName", "Sistema de hospital" };
            objParams[1] = new object[] { "ReportName", "Cantidad de medicos por especialidad" };
            return objParams;
        }
    }
}