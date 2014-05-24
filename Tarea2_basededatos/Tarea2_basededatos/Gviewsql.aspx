<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gviewsql.aspx.cs" Inherits="Tarea2_basededatos.Gviewsql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_usuario" 
        DataSourceID="SqlDataSourceRegistration" Height="199px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
            <asp:BoundField DataField="id_grupo" HeaderText="id_grupo" 
                SortExpression="id_grupo" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
            <asp:BoundField DataField="contrasena" HeaderText="contrasena" 
                SortExpression="contrasena" />
            <asp:BoundField DataField="cant_coments" HeaderText="cant_coments" 
                SortExpression="cant_coments" />
            <asp:BoundField DataField="avatar_url" HeaderText="avatar_url" 
                SortExpression="avatar_url" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="fecha_nacimiento" 
                SortExpression="fecha_nacimiento" />
            <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
            <asp:BoundField DataField="fecha_registro" HeaderText="fecha_registro" 
                SortExpression="fecha_registro" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
