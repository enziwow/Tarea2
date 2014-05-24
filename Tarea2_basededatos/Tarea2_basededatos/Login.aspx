<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tarea2_basededatos.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="EstiloLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="content_Login">
          <table>
             
             <tr>
               
               <td align="left">
               
                  Inicio de Sesión:

               </td>
          
             </tr>

             <tr>
             
               <td colspan ="2" align="left" > Nombre Usuario: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtUsuario" runat="server" Width="170px"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ControlToValidate="txtUsuario" ErrorMessage="Ingresar nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>

               <tr>
             
               <td colspan ="2" align="left" > Password: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtpass" runat="server" Width="170px" TextMode="Password"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ControlToValidate="txtpass" ErrorMessage="Ingresar clave" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>

              

              <tr>
             
               <td colspan ="2" align="center" ><asp:Button ID="aceptar" runat="server" 
                       Text="Ingresar" Width="150px" onclick="aceptar_Click" />  </td>
             
              </tr>


          
          </table>
         
        
        </div>
    </div>
    </form>
</body>
</html>
