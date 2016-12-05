<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TratamientoReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.TratamientoReport" %>

<div class="row">
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Enfermedad</span>
            <asp:TextBox runat="server" CssClass="form-control" ID="txtEnfermedad"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Descripcion</span>
            <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Costo</span>
            <asp:TextBox runat="server" ID="txtCosto" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
</div>




