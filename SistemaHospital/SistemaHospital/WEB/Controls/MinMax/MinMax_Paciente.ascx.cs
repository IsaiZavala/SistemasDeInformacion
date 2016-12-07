using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Controls.MinMax
{
    public partial class MinMax_Paciente : MinMaxReportContronl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.mes_fin_ddp.SelectedValue = "12";
            }
        }

        public override string StoredProcedureName()
        {
            return "mydb.MinMax_Paciente";
        }

        public override string FileName()
        {
            string s = GetOrden() != "+" ? "Min_" : "Max_"; ;
            return s + "Paciente";
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
            string s = GetOrden() != "+" ? "Peores" : "Mejores"; ;
            return "Reporte de" + s + "de Pacientes";
        }
    }
}