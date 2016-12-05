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
    public partial class AvanceXEspecialidad : HistorialReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override string FileName()
        {
            return "especilaidad_anio_";
        }

        public override string Inicio()
        {
            return anio_ini_ddp.SelectedValue+"-"+mes_ini_ddp.SelectedValue+"-01";
        }

        public override string Fin()
        {
            int anio = Convert.ToInt32(anio_fin_ddp.SelectedValue);
            int mes = Convert.ToInt32(mes_fin_ddp.SelectedValue);

            return anio_fin_ddp.SelectedValue + "-" + mes_fin_ddp.SelectedValue + "-" + DateTime.DaysInMonth(anio,mes);
        }

        public override string GetId()
        {
            return TextBox_idEspecialidad.Text;
        }

        public override string getTipo()
        {
            return seguimientoList.SelectedValue;
        }

        public override string ReportName()
        {
            return "Reporte de Avance de Especialidad";
        }

        public override string StoredProcedureName()
        {
            return "mydb.Avance_Especialidad";
        }
    }
}