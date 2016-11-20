using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SistemaHospital.Tools;

namespace SistemaHospital.WEB.Controls
{
    public partial class ConsultaReport : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerateReport_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override string StoredProcedureName()
        {
            return "mydb.ConsultaReport";
        }

        public override string TableName()
        {
            return "TConsulta";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/ConsultaReport.rpt";
        }

        public override string FileName()
        {
            return "ConsultaReport_";
        }
    }
}