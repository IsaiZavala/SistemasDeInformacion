using MySql.Data.MySqlClient;
using SistemaHospital.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Controls.Avance
{
    public partial class Avance_Proveedor_Ganancia : HistorialReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            return TextBox_idEspecialidad.Text;
        }

        public override string getTipo()
        {
            return seguimientoList.SelectedValue;
        }

        public override string ReportName()
        {
            return "Reporte de ganancias obtenidas por item con el proveedor";
        }

        public override string StoredProcedureName()
        {
            return "mydb.Avance_Proveedor_ganancia";
        }

        public override string FileName()
        {
            return "historia_proveedor_ganancia_";
        }

        public override MySqlParameter[] GetParameters()
        {

            string id = GetId();
            string fecha_ini = Inicio();
            string fecha_fin = Fin();
            string tipo = getTipo();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@id", MySqlDbType.Int64));
            lstParameters.Add(new MySqlParameter("@fecha_ini", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@fecha_fin", MySqlDbType.Date));
            lstParameters.Add(new MySqlParameter("@tipoFecha", MySqlDbType.VarChar));
            lstParameters.Add(new MySqlParameter("@item", MySqlDbType.Int64));
            
            lstParameters[0].Value = id;
            lstParameters[1].Value = fecha_ini;
            lstParameters[2].Value = fecha_fin;
            lstParameters[3].Value = tipo;
            lstParameters[4].Value = idItem();

            return lstParameters.ToArray();
        }

        public string idItem()
        {
            return Textbox_Item.Text;
        }
    }
}