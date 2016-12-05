<%@ Page Title="" Language="C#" MasterPageFile="~/WEB/Master/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SistemaHospital.WEB.Forms.Home" %>
<%@ Register TagPrefix="UserControls" TagName="InventoryReport" Src="~/WEB/Controls/InventoryReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="PacienteReport" Src="~/WEB/Controls/PacienteReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="EspecialidadReport" Src="~/WEB/Controls/EspecialidadReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="EstudioReport" Src="~/WEB/Controls/EstudioReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="DoctorReport" Src="~/WEB/Controls/DoctorReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="TratamientoReport" Src="~/WEB/Controls/TratamientoReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="ConsultaReport" Src="~/WEB/Controls/ConsultaReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="ConsultasXEspecialidad" Src="~/WEB/Controls/ConsultasXEspecialidad.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="Especialidad_anio" Src="~/WEB/Controls/AvanceXEspecialidad.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="MedicosXEspecialidad" Src="~/WEB/Controls/MedicosXEspecialidad.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="VisitasPacientes" Src="~/WEB/Controls/VisitasPaciente.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="MaterialConsultaReport" Src="~/WEB/Controls/MaterialConsultaReport.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="">
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <span class="input-group-addon">Reporte</span>
                <asp:DropDownList ID="ddlReporteASP" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlReporteASP_SelectedIndexChanged" >
                    <asp:ListItem Value="SinSeleccion" Text="Sin seleccion"></asp:ListItem>
                    <asp:ListItem Value="divEspecialidad_anio" Text="Avance por Especialidad"></asp:ListItem>
                    <asp:ListItem Value="divConsultaReport" Text="Consulta report"></asp:ListItem>
                    <asp:ListItem Value="divConsultasXEspecialidad" Text="Consultas por especialidad"></asp:ListItem>
                    <asp:ListItem Value="divDoctorReport" Text="Doctor report"></asp:ListItem>
                    <asp:ListItem Value="divEspecialidadReport" Text="Especialidad report"></asp:ListItem>
                    <asp:ListItem Value="divEstudioReport" Text="Estudio report"></asp:ListItem>
                    <asp:ListItem Value="divInventoryReport" Text="Inventory report"></asp:ListItem>
                    <asp:ListItem Value="divMaterialConsulta" Text="Material consulta report"></asp:ListItem>
                    <asp:ListItem Value="divMedicosXEspecialidad" Text="Medicos por especialidad"></asp:ListItem>
                    <asp:ListItem Value="divPacienteReport" Text="Paciente report"></asp:ListItem>
                    <asp:ListItem Value="divTratamientoReport" Text="Tratamiento report"></asp:ListItem>
                    <asp:ListItem Value="divVisitasPacientes" Text="Visitas paciente"></asp:ListItem>
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
</div>

    <div id="divInventoryReport" class="box-body" runat="server" visible="false">
        <UserControls:InventoryReport runat="server" ID="rptInventoryReport" />
    </div>
    <div id="divPacienteReport" class="box-body" runat="server" visible="false">
        <UserControls:PacienteReport runat="server" ID="rptPacienteReport" />
    </div>
    <div id="divEspecialidadReport" class="box-body" runat="server" visible="false" >
        <UserControls:EspecialidadReport runat="server" ID="rptEspecialidadReport" />
    </div>
    <div id="divEstudioReport" class="box-body" runat="server" visible="false">
        <UserControls:EstudioReport runat="server" ID="rptEstudioReport" />
    </div>
    <div id="divDoctorReport" class="box-body" runat="server" visible="false">
        <UserControls:DoctorReport runat="server" ID="rptDoctorReport" />
    </div>
    <div id="divTratamientoReport" class="box-body" runat="server" visible="false">
        <UserControls:TratamientoReport runat="server" ID="rptTratamientoReport" />
    </div>
   <div id="divConsultaReport" class="box-body" runat="server" visible="false">
        <UserControls:ConsultaReport runat="server" ID="rptConsultaReport" />
    </div>
    <div id="divConsultasXEspecialidad" class="box-body" runat="server" visible="false">
        <UserControls:ConsultasXEspecialidad runat="server" ID="rptConsultasXEspecialidad" />
    </div>
    <div id="divEspecialidad_anio" class="box-body" runat="server" visible="false">
        <UserControls:Especialidad_anio runat="server" ID="rptEspecialidad_anio" />
    </div>
    <div id="divMedicosXEspecialidad" class="box-body" runat="server" visible="false">
        <UserControls:MedicosXEspecialidad runat="server" ID="rptMedicosXEspecialidad" />
    </div>
    <div id="divVisitasPacientes" class="box-body" runat="server" visible="false" >
        <UserControls:VisitasPacientes runat="server" ID="rptVisitasPacientes" />
    </div>
    <div id="divMaterialConsulta" class="box-body" runat="server" visible="false" >
        <UserControls:MaterialConsultaReport runat="server" ID="rptMaterialConsulta" />
    </div>

    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-4">
            <asp:Button ID="btnGenerarReporte" runat="server" CssClass="btn btn-warning" Text="Generar reporte" OnClick="btnGenerarReporte_Click" />
        </div>
    </div>

<script type="text/javascript">
    $().ready(
        $(function () {
            $("#<%= FechaInicial.ClientID %>").datepicker($.datepicker.regional["es"]);
            $("#<%= FechaFinal.ClientID %>").datepicker($.datepicker.regional["es"]);
            $("#<%= chkOpcion.ClientID %>").checkboxpicker();
        }));
</script>


</asp:Content>
