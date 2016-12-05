<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InventoryReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.InventoryReport" %>

<table>
    <tr>
        <td>
            <span>Item:</span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtItem" Text=""></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Precio venta:</span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtPrecioVenta"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Costo:</span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtCosto"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Cantidad:</span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtCantidad"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td></tr>
    <tr>
        <td>
            <span>Descripcion:</span>
        </td>
        <td>
            <asp:TextBox runat="server" ID="txtDescripcion"></asp:TextBox>
        </td>
    </tr>
</table>

