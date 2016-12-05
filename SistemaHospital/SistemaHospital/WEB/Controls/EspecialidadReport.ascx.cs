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
    public partial class EspecialidadReport : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override MySqlParameter[] GetParameters()
        {
            string NombreEspecialidad = txtNombreEspecialidad.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@NombreEspecialidad", MySqlDbType.VarChar));

            lstParameters[0].Value = !string.IsNullOrEmpty(NombreEspecialidad) ? "%" + NombreEspecialidad + "%" : null;

            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.EspecialidadReport";
        }

        public override string TableName()
        {
            return "TEspecialidad";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/EspecialidadReport.rpt";
        }

        public override string FileName()
        {
            return "EspecialidadReport_";
        }
    }
}