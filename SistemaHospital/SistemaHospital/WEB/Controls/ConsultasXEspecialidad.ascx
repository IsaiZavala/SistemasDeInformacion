﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConsultasXEspecialidad.ascx.cs" Inherits="SistemaHospital.WEB.Controls.ConsultasXEspecialidad" %>
<h3>Reporte de Consultas por Especialidad</h3><br />
Cantidad de registros:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtcant_Registros" runat="server"></asp:TextBox>
<br />
Fecha inicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtFechaMin" runat="server"></asp:TextBox>
<br />
Fecha Fin:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtFechaMax" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" OnClick="btnGenerateReport_Click" Text="Generar reporte" />

