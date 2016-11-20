<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EspecialidadReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.EspecialidadReport" %>


<h3>Especialidad report</h3>

<table>
    <tr>
        <td>
            <span>Nombre de especialidad: </span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtNombreEspecialidad"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <asp:Button runat="server" ID="btnGenerateReport" CssClass="btn btn-warning" Text="Generate report" OnClick="btnGenerateReport_Click" />
        </td>
    </tr>
</table>

