using MySql.Data.MySqlClient;
using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB
{
    public partial class VisitasPaciente : HistorialReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override string Inicio()
        {
            //return anio_ini_ddp.SelectedValue + "-" + mes_ini_ddp.SelectedValue + "-01";
            return "2000/01/01";
        }

        public override string Fin()
        {
            //int anio = Convert.ToInt32(anio_fin_ddp.SelectedValue);
            //int mes = Convert.ToInt32(mes_fin_ddp.SelectedValue);

            //return anio_fin_ddp.SelectedValue + "-" + mes_fin_ddp.SelectedValue + "-" + DateTime.DaysInMonth(anio, mes);
            return "2016/12/31";
        }

        public override string GetId()
        {
            return txt_id.Text.Trim();
        }

        public override string getTipo()
        {
            return "Y";
        }

        public override string ReportName()
        {
            return "Reporte de Avance de Especialidad";
        }

        public override string StoredProcedureName()
        {
            return "mydb.Avance_Paciente";
        }

        public override string FileName()
        {
            return "visitas_paciente_";
        }
    }
}