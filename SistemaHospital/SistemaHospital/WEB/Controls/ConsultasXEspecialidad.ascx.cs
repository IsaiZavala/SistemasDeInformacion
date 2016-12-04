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
    public partial class ConsultasXEspecialidad : MinMaxReportContronl
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
            return "mydb.MinMax_Especialidad";
        }

        public override string FileName()
        {
            return "ConsXEspecialidad_";
        }

        public override string Inicio()
        {
            return anio_ini_ddp.SelectedValue + "-" + mes_ini_ddp.SelectedValue + "-01";
        }

        public override string Fin()
        {
            int anio = Convert.ToInt32(anio_fin_ddp.SelectedValue);
            int mes = Convert.ToInt32(mes_fin_ddp.SelectedValue);

            return anio_fin_ddp.SelectedValue + "-" + mes_fin_ddp.SelectedValue + "-" + DateTime.DaysInMonth(anio, mes);
        }

        public override string GetOrden()
        {
            return orden_radiobutton.SelectedValue;
        }

        public override string GetN()
        {
            return txtcant_Registros.Text.Trim();
        }

        public override string ReportName()
        {
            return "Reporte de Consultas por Especialidad";
        }
    }
}