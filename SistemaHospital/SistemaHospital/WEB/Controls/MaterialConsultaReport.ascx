<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MaterialConsultaReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MaterialConsultaReport" %>

<div class="row">
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">IdItem</span>
            <asp:TextBox ID="txt_id" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Fecha inicio</span>
            <asp:TextBox ID="txt_fechaMin" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Fecha final</span>
            <asp:TextBox ID="txt_fechaMax" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
</div>
