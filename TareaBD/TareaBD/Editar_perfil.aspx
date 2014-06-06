<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_perfil.aspx.cs" Inherits="TareaBD.Editar_perfil" %>

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
    <div class="style1">
    
        <strong>Editar Perfil</strong></div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Contraseña"></asp:Label>
        :<asp:TextBox ID="txtclave" runat="server" Height="16px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Ingrese clave" ForeColor="Red" ControlToValidate="txtclave"></asp:RequiredFieldValidator>
    </p>
    <asp:Label ID="Label2" runat="server" Text="Repetir Contraseña:"></asp:Label>
    <asp:TextBox ID="txtrepclave" runat="server" Height="18px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Debe llenar campo" ForeColor="Red" 
        ControlToValidate="txtrepclave"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtclave" ControlToValidate="txtrepclave" 
        ErrorMessage="Claves no coinciden" ForeColor="Red"></asp:CompareValidator>
    <p>
        Fecha Nacimiento:<asp:TextBox ID="txtfecha" runat="server" Height="18px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Ingrese Fecha" ForeColor="Red" ControlToValidate="txtfecha"></asp:RequiredFieldValidator>
    </p>
    <p>
        Avatar Url:<asp:TextBox ID="txtavatar" runat="server" Height="17px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Ingrese avatar" ForeColor="Red" 
            ControlToValidate="txtavatar"></asp:RequiredFieldValidator>
    </p>
    <asp:Label ID="lblid" runat="server" Text="ID Grupo"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Finalizar" />
    </form>
</body>
</html>
