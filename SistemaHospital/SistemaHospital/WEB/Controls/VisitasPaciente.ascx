<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VisitasPaciente.ascx.cs" Inherits="SistemaHospital.WEB.VisitasPaciente" %>

<div class="row">
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Id del Paciente</span>
            <asp:TextBox ID="txt_id" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Fecha inicial</span>
            <asp:TextBox ID="txt_fechaMin" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Fecha final</span>
            <asp:TextBox ID="txt_fechaMax" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
</div>

