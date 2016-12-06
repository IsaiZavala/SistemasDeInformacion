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
<%--<%@ Register TagPrefix="UserControls" TagName="VisitasPacientes" Src="~/WEB/Controls/VisitasPaciente.ascx" %>--%>
<%@ Register TagPrefix="UserControls" TagName="MaterialConsultaReport" Src="~/WEB/Controls/MaterialConsultaReport.ascx" %>

<%@ Register TagPrefix="UserControls" TagName="Avance_estudio" Src="~/WEB/Controls/Avance/Avance_estudio.ascx" %>
<%@ Register Src="~/WEB/Controls/Avance/Avance_Medico.ascx" TagPrefix="UserControls" TagName="Avance_Medico" %>
<%@ Register Src="~/WEB/Controls/Avance/Avance_Paciente.ascx" TagPrefix="UserControls" TagName="Avance_Paciente" %>
<%@ Register Src="~/WEB/Controls/Avance/Avance_Tratamientos.ascx" TagPrefix="UserControls" TagName="Avance_Tratamientos" %>

<%@ Register Src="~/WEB/Controls/MinMax/MinMax_Estudio.ascx" TagPrefix="UserControls" TagName="MinMax_Estudio" %>
<%@ Register Src="~/WEB/Controls/MinMax/MinMax_Medicos.ascx" TagPrefix="UserControls" TagName="MinMax_Medicos" %>
<%@ Register Src="~/WEB/Controls/MinMax/MinMax_Paciente.ascx" TagPrefix="UserControls" TagName="MinMax_Paciente" %>

