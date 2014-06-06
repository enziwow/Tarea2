<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_coment.aspx.cs" Inherits="TareaBD.editar_coment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p>
            <br />
            <br />
    
        Comentario :<br />
        <br />
        <asp:TextBox ID="txtcoment" runat="server" Height="67px" Width="156px"></asp:TextBox>
    
        </p>
    
    </div>
    <asp:Button ID="Button1" runat="server" Height="24px" onclick="Button1_Click" 
        Text="Finalizar Editado" Width="130px" />
    </form>
</body>
</html>
