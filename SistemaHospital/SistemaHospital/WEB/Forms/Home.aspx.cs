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
        private static IList<ReportControl> lstReportes = new List<ReportControl>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaListaReportes();
                OcultaReportes();
            }
        }

        private void CargaListaReportes()
        {
            lstReportes.Add(rptConsultaReport);
            lstReportes.Add(rptConsultasXEspecialidad);
            lstReportes.Add(rptDoctorReport);
            lstReportes.Add(rptEspecialidadReport);
            lstReportes.Add(rptEspecialidad_anio);
            lstReportes.Add(rptEstudioReport);
            lstReportes.Add(rptInventoryReport);
            lstReportes.Add(rptMaterialConsulta);
            lstReportes.Add(rptMedicosXEspecialidad);
            lstReportes.Add(rptPacienteReport);
            lstReportes.Add(rptTratamientoReport);
            lstReportes.Add(rptVisitasPacientes);
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
                case "rptVisitasPacientes":
                    LoadVisitasPacientes();
                    break;
                case "rptMaterialConsulta":
                    LoadMaterialConsulta();
                    break;
            }
        }

        private void OcultaReportes()
        {
            rptInventoryReport.Visible = false;
            rptPacienteReport.Visible = false;
            rptEspecialidadReport.Visible = false;
            rptEstudioReport.Visible = false;
            rptDoctorReport.Visible = false;
            rptTratamientoReport.Visible = false;
            rptConsultaReport.Visible = false;
            rptConsultasXEspecialidad.Visible = false;
            rptEspecialidad_anio.Visible = false;
            rptMedicosXEspecialidad.Visible = false;
            rptVisitasPacientes.Visible = false;
            rptMaterialConsulta.Visible = false;
        }

        private void LoadMaterialConsulta()
        {
            rptMaterialConsulta.Visible = true;
            SetTituloFormulario("Reporte de medicamentos por consulta");
        }

        private void LoadVisitasPacientes()
        {
            rptVisitasPacientes.Visible = true;
            SetTituloFormulario("Reporte de visitas de pacientes");
        }

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