<%@ Register Src="~/WEB/Controls/Avance/Avance_Item_Cantidad.ascx" TagPrefix="UserControls" TagName="Avance_Item_Cantidad" %>
<%@ Register Src="~/WEB/Controls/Avance/Avance_Item_Ganancia.ascx" TagPrefix="UserControls" TagName="Avance_Item_Ganancia" %>
<%@ Register Src="~/WEB/Controls/Avance/Avance_Proveedor_Ganancia.ascx" TagPrefix="UserControls" TagName="Avance_Proveedor_Ganancia" %>
<%@ Register Src="~/WEB/Controls/MinMax/MinMax_Item_Cantidad.ascx" TagPrefix="UserControls" TagName="MinMax_Item_Cantidad" %>
<%@ Register Src="~/WEB/Controls/MinMax/MinMax_Proveedor_Ganancia.ascx" TagPrefix="UserControls" TagName="MinMax_Proveedor_Ganancia" %>
<%@ Register Src="~/WEB/Controls/MinMax/MinMax_Item_Ganancia.ascx" TagPrefix="UserControls" TagName="MinMax_Item_Ganancia" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="">
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <span class="input-group-addon">Reporte</span>
                <asp:DropDownList ID="ddlReporteASP" CausesValidation="false" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlReporteASP_SelectedIndexChanged" >
                    <asp:ListItem Value="SinSeleccion" Text="Sin seleccion"></asp:ListItem>
                    <asp:ListItem Value="rptEspecialidad_anio" Text="Avance por Especialidad"></asp:ListItem>
                    <asp:ListItem Value="rptConsultaReport" Text="Consulta report"></asp:ListItem>
                    <asp:ListItem Value="rptConsultasXEspecialidad" Text="Consultas por especialidad"></asp:ListItem>
                    <asp:ListItem Value="rptDoctorReport" Text="Doctor report"></asp:ListItem>
                    <asp:ListItem Value="rptEspecialidadReport" Text="Especialidad report"></asp:ListItem>
                    <asp:ListItem Value="rptEstudioReport" Text="Estudio report"></asp:ListItem>
                    <asp:ListItem Value="rptInventoryReport" Text="Inventory report"></asp:ListItem>
                    <asp:ListItem Value="rptMaterialConsulta" Text="Medicamentos por consulta"></asp:ListItem>
                    <asp:ListItem Value="rptMedicosXEspecialidad" Text="Médicos por área de especialidad"></asp:ListItem>
                    <asp:ListItem Value="rptPacienteReport" Text="Paciente report"></asp:ListItem>
                    <asp:ListItem Value="rptTratamientoReport" Text="Tratamiento report"></asp:ListItem>
                    <%--<asp:ListItem Value="rptVisitasPacientes" Text="Visitas por paciente"></asp:ListItem>--%>
                    <asp:ListItem Value="rptAvance_estudio" Text="Avance estudio"></asp:ListItem>
                    <asp:ListItem Value="rptAvance_Medico" Text="Avance medico"></asp:ListItem>
                    <asp:ListItem Value="rptAvance_Paciente" Text="Avance paciente"></asp:ListItem>
                    <asp:ListItem Value="rptAvance_Tratamientos" Text="Avance tratamientos"></asp:ListItem>

                    <asp:ListItem Value="rptMinMax_Estudio" Text="Min max estudio"></asp:ListItem>
                    <asp:ListItem Value="rptMinMax_Medicos" Text="Min max médicos"></asp:ListItem>
                    <asp:ListItem Value="rptMinMax_Paciente" Text="Min max paciente"></asp:ListItem>

                    <asp:ListItem Value="rptAvance_Item_Cantidad" Text="Avance item cantidad"></asp:ListItem>
                    <asp:ListItem Value="rptAvance_Item_Ganancia" Text="Avance item ganancia"></asp:ListItem>
                    <asp:ListItem Value="rptAvance_Proveedor_Ganancia" Text="Avance proveedor ganancia"></asp:ListItem>
                    <asp:ListItem Value="rptMinMax_Item_Cantidad" Text="Min max item cantidad"></asp:ListItem>
                    <asp:ListItem Value="rptMinMax_Item_Ganancia" Text="Min max item ganancia"></asp:ListItem>
                    <asp:ListItem Value="rptMinMax_Proveedor_Ganancia" Text="Min max proveedor ganancia"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-md-3" runat="server" visible="false">
            <div class="input-group">
                <span class="input-group-addon">Fecha inicial</span>
                <input type="text" runat="server" id="FechaInicial" class="form-control" autocomplete="off">
            </div>
        </div>
        <div class="col-md-3" runat="server" visible="false">
            <div class="input-group">
                <span class="input-group-addon">Fecha final</span>
                <input type="text" runat="server" id="FechaFinal" class="form-control" autocomplete="off">
            </div>
        </div>
    </div>
    <div class="row" runat="server" visible="false">
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

    <br />

    <div id="divInventoryReport" class="" runat="server">
        <UserControls:InventoryReport runat="server" ID="rptInventoryReport"/>
    </div>
    <div id="divPacienteReport" class="" runat="server">
        <UserControls:PacienteReport runat="server" ID="rptPacienteReport" />
    </div>
    <div id="divEspecialidadReport" class="" runat="server" >
        <UserControls:EspecialidadReport runat="server" ID="rptEspecialidadReport" />
    </div>
    <div id="divEstudioReport" class="" runat="server">
        <UserControls:EstudioReport runat="server" ID="rptEstudioReport" />
    </div>
    <div id="divDoctorReport" class="" runat="server">
        <UserControls:DoctorReport runat="server" ID="rptDoctorReport" />
    </div>
    <div id="divTratamientoReport" class="" runat="server">
        <UserControls:TratamientoReport runat="server" ID="rptTratamientoReport" />
    </div>
   <div id="divConsultaReport" class="" runat="server">
        <UserControls:ConsultaReport runat="server" ID="rptConsultaReport" />
    </div>
    <div id="divConsultasXEspecialidad" class="" runat="server">
        <UserControls:ConsultasXEspecialidad runat="server" ID="rptConsultasXEspecialidad" />
    </div>
    <div id="divEspecialidad_anio" class="" runat="server">
        <UserControls:Especialidad_anio runat="server" ID="rptEspecialidad_anio" />
    </div>
    <div id="divMedicosXEspecialidad" class="" runat="server">
        <UserControls:MedicosXEspecialidad runat="server" ID="rptMedicosXEspecialidad" />
    </div>
    <%--<div id="divVisitasPacientes" class="" runat="server">
        <UserControls:VisitasPacientes runat="server" ID="rptVisitasPacientes" />
    </div>--%>
    <div id="divMaterialConsulta" class="" runat="server">
        <UserControls:MaterialConsultaReport runat="server" ID="rptMaterialConsulta" />
    </div>
    <div>
        <UserControls:Avance_estudio runat="server" ID="rptAvance_estudio" />
    </div>
    <div>
        <UserControls:Avance_Medico runat="server" ID="rptAvance_Medico" />
    </div>
    <div>
        <UserControls:Avance_Paciente runat="server" ID="rptAvance_Paciente" />
    </div>
    <div>
        <UserControls:Avance_Tratamientos runat="server" ID="rptAvance_Tratamientos" />
    </div>
    <div>
        <UserControls:MinMax_Estudio runat="server" ID="rptMinMax_Estudio" />
    </div>
    <div>
        <UserControls:MinMax_Medicos runat="server" ID="rptMinMax_Medicos" />
    </div>
    <div>
        <UserControls:MinMax_Paciente runat="server" ID="rptMinMax_Paciente" />
    </div>
    <div>
        <UserControls:Avance_Item_Cantidad runat="server" id="rptAvance_Item_Cantidad" />
    </div>
    <div>
        <UserControls:Avance_Item_Ganancia runat="server" id="rptAvance_Item_Ganancia" />
    </div>
    <div>
        <UserControls:Avance_Proveedor_Ganancia runat="server" id="rptAvance_Proveedor_Ganancia" />
    </div>
    <div>
        <UserControls:MinMax_Item_Cantidad runat="server" id="rptMinMax_Item_Cantidad" />
    </div>
    <div>
        <UserControls:MinMax_Item_Ganancia runat="server" id="rptMinMax_Item_Ganancia" />
    </div>
    <div>
        <UserControls:MinMax_Proveedor_Ganancia runat="server" id="rptMinMax_Proveedor_Ganancia" />
    </div>
    <br /><br />
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-4">
            <asp:Button ID="btnGenerarReporte" runat="server" CssClass="btn btn-warning" Text="Generar reporte" OnClick="btnGenerarReporte_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-5">
            <asp:RequiredFieldValidator runat="server" ID="rqddlReporteASP" ControlToValidate="ddlReporteASP"
                     InitialValue="SinSeleccion" CssClass="label-danger"
                    Font-Italic="true" ErrorMessage="Debe seleccionar algun reporte"></asp:RequiredFieldValidator>
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
