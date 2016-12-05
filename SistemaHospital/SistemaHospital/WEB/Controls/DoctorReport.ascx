<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoctorReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MedicoReport" %>

<div class="row">
    <div class="col-md-4">  
        <div class="input-group">
            <asp:Label runat="server" CssClass="input-group-addon" Text="Nombre:"></asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" ID="txtNombre" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Fecha nacimiento</span>
            <input type="text" runat="server" id="FechaNacimiento" class="form-control">
        </div>
    </div>
</div>

<script type="text/javascript">
    $().ready(
        $(function () {
            $("#<%= FechaNacimiento.ClientID %>").datepicker($.datepicker.regional["es"]);
        }));
</script>