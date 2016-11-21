<%@ Page Title="" Language="C#" MasterPageFile="~/WEB/Master/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SistemaHospital.WEB.Forms.Home" %>
<%@ Register TagPrefix="UserControls" TagName="InventoryReport" Src="~/WEB/Controls/InventoryReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="PacienteReport" Src="~/WEB/Controls/PacienteReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="EspecialidadReport" Src="~/WEB/Controls/EspecialidadReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="EstudioReport" Src="~/WEB/Controls/EstudioReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="DoctorReport" Src="~/WEB/Controls/DoctorReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="TratamientoReport" Src="~/WEB/Controls/TratamientoReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="ConsultaReport" Src="~/WEB/Controls/ConsultaReport.ascx" %>
<%@ Register TagPrefix="UserControls" TagName="ConsultasXEspecialidad" Src="~/WEB/Controls/ConsultasXEspecialidad.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divInventoryReport" class="box-body" style="display:block">
        <UserControls:InventoryReport runat="server" ID="rptInventoryReport" />
    </div>
    <div id="divPacienteReport" class="box-body" style="display:block">
        <UserControls:PacienteReport runat="server" ID="rptPacienteReport" />
    </div>
    <div id="divEspecialidadReport" class="box-body" style="display:block">
        <UserControls:EspecialidadReport runat="server" ID="rptEspecialidadReport" />
    </div>
    <div id="divEstudioReport" class="box-body" style="display:block">
        <UserControls:EstudioReport runat="server" ID="rptEstudioReport" />
    </div>
    <div id="divDoctorReport" class="box-body" style="display:block">
        <UserControls:DoctorReport runat="server" ID="rptDoctorReport" />
    </div>
    <div id="divTratamientoReport" class="box-body" style="display:block">
        <UserControls:TratamientoReport runat="server" ID="rptTratamientoReport" />
    </div>
    <div id="divConsultaReport" class="box-body" style="display:block">
        <UserControls:ConsultaReport runat="server" ID="rptConsultaReport" />
    </div>
    <div id="divConsutlasXEspecialidad" class="box-body" style="display:block">
        <UserControls:ConsultasXEspecialidad runat="server" ID="rptConsultasXEspecialidad" />
    </div>
</asp:Content>
