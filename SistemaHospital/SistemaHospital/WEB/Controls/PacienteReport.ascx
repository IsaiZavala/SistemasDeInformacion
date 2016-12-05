<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PacienteReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.PacientesReporte" %>

<div class="row">
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Nombre</span>
            <asp:TextBox runat="server" ID="txtNombre" Text="" CssClass="form-control" ></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Telefono</span>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtTelefono" Text="" ></asp:TextBox>
        </div>
    </div>
</div>
