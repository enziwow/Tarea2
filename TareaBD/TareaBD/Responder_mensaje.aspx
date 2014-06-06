<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Responder_mensaje.aspx.cs" Inherits="TareaBD.Responder_mensaje" %>

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
    
        <strong>Enviar Mensaje</strong></div>
    <p>
        Asunto:<asp:TextBox ID="txtasunto" runat="server" Width="183px"></asp:TextBox>
    </p>
    <p>
        Mensaje:</p>
    <p>
        <asp:TextBox ID="txtmensaje" runat="server" Height="99px" Width="201px"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Responder" Width="92px" />
    </form>
</body>
</html>
