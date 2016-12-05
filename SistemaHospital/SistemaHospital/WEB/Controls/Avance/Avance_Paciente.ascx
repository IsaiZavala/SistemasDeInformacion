<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Avance_Paciente.ascx.cs" Inherits="SistemaHospital.WEB.Controls.Avance.Avance_Paciente" %>

<div class="row">
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">IdPaciente</span>&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_idEspecialidad" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Desde</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="mes_ini_ddp" runat="server" CssClass="form-control">
                <asp:ListItem Value="01">Enero</asp:ListItem>
                <asp:ListItem Value="02">Febrero</asp:ListItem>
                <asp:ListItem Value="03">Marzo</asp:ListItem>
                <asp:ListItem Value="04">Abril</asp:ListItem>
                <asp:ListItem Value="05">Mayo</asp:ListItem>
                <asp:ListItem Value="06">Junio</asp:ListItem>
                <asp:ListItem Value="07">Julio</asp:ListItem>
                <asp:ListItem Value="08">Agosto</asp:ListItem>
                <asp:ListItem Value="09">Septiembre</asp:ListItem>
                <asp:ListItem Value="10">Octubre</asp:ListItem>
                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                <asp:ListItem Value="12">Diciembre</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="anio_ini_ddp" runat="server" CssClass="form-control">
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Hasta</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="mes_fin_ddp" CssClass="form-control" runat="server">
                <asp:ListItem Value="01">Enero</asp:ListItem>
                <asp:ListItem Value="02">Febrero</asp:ListItem>
                <asp:ListItem Value="03">Marzo</asp:ListItem>
                <asp:ListItem Value="04">Abril</asp:ListItem>
                <asp:ListItem Value="05">Mayo</asp:ListItem>
                <asp:ListItem Value="06">Junio</asp:ListItem>
                <asp:ListItem Value="07">Julio</asp:ListItem>
                <asp:ListItem Value="08">Agosto</asp:ListItem>
                <asp:ListItem Value="09">Septiembre</asp:ListItem>
                <asp:ListItem Value="10">Octubre</asp:ListItem>
                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                <asp:ListItem Value="12">Diciembre</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="anio_fin_ddp" CssClass="form-control" runat="server">
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="input-group">
            <asp:RadioButtonList ID="seguimientoList" runat="server">
                <asp:ListItem Selected="True" Value="Y">Años</asp:ListItem>
                <asp:ListItem Value="M">Meses</asp:ListItem>
                <asp:ListItem Value="W">Semanas</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
</div>
