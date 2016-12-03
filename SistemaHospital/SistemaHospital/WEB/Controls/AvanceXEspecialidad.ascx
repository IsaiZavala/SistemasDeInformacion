<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AvanceXEspecialidad.ascx.cs" Inherits="SistemaHospital.WEB.Controls.AvanceXEspecialidad" %>
<%@ Register TagPrefix="UserControls" TagName="MaterialConsultaReport" Src="~/WEB/Controls/MaterialConsultaReport.ascx" %>

<h3>Avance por Especialidad</h3>
<p>
    IdEspecialidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox_idEspecialidad" runat="server"></asp:TextBox>
</p>
<p>
    Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox_anio" runat="server"></asp:TextBox>
</p>
<p>
    <asp:RadioButtonList ID="seguimientoList" runat="server">
        <asp:ListItem Selected="True" Value="Y">Años</asp:ListItem>
        <asp:ListItem Value="M">Meses</asp:ListItem>
        <asp:ListItem Value="W">Semenas</asp:ListItem>
    </asp:RadioButtonList>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-warning" Text="Generate report" />
</p>


