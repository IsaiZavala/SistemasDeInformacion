<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MaterialConsultaReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MaterialConsultaReport" %>
<h3>Medicamentos por consulta</h3>
IdItem:
<asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
&nbsp;&nbsp;
<p>
    Fecha inicio:<asp:TextBox ID="txt_fechaMin" runat="server"></asp:TextBox>
&nbsp;Fecha final:
    <asp:TextBox ID="txt_fechaMax" runat="server"></asp:TextBox>
</p>
&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 7px" Text="Button" />

