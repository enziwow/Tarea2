<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crear_tema.aspx.cs" Inherits="TareaBD.Crear_tema" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
        #form1
        {
            height: 437px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        <span class="style1">Usuario
        <asp:HyperLink ID="hipername" runat="server">[hipername]</asp:HyperLink>
        <br />
        </span></div>
    <p>
        <br />
        <span class="style1"><strong>Temas de la Categoría</strong></span></p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_tema" DataSourceID="SqlDataSource1" Height="184px" 
        OnRowCommand="GridView1_RowCommand" OnRowDeleting="ResultGridView_RowDeleting" 
        onrowdatabound="GridView1_Databound">
        <Columns>
            <asp:BoundField DataField="id_tema" HeaderText="id_tema" 
                SortExpression="id_tema" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                SortExpression="descripcion" />
            <asp:BoundField DataField="Expr1" HeaderText="Autor" SortExpression="Expr1" />
       
            	<asp:ButtonField  CommandName="seleccion" Text="Elegir" HeaderText="Select"  />
            
            <asp:TemplateField HeaderText="Delete?">

                        <ItemTemplate>

                            <span onclick="return confirm('Are you sure to Delete the record?')">

                                <asp:LinkButton ID="lnkB" runat="Server" Text="Delete" CommandName="Delete"></asp:LinkButton>

                            </span>

                        </ItemTemplate>

                     </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT Tema.nombre, Tema.descripcion, Tema.id_tema, Usuario.nombre AS Expr1 FROM Tema INNER JOIN Usuario ON Usuario.id_usuario = Tema.id_usuario AND Tema.id_categoria = @id_categoria" 
        DeleteCommand="DELETE FROM Tema WHERE (id_tema = @id_tema)">
        <DeleteParameters>
            <asp:Parameter Name="id_tema" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="id_categoria" SessionField="categoria" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Volver" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="21px" onclick="Button1_Click" 
            Text="Nuevo Tema" Width="116px" />
    </p>
    </form>
</body>
</html>
