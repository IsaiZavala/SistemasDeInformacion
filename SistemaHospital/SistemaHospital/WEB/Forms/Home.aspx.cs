using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaHospital.Tools;

namespace SistemaHospital.WEB.Forms
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OcultaReportes();
            }
        }

        protected void ddlReporteASP_SelectedIndexChanged(object sender, EventArgs e)
        {
            OcultaReportes();
            SetTituloFormulario("");

            DropDownList ddl = sender as DropDownList;

            switch (ddl.SelectedValue)
            {
                case "rptInventoryReport":
                    LoadInventoryReport();
                    break;
                case "rptPacienteReport":
                    LoadPacienteReport();
                    break;
                case "rptEspecialidadReport":
                    LoadEspecialidadReport();
                    break;
                case "rptEstudioReport":
                    LoadEstudioReport();
                    break;
                case "rptDoctorReport":
                    LoadDoctorReport();
                    break;
                case "rptTratamientoReport":
                    LoadTratamientoReport();
                    break;
                case "rptConsultaReport":
                    LoadConsultaReport();
                    break;
                case "rptConsultasXEspecialidad":
                    LoadConsultasXEspecialidad();
                    break;
                case "rptEspecialidad_anio":
                    LoadEspecialidad_anio();
                    break;
                case "rptMedicosXEspecialidad":
                    LoadMedicosXEspecialidad();
                    break;
                case "rptMaterialConsulta":
                    LoadMaterialConsulta();
                break;
                case "rptAvance_estudio":
                    rptAvance_estudio.Visible = true;
                break;
                case "rptAvance_Medico":
                    rptAvance_Medico.Visible = true;
                break;
                case "rptAvance_Paciente":
                    rptAvance_Paciente.Visible = true;
                    break;
                case "rptAvance_Tratamientos":
                    rptAvance_Tratamientos.Visible = true;
                    break;
                case "rptMinMax_Estudio":
                    rptMinMax_Estudio.Visible = true;
                    break;
                case "rptMinMax_Medicos":
                    rptMinMax_Medicos.Visible = true;
                    break;
                case "rptMinMax_Paciente":
                    rptMinMax_Paciente.Visible = true;
                    break;
            }
        }

        private void OcultaReportes()
        {
            ContentPlaceHolder cph = Page.Master.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
            List<ReportControl> lstReports = FindAllReports(cph.Controls);

            foreach (ReportControl itemControl in lstReports)
            {
                itemControl.Visible = false;
            }
        }

        private void LoadMaterialConsulta()
        {
            rptMaterialConsulta.Visible = true;
            SetTituloFormulario("Reporte de medicamentos por consulta");
        }

        //private void LoadVisitasPacientes()
        //{
        //    rptVisitasPacientes.Visible = true;
        //    SetTituloFormulario("Reporte de visitas de pacientes");
        //}

        private void LoadMedicosXEspecialidad()
        {
            rptMedicosXEspecialidad.Visible = true;
            SetTituloFormulario("Reporte de médicos por especialidad");
        }

        private void LoadEspecialidad_anio()
        {
            rptEspecialidad_anio.Visible = true;
            SetTituloFormulario("Reporte de avance por especialidad");
        }

        private void LoadConsultasXEspecialidad()
        {
            rptConsultasXEspecialidad.Visible = true;
            SetTituloFormulario("Reporte de consultas por especialidad");
        }

        private void LoadConsultaReport()
        {
            rptConsultaReport.Visible = true;
            SetTituloFormulario("Reporte de consultas");
        }

        private void LoadTratamientoReport()
        {
            rptTratamientoReport.Visible = true;
            SetTituloFormulario("Reporte de tratamientos");
        }

        private void LoadDoctorReport()
        {
            rptDoctorReport.Visible = true;
            SetTituloFormulario("Reporte de doctores");
        }

        private void LoadEstudioReport()
        {
            rptEstudioReport.Visible = true;
            SetTituloFormulario("Reporte de estudios");
        }

        private void LoadInventoryReport()
        {
            rptInventoryReport.Visible = true;
            SetTituloFormulario("Reporte de inventario");
        }

        private void LoadEspecialidadReport()
        {
            rptEspecialidadReport.Visible = true;
            SetTituloFormulario("Reporte de especialidad");
        }

        private void LoadPacienteReport()
        {
            rptPacienteReport.Visible = true;
            SetTituloFormulario("Reporte de pacientes");
        }

        public void SetTituloFormulario(string title)
        {
            try
            {
                (this.Master as Master.master).TituloFormulario = title;
            }
            catch (Exception e)
            {
                // No es un error importante
            }
        }

        protected void btnGenerarReporte_Click(object sender, EventArgs e)
        {
            ReportControl report = GetControlReport();

            if (report != null)
            {
                report.GenerateReport();
            }
        }


        private ReportControl GetControlReport()
        {
            ContentPlaceHolder cph = Page.Master.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
            List<ReportControl> lstReports = FindAllReports(cph.Controls);

            foreach (ReportControl itemControl in lstReports)
            {
                if (itemControl.Visible == true)
                {
                    return itemControl;
                }
            }

            return null;
        }

        public List<ReportControl> FindAllReports(ControlCollection lstControls)
        {
            List<ReportControl> lstControlsResult = new List<ReportControl>();

            if (lstControls != null)
            {
                foreach (Control c in lstControls)
                {
                    if (c is Tools.ReportControl)
                    {
                        lstControlsResult.Add(c as ReportControl);
                    }
                    else if (c.HasControls())
                    {
                        lstControlsResult.AddRange(FindAllReports(c.Controls));
                    }
                }
            }

            return lstControlsResult;
        }


    }
}