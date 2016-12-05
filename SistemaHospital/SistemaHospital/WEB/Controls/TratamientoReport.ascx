<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TratamientoReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.TratamientoReport" %>

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
</table>




