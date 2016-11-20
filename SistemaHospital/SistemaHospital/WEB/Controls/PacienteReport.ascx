<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PacienteReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.PacientesReporte" %>


<h3>Paciente report</h3>

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
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <asp:Button runat="server" ID="btnGenerateReport" OnClick="btnGenerateReport_Click" CssClass="btn btn-warning" Text="Generate report" />
        </td>
    </tr>
</table>

<br />

