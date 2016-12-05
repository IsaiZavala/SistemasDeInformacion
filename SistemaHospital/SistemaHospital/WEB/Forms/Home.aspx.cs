using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaHospital.WEB.Forms
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlReporteASP_SelectedIndexChanged(object sender, EventArgs e)
        {
            OcultaDivs();

            DropDownList ddl = sender as DropDownList;

            switch (ddl.SelectedValue)
            {
                case "divInventoryReport":
                    LoadInventoryReport();
                break;
                case "divPacienteReport":
                    LoadPacienteReport();
                break;
                case "divEspecialidadReport":
                    LoadEspecialidadReport();
                break;
                case "divEstudioReport":
                    LoadEstudioReport();
                break;
                case "divDoctorReport":
                    LoadDoctorReport();
                break;
                case "divTratamientoReport":
                    LoadTratamientoReport();
                break;
                case "divConsultaReport":
                    LoadConsultaReport();
                break;
                case "divConsultasXEspecialidad":
                    LoadConsultasXEspecialidad();
                break;
                case "divEspecialidad_anio":
                    LoadEspecialidad_anio();
                break;
                case "divMedicosXEspecialidad":
                    LoadMedicosXEspecialidad();
                break;
                case "divVisitasPacientes":
                    LoadVisitasPacientes();
                break;
                case "divMaterialConsulta":
                    LoadMaterialConsulta();
                break;
            }
        }

        private void OcultaDivs()
        {
            divInventoryReport.Visible = false;
            divPacienteReport.Visible = false;
            divEspecialidadReport.Visible = false;
            divEstudioReport.Visible = false;
            divDoctorReport.Visible = false;
            divTratamientoReport.Visible = false;
            divConsultaReport.Visible = false;
            divConsultasXEspecialidad.Visible = false;
            divEspecialidad_anio.Visible = false;
            divMedicosXEspecialidad.Visible = false;
            divVisitasPacientes.Visible = false;
            divMaterialConsulta.Visible = false;
        }


        private void LoadMaterialConsulta()
        {
            divMaterialConsulta.Visible = true;
        }

        private void LoadVisitasPacientes()
        {
            divVisitasPacientes.Visible = true;
        }

        private void LoadMedicosXEspecialidad()
        {
            divMedicosXEspecialidad.Visible = true;
        }

        private void LoadEspecialidad_anio()
        {
            divEspecialidad_anio.Visible = true;
        }

        private void LoadConsultasXEspecialidad()
        {
            divConsultasXEspecialidad.Visible = true;
        }

        private void LoadConsultaReport()
        {
            divConsultaReport.Visible = true;
        }

        private void LoadTratamientoReport()
        {
            divTratamientoReport.Visible = true;
        }

        private void LoadDoctorReport()
        {
            divDoctorReport.Visible = true;
        }

        private void LoadEstudioReport()
        {
            divEstudioReport.Visible = true;
        }

        private void LoadInventoryReport()
        {
            divInventoryReport.Visible = true;
        }

        private void LoadEspecialidadReport()
        {
            divEspecialidadReport.Visible = true;
        }

        private void LoadPacienteReport()
        {
            divPacienteReport.Visible = true;
        }

        protected void btnGenerarReporte_Click(object sender, EventArgs e)
        {

        }
    }
}