<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevo_coment.aspx.cs" Inherits="TareaBD.nuevo_coment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 276px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 100px">
    
        <h1 style="font-size: x-large; text-decoration: underline">
            Usuario
            <asp:HyperLink ID="hipername" runat="server">[hipername]</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
        </h1>
    </div>
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
    <p>
    
        Comentario editado satisfactoriamente!<br />
    </p>
    </form>
</body>
</html>
