using MySql.Data.MySqlClient;
using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Controls.MinMax
{
    public partial class MinMax_Proveedor_Ganancia : MinMaxReportContronl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.mes_fin_ddp.SelectedValue = "12";

                List<ListItem> l = DatosCombo("Select idItem, descripcion from Inventario;");

                foreach (ListItem i in l)
                    textBox_Item.Items.Add(i);
            }
        }

        public override string StoredProcedureName()
        {
            return "mydb.MinMax_Proveedor_ganancia";
        }

        public override MySqlParameter[] GetParameters()
        {
            string cat_registros = GetN();
            string fechaMin = Inicio();
            string fechaMax = Fin();
            string orden = GetOrden();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@n", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@fecha_ini", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fecha_fin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@tipo", MySqlDbType.VarChar));
            lstParameters.Add(new MySqlParameter("@item", MySqlDbType.Int64));

            lstParameters[0].Value = !string.IsNullOrEmpty(cat_registros) ? cat_registros : "10"; // cantidad de registros
            lstParameters[1].Value = fechaMin; // cantidad de registros
            lstParameters[2].Value = fechaMax; // cantidad de registros
            lstParameters[3].Value = orden; // cantidad de registros
            lstParameters[4].Value = textBox_Item.Text; // cantidad de registros

            return lstParameters.ToArray();
        }

        public override string FileName()
        {
            string s = GetOrden() != "+" ? "Min_" : "Max_"; ;
            return s + "Proveedor_ganancia_";
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
            return "Reporte de" + s + " Proveedores";
        }
    }
}