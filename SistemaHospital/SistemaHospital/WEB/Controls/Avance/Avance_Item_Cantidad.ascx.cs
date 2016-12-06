using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Controls.Avance
{
    public partial class Avance_Item_Cantidad : HistorialReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ListItem> l = DatosCombo("Select idItem, descripcion from Inventario;");

            foreach (ListItem i in l)
                TextBox_idEspecialidad.Items.Add(i);
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

        public override string GetId()
        {
            return TextBox_idEspecialidad.SelectedValue;
        }

        public override string getTipo()
        {
            return seguimientoList.SelectedValue;
        }

        public override string ReportName()
        {
            return "Reporte de venta del Item";
        }

        public override string StoredProcedureName()
        {
            return "mydb.Avance_Item_cantidad";
        }

        public override string FileName()
        {
            return "historia_item_";
        }
    }
}