<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AvanceXEspecialidad.ascx.cs" Inherits="SistemaHospital.WEB.Controls.AvanceXEspecialidad" %>
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
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-warning" Text="Generate report" />
</p>

