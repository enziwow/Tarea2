<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="TareaBD._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        text-decoration: underline;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Bienvenido a ForoMagic
    </h2>
    <p>
        <asp:Button ID="Button1" runat="server" Height="21px" onclick="Button1_Click" 
            Text="Iniciar Sesión" Width="101px" />
    </p>
    <p>
        
        <asp:Button ID="Button2" runat="server" Height="21px" onclick="Button2_Click" 
            Text="Registrarse" Width="100px" />
        
    </p>
<p class="style1">
        
    Categorías Públicas</p>
<asp:GridView ID="GridView1" runat="server" Width="251px" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="nombre" HeaderText="nombre" 
            SortExpression="nombre" />
        <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
            SortExpression="descripcion" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [nombre], [descripcion] FROM [Categoria] WHERE ([publico] = @publico)">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="publico" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
