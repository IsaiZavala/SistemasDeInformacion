<%@ Page Title="Formulario de ejecutivo" Language="C#" MasterPageFile="~/WEB/Master/master.Master" AutoEventWireup="true" CodeBehind="Ejecutivo.aspx.cs" Inherits="SistemaHospital.WEB.Forms.Ejecutivo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="h2">
        Formulario de ejecutivo
    </p>

<div class="">
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <span class="input-group-addon">Reporte</span>
                <asp:DropDownList ID="ddlReporteASP" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlReporteASP_SelectedIndexChanged" >
                    <asp:ListItem Value="ReporteAvanceXEspecialidad" Text="Avance por especialidad"></asp:ListItem>
                    <asp:ListItem Value="ReporteConsultaReport" Text="Consulta report"></asp:ListItem>
                    <asp:ListItem Value="ReporteConsultasXEspecialidad" Text="Consultas por especialidad"></asp:ListItem>
                    <asp:ListItem Value="ReporteDoctorReport" Text="Doctor report"></asp:ListItem>
                    <asp:ListItem Value="ReporteEspecialidadReport" Text="Especialidad report"></asp:ListItem>
                    <asp:ListItem Value="ReporteEstudioReport" Text="Estudio report"></asp:ListItem>
                    <asp:ListItem Value="ReporteInventoryReport" Text="Inventory report"></asp:ListItem>
                    <asp:ListItem Value="ReporteMaterialConsultaReport" Text="Material consulta report"></asp:ListItem>
                    <asp:ListItem Value="ReporteMedicosXEspecialidad" Text="Medicos por especialidad"></asp:ListItem>
                    <asp:ListItem Value="ReportePacienteReport" Text="Paciente report"></asp:ListItem>
                    <asp:ListItem Value="ReporteTratamientoReport" Text="Tratamiento report"></asp:ListItem>
                    <asp:ListItem Value="ReporteVisitasPaciente" Text="Visitas paciente"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-md-3">
            <div class="input-group">
                <span class="input-group-addon">Fecha inicial</span>
                <input type="text" runat="server" id="FechaInicial" class="form-control" autocomplete="off">
            </div>
        </div>
        <div class="col-md-3">
            <div class="input-group">
                <span class="input-group-addon">Fecha final</span>
                <input type="text" runat="server" id="FechaFinal" class="form-control" autocomplete="off">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-3">
            <div class="input-group spinner">
                <span class="input-group-addon">Cantidad</span>
                <input id="txtCantidad" type="text" class="form-control input-number" maxlength="4" runat="server" value="1" min="1" max="9999">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-plus"></span></button>
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-minus"></span></button>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <input id="chkOpcion" name="chkOpcion" data-off-Label="Peores" data-on-Label="Mejores" runat="server"
                data-off-icon-cls="glyphicon-thumbs-down"
                data-on-icon-cls="glyphicon-thumbs-up"
                 type="checkbox" checked="checked" data-reverse="true">
        </div>
    </div>
    <br /><br /><br /><br />
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-4">
            <asp:Button ID="btnGenerarReporte" runat="server" CssClass="btn btn-warning" Text="Generar reporte" OnClick="btnGenerarReporte_Click" />
        </div>
    </div>
</div>


<script type="text/javascript">

    $().ready(
        $(function () {
            $("#<%= FechaInicial.ClientID %>").datepicker($.datepicker.regional["es"]);
            $("#<%= FechaFinal.ClientID %>").datepicker($.datepicker.regional["es"]);
            $(':checkbox').checkboxpicker();
        }));
</script>
  

</asp:Content>
