<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nuevo_tema.aspx.cs" Inherits="TareaBD.Nuevo_tema" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-decoration: underline">
    
        PLANTILLA CREACION TEMA</div>
    <p>
        Nombre<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtname" ErrorMessage="Ingresar Nombre" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Descripción<asp:TextBox ID="txtdescrip" 
            runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtdescrip" ErrorMessage="Ingresar Descripcion" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:CheckBox ID="chpub" runat="server" Text="Publico" 
            />
    </p>
    <p>
        Mensaje<asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtmsg" ErrorMessage="Ingresar Mensaje" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Finalizar" />
    </form>
</body>
</html>
