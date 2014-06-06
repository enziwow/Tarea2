<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="TareaBD.Perfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1"><strong>Perfil Usuario</strong><asp:Label ID="lblname" 
            runat="server"></asp:Label>
        </span><br />
        <br />
        Nombre:&nbsp;&nbsp;
        <asp:Label ID="txtname" runat="server"></asp:Label>
        <br />
        Fecha de Nacimiento:
        <asp:Label ID="txtedad" runat="server"></asp:Label>
        <br />
        Sexo:&nbsp;&nbsp;
        <asp:Label ID="txtsexo" runat="server"></asp:Label>
        <br />
        Numero de Comentarios:&nbsp;
        <asp:Label ID="txtcoments" runat="server"></asp:Label>
        <br />
        Fecha de Registro:
        <asp:Label ID="txtfecha" runat="server"></asp:Label>
        <br />
        Tipo Usuario:&nbsp;
        <asp:Label ID="txtusu" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
        Text="Editar Perfil" Width="85px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Volver" />
    </p>
    </form>
</body>
</html>
