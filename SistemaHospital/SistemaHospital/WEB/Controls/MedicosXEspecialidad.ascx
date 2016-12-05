<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MedicosXEspecialidad.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MedicosXEspecialidad" %>

<div class="row">
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Cantidad</span>
            <asp:TextBox ID="n_TextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">  
        <div class="input-group">
            <span class="input-group-addon">Orden</span>
            <asp:RadioButtonList ID="orden_CheckList" runat="server">
                <asp:ListItem Value="-">Menor</asp:ListItem>
                <asp:ListItem Selected="True" Value="+">Mayor</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
</div>

