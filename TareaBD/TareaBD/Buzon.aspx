<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buzon.aspx.cs" Inherits="TareaBD.Buzon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 75px">
    
        <br />
        <span class="style1">Buzon Entrada</span><br />
        <br />
    
    </div>
    <p>
        Usuario
        <asp:HyperLink ID="hipername" runat="server" ForeColor="#0033CC">[hipername]</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_mensaje" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" >
        <Columns>
            <asp:BoundField DataField="id_mensaje" HeaderText="ID Mensaje" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_mensaje" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre Remitente" 
                SortExpression="nombre" />
            <asp:BoundField DataField="asunto" HeaderText="Asunto" 
                SortExpression="asunto" />
            <asp:BoundField DataField="leido" HeaderText="Leido" SortExpression="leido" />
            <asp:BoundField DataField="fecha_envio" HeaderText="Fecha Envío" 
                SortExpression="fecha_envio" />
        
         <asp:ButtonField CommandName="seleccionar" Text="Elegir" HeaderText="Opción" />
        
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT MensajePrivado.id_mensaje, Usuario.nombre, MensajePrivado.asunto, MensajePrivado.leido, MensajePrivado.fecha_envio FROM MensajePrivado INNER JOIN Usuario ON MensajePrivado.id_buzon = @idbuzon">
        <SelectParameters>
            <asp:SessionParameter Name="idbuzon" SessionField="idbuzon" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Redactar Mensaje" Width="119px" />
    </form>
</body>
</html>
