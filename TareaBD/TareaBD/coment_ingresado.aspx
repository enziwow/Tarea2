<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coment_ingresado.aspx.cs" Inherits="TareaBD.coment_ingresado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Comentario ingresado con exito!</div>
    <p>
        <asp:Label ID="label_tema" runat="server" Text="Nombre Tema: "></asp:Label>
        <asp:Label ID="label_coment" runat="server"></asp:Label>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="mensaje" HeaderText="mensajes" 
                SortExpression="mensaje" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [mensaje] FROM [Comentario] WHERE ([id_tema] = @id_tema)">
        <SelectParameters>
            <asp:SessionParameter Name="id_tema" SessionField="tema" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
    </body>
</html>
