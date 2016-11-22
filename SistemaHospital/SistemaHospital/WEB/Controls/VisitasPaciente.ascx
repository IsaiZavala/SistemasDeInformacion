<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VisitasPaciente.ascx.cs" Inherits="SistemaHospital.WEB.VisitasPaciente" %>
<p>
    Visitas por Paciente</p>
<p>
    Id del Paciente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
</p>
<p>
    Fecha inicial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_fechaMin" runat="server"></asp:TextBox>
</p>
<p>
    Fecha final&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_fechaMax" runat="server"></asp:TextBox>
</p>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

