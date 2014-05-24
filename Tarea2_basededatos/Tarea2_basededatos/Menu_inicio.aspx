<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu_inicio.aspx.cs" Inherits="Tarea2_basededatos.Menu_inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #666666;
        }
    </style>
</head>
<body style="height: 413px">
    <form id="form1" runat="server">
    <div>
    
        <p style="font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style1" 
                style="font-size: x-large; font-weight: bolder; font-family: Calibri">
            Bienvenido&nbsp;</span></p>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong style="font-size: large">&nbsp; Categorías</strong></p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_categoria" 
        DataSourceID="SqlDataSource1" style="margin-left: 164px; margin-top: 22px">
        <Columns>
            <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" 
                ReadOnly="True" SortExpression="id_categoria" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                SortExpression="descripcion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
    <p>
        <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
            Text="Iniciar Sesión"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="21px" onclick="Button1_Click" 
            style="margin-bottom: 3px" Text="Aceptar" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" style="font-weight: 700" 
            Text="Registrarse"></asp:Label>
    </p>
    <asp:Button ID="Button2" runat="server" Height="19px" onclick="Button2_Click" 
        Text="Aceptar" />
    </form>
</body>
</html>
