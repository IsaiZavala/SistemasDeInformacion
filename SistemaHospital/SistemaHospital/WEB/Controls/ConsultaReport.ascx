<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConsultaReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.ConsultaReport" %>

<h3>Consulta report</h3>

<asp:Button runat="server" 
    CssClass="btn btn-warning" 
    ID="btnGenerateReport" 
    Text="Generate report"
    OnClick="btnGenerateReport_Click" />
