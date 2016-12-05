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
    public partial class EstudioReport : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override string StoredProcedureName()
        {
            return "mydb.EstudioReport";
        }

        public override string TableName()
        {
            return "TEstudio";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/EstudioReport.rpt";
        }

        public override string FileName()
        {
            return "EstudioReport_";
        }
    }
}