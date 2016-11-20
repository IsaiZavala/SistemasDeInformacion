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
    public partial class InventoryReport : ReportControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerateReport_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }

        public override MySqlParameter[] GetParameters()
        {
            string Item = txtItem.Text.Trim();
            string Descripcion = txtDescripcion.Text.Trim();
            string Precio_Venta = txtPrecioVenta.Text.Trim();
            string Costo = txtCosto.Text.Trim();
            string Cantidad = txtCantidad.Text.Trim();

            List<MySqlParameter> lstParameters = new List<MySqlParameter>();
            lstParameters.Add(new MySqlParameter("@IdItem", MySqlDbType.Int32));
            lstParameters.Add(new MySqlParameter("@Descripcion", MySqlDbType.VarChar));
            lstParameters.Add(new MySqlParameter("@Precio_Venta", MySqlDbType.Decimal));
            lstParameters.Add(new MySqlParameter("@Costo", MySqlDbType.Decimal));
            lstParameters.Add(new MySqlParameter("@Cantidad", MySqlDbType.Int32));

            lstParameters[0].Value = !string.IsNullOrEmpty(Item) ? Item : null; // IdItem
            lstParameters[1].Value = !string.IsNullOrEmpty(Descripcion) ? "%" + Descripcion + "%": "%"; // Descripcion

            // Precio_venta
            if (!string.IsNullOrEmpty(Precio_Venta))
            {
                lstParameters[2].Value = decimal.Parse(Precio_Venta); 
            }
            else
            {
                lstParameters[2].Value = null;
            }

            // Costo
            if (!string.IsNullOrEmpty(Costo))
            {
                lstParameters[3].Value = decimal.Parse(Costo);
            }
            else
            {
                lstParameters[3].Value = null;
            }

            // Cantidad
            if (!string.IsNullOrEmpty(Cantidad))
            {
                lstParameters[4].Value = int.Parse(Cantidad);
            }
            else
            {
                lstParameters[4].Value = null;
            }

            return lstParameters.ToArray();
        }

        public override string StoredProcedureName()
        {
            return "mydb.InventoryReport";
        }

        public override string TableName()
        {
            return "TInventory";
        }

        public override string ReportPath()
        {
            return "~/WEB/Reports/InventoryReport.rpt";
        }

        public override string FileName()
        {
            return "InventoryReport_";
        }
    }
}