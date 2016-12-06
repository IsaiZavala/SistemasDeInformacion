<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MinMax_Proveedor_Ganancia.ascx.cs" Inherits="SistemaHospital.WEB.Controls.MinMax.MinMax_Proveedor_Ganancia" %>


<div class="row">
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">IdItem</span>
            <asp:TextBox ID="textBox_Item" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="input-group">
            <span class="input-group-addon">Cantidad de registros</span>
            <asp:TextBox ID="txtcant_Registros" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Desde</span>
            <asp:DropDownList ID="mes_ini_ddp" CssClass="form-control" runat="server">
                <asp:ListItem Value="01">Enero</asp:ListItem>
                <asp:ListItem Value="02">Febrero</asp:ListItem>
                <asp:ListItem Value="03">Marzo</asp:ListItem>
                <asp:ListItem Value="04">Abril</asp:ListItem>
                <asp:ListItem Value="05">Mayo</asp:ListItem>
                <asp:ListItem Value="06">Junio</asp:ListItem>
                <asp:ListItem Value="07">Julio</asp:ListItem>
                <asp:ListItem Value="08">Agosto</asp:ListItem>
                <asp:ListItem Value="09">Septiembre</asp:ListItem>
                <asp:ListItem Value="10">Octubre</asp:ListItem>
                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                <asp:ListItem Value="12">Diciembre</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="anio_ini_ddp" CssClass="form-control" runat="server">
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="col-md-4">
        <div class="input-group">
            <span class="input-group-addon">Hasta</span>
            <asp:DropDownList ID="mes_fin_ddp" CssClass="form-control" runat="server">
                <asp:ListItem Value="01">Enero</asp:ListItem>
                <asp:ListItem Value="02">Febrero</asp:ListItem>
                <asp:ListItem Value="03">Marzo</asp:ListItem>
                <asp:ListItem Value="04">Abril</asp:ListItem>
                <asp:ListItem Value="05">Mayo</asp:ListItem>
                <asp:ListItem Value="06">Junio</asp:ListItem>
                <asp:ListItem Value="07">Julio</asp:ListItem>
                <asp:ListItem Value="08">Agosto</asp:ListItem>
                <asp:ListItem Value="09">Septiembre</asp:ListItem>
                <asp:ListItem Value="10">Octubre</asp:ListItem>
                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                <asp:ListItem Value="12">Diciembre</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="anio_fin_ddp" CssClass="form-control" runat="server">
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <div class="input-group">
            <asp:Label ID="Label1" CssClass="input-group-addon" runat="server" Text="Orden"></asp:Label>
            <asp:RadioButtonList ID="orden_radiobutton" runat="server">
                <asp:ListItem Value="-">Menor</asp:ListItem>
                <asp:ListItem Selected="True" Value="+">Mayor</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
</div>




