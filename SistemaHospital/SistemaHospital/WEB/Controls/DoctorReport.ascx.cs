﻿using System;
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
    public partial class MedicoReport : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override MySqlParameter[] GetParameters()
        {
            string Nombre = txtNombre.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@Nombre", MySqlDbType.VarChar));
            // lstParameters.Add(new MySqlParameter("@FechaNacimiento", MySqlDbType.Date));

            lstParameters[0].Value = !string.IsNullOrEmpty(Nombre) ? "%" + Nombre + "%" : "%"; // Nombre
            // lstParameters[1].Value = !string.IsNullOrEmpty(hdDate.Value) ? hdDate.Value : null;


            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.DoctorReport";
        }

        public override string TableName()
        {
            return "TDoctor";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/DoctorReport.rpt";
        }

        public override string FileName()
        {
            return "DoctorReport_";
        }
    }
}