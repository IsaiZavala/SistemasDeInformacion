using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using MySql.Data.MySqlClient;
using System.Data;
using SistemaHospital.Tools;

namespace SistemaHospital.WEB.Controls
{
    public partial class PacientesReporte : ReportControl
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
            string Nombre = txtNombre.Text.Trim();
            string Telefono = txtTelefono.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@Nombre", MySqlDbType.VarChar));
            lstParameters.Add(new MySqlParameter("@Telefono", MySqlDbType.VarChar));

            lstParameters[0].Value = !string.IsNullOrEmpty(Nombre) ? "%" + Nombre + "%" : null;
            lstParameters[1].Value = !string.IsNullOrEmpty(Telefono) ? "%" + Telefono + "%" : null;

            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.PacienteReport";
        }

        public override string TableName()
        {
            return "TPaciente";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/PacienteReport.rpt";
        }

        public override string FileName()
        {
            return "PacienteReport_";
        }
    }
}