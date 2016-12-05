<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MedicosXEspecialidad.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MedicosXEspecialidad" %>

<asp:Label ID="Label1" runat="server" Text="Cantidad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="n_TextBox" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Orden"></asp:Label>
<asp:RadioButtonList ID="orden_CheckList" runat="server">
    <asp:ListItem Value="-">Menor</asp:ListItem>
    <asp:ListItem Selected="True" Value="+">Mayor</asp:ListItem>
</asp:RadioButtonList>
<br />

