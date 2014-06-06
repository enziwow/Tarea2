<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="TareaBD.Usuarios" %>

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
        .style2
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
            NavigateUrl="~/Buzon.aspx">Buzon de Entrada</asp:HyperLink>
    
        <span class="style1">
        <br />
        Usuario
        &nbsp; 
        <asp:HyperLink ID="hipername" runat="server" NavigateUrl="~/Perfil.aspx" 
            BorderColor="#000099" ForeColor="#000099">[hipername]</asp:HyperLink>
        <br />
        </span>
    
    </div>
    <p class="style2">
        <em>Categorías </em></p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_categoria"  DataSourceID="SqlDataSource1" Height="143px" 
        OnRowCommand="GridView1_RowCommand"  OnRowDeleting="ResultGridView_RowDeleting" 
        onrowdatabound="GridView1_RowDataBound"  >
        <Columns>
            <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_categoria" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                SortExpression="descripcion" />
            <asp:ButtonField CommandName="seleccionar" Text="Elegir" HeaderText="Select" />

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
        
        
        
        
        
        SelectCommand="SELECT [id_categoria], [nombre], [descripcion] FROM [Categoria]" 
        DeleteCommand="DELETE FROM Categoria WHERE (id_categoria = @id_categoria)">
        <DeleteParameters>
            <asp:Parameter Name="id_categoria" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <br />
    <span class="style2">Usuarios<br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_usuario" DataSourceID="SqlDataSource2" OnRowCommand="GridView2_RowCommand">
        <Columns>
            <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
            <asp:ButtonField CommandName="seleccionar" Text="Elegir" HeaderText="Select" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id_usuario], [nombre] FROM [Usuario]">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    </span>
    <br />
    </form>
</body>
</html>
