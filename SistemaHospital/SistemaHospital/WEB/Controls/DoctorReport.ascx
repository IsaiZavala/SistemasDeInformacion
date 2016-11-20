<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoctorReport.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MedicoReport" %>

<script src="../Resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<%--<link rel="stylesheet" href="../Resources/bootstrap/css/datepicker.css" />--%>    
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>--%>
<%--<link rel="stylesheet" href="../Resources/bootstrap/js/bootstrap-datepicker.js" />--%>   
<link rel="stylesheet" href="../Resources/bootstrap/css/bootstrap.css" />

<link rel="stylesheet" href="../Resources/plugins/datepicker/datepicker3.css" /> 
<script src="../Resources/plugins/datepicker/bootstrap-datepicker.js"></script>
<%--<link rel="stylesheet" href="../Resources/plugins/timepicker/bootstrap-timepicker.min.css">
<script src="../Resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>--%>


<h3>Doctor report</h3>



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
    <tr>
        <td>
            <asp:Button runat="server" ID="btnGenerateReport" CssClass="btn btn-warning" Text="Generate report" OnClick="btnGenerateReport_Click" />
        </td>
    </tr>
</table>
        
        <%--<div class="input-group-addon">
            <%--<i class="fa fa-calendar"></i>
        </div>--%>
        
   
</div>

<br /><br />

<script type="text/javascript">
    //Date picker
    $('#datepicker').datepicker({
        autoclose: true
    });

    $('#datepicker').change(function () {
        document.getElementById('<%= hdDate.ClientID %>').value = $('#datepicker').val();
    });

</script>