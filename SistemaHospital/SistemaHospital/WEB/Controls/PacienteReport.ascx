<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PacienteReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.PacientesReporte" %>

<table>
    <tr>
        <td>
            <span>Nombre: </span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtNombre" Text="" ></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Telefono: </span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtTelefono" Text="" ></asp:TextBox>
        </td>
    </tr>
</table>
