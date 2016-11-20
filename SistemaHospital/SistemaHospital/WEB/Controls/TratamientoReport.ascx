<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TratamientoReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.TratamientoReport" %>


<h3>Tratamiento report</h3>

<table>
    <tr>
        <td>
            <span>Enfermedad: </span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtEnfermedad"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Descripcion: </span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtDescripcion"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Costo: </span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtCosto"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <asp:Button runat="server" ID="btnGenerateReport" CssClass="btn btn-warning" OnClick="btnGenerateReport_Click" Text="Generate report" />
        </td>
    </tr>
</table>




