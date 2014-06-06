<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mensaje_privado.aspx.cs" Inherits="TareaBD.Mensaje_privado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large">
    
        <span class="style1">Mensaje de </span>
        <asp:Label ID="lblname" runat="server" CssClass="style1"></asp:Label>
        <br />
    
    </div>
    <p>
        Fecha Envío:<asp:Label ID="lblfecha" runat="server"></asp:Label>
    </p>
    <p>
        Asunto:<asp:Label ID="lblasunto" runat="server"></asp:Label>
    </p>
    <p>
        Mensaje:
    </p>
    <p>
        <asp:TextBox ID="txtmensaje" runat="server" Height="58px" Width="231px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Responder" Width="83px" />
    </p>
    
    </form>
</body>
</html>
