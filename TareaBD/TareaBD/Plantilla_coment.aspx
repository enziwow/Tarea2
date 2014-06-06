<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plantilla_coment.aspx.cs" Inherits="TareaBD.Plantilla_coment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {}
        .style2
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <span class="style2">Plantilla Responder Tema</span><br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Comentario :"></asp:Label>
    
    </div>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="100px" 
            ontextchanged="TextBox1_TextChanged" Width="263px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Debe Comentar Algo... " 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <asp:Button ID="Button1" runat="server" Height="19px" onclick="Button1_Click" 
        Text="Finalizar" />
    </form>
</body>
</html>
