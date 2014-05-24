<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Tarea2_basededatos.Registration" %>

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
               
                  Registrarse:

               </td>
          
             </tr>

             <tr>
             
               <td colspan ="2" align="left" > Nombre: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtnombre" runat="server" Width="170px"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ControlToValidate="txtnombre" ErrorMessage="Ingresar nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>

               <tr>
             
               <td colspan ="2" align="left" > Password: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtpassword" runat="server" Width="170px" TextMode="Password"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ControlToValidate="txtpassword" ErrorMessage="Ingresar clave" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > Repetir contraseña: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtrepass" runat="server" Width="170px" TextMode="Password"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ControlToValidate="txtrepass" ErrorMessage="Ingresar Clave" ForeColor="Red"></asp:RequiredFieldValidator> 
                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                       ControlToCompare="txtpassword" ControlToValidate="txtrepass" 
                       ErrorMessage="Claves no coinciden" ForeColor="#CC0000"></asp:CompareValidator>
                  </td>

                 
             
              </tr>

               <tr>
             
               <td colspan ="2" align="left" > Fecha Nacimiento: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtnaci" runat="server" Width="170px" ></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ControlToValidate="txtnaci" ErrorMessage="Ingresar nacimiento" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>

               <tr>
             
               <td colspan ="2" align="left" > Sexo: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtsexo" runat="server" Width="170px"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                       ControlToValidate="txtsexo" ErrorMessage="Ingresar sexo" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>

               <tr>
             
               <td colspan ="2" align="left" > Avatar url: </td>
             
              </tr>

              <tr>
             
               <td colspan ="2" align="left" > <asp:TextBox ID="txtavatar" runat="server" Width="170px" ></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                       ControlToValidate="txtavatar" ErrorMessage="Ingresar avatar" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
             
              </tr>



              <tr>
             
               <td colspan ="2" align="center" ><asp:Button ID="registrar" runat="server" 
                       Text="Registrarse" Width="150px" onclick="registrar_Click" />  </td>
             
              </tr>


          
          </table>
         
        
        </div>
    </div>
    </form>
</body>
</html>
