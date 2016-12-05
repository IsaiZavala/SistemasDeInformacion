<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InventoryReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.InventoryReport" %>

<div class="row">
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Item</span>
            <asp:TextBox runat="server" CssClass="form-control" ID="txtItem" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Precio venta</span>
            <asp:TextBox runat="server" CssClass="form-control" ID="txtPrecioVenta"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Costo</span>
            <asp:TextBox runat="server" ID="txtCosto" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Cantidad</span>
            <asp:TextBox runat="server" ID="txtCantidad" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Descripcion</span>
            <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
</div>

