<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enviar_mensaje.aspx.cs" Inherits="TareaBD.Enviar_mensaje" %>

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
    <div class="style1" style="font-size: large">
    
        Redactar Mensaje</div>
    <p>
        Para :
        <asp:TextBox ID="txtpara" runat="server"></asp:TextBox>
    </p>
    <p>
        Asunto :
        <asp:TextBox ID="txtasunto" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        Mensaje :</p>
    <p>
        <asp:TextBox ID="txtmsg" runat="server" Height="78px" Width="245px"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Enviar" />
    </form>
</body>
</html>
