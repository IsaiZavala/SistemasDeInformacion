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
    public partial class TratamientoReport : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override MySqlParameter[] GetParameters()
        {
            string Enfermedad = txtEnfermedad.Text.Trim();
            string Descripcion = txtDescripcion.Text.Trim();
            string Costo = txtCosto.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@Enfermedad", MySqlDbType.VarChar));
            lstParameters.Add(new MySqlParameter("@Descripcion", MySqlDbType.VarChar));
            lstParameters.Add(new MySqlParameter("@Costo", MySqlDbType.Decimal));

            lstParameters[0].Value = !string.IsNullOrEmpty(Enfermedad) ? "%" + Enfermedad + "%" : null;
            lstParameters[1].Value = !string.IsNullOrEmpty(Descripcion) ? "%" + Descripcion + "%" : null;

            if (!string.IsNullOrEmpty(Costo))
            {
                lstParameters[2].Value = decimal.Parse(Costo);
            }
            else
            {
                lstParameters[2].Value = null;
            }


            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.TratamientoReport";
        }

        public override string TableName()
        {
            return "TTratamiento";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/TratamientoReport.rpt";
        }

        public override string FileName()
        {
            return "TratamientoReport" + DateTime.Now;
        }
    }
}