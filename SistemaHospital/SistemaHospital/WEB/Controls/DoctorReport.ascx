<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoctorReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MedicoReport" %>

<div class="col-md-3">
  
<table>
    <tr>
        <td><asp:Label runat="server" Text="Nombre:"></asp:Label></td>
        <td><asp:TextBox runat="server" ID="txtNombre" Text=""></asp:TextBox></td>
    </tr>
    <tr>
        <td><br /></td>
    </tr>
    <tr>
        <td>Fecha nacimiento:</td>
        <td>
            <div class="input-group date">
                <input type="text" id="datepicker" class="form-control" data-date-format="dd-mm-yyyy">
                <asp:HiddenField runat="server" ID="hdDate" />
            </div>
        </td>
    </tr>
    <tr>
        <td><br /></td>
    </tr>
</table>
           
</div>