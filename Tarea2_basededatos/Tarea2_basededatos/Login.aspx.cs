using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Tarea2_basededatos
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        protected void aceptar_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string ver_usuario = "select count(*) from Usuario where nombre = '" + txtUsuario.Text + "'";
            SqlCommand command = new SqlCommand(ver_usuario, conn);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                string ver_pass = "select contrasena from Usuario where nombre = '" + txtUsuario.Text + "'";
                SqlCommand passcommand = new SqlCommand(ver_pass, conn);
                string password = passcommand.ExecuteScalar().ToString().Replace(" ","");
                if (password == txtpass.Text)
                {
                    Session["New"] = txtUsuario.Text;
                    Response.Redirect("Usuario.aspx");

                }
                else
                {
                    Response.Write("Contraseña incorrecta");

                }

            }
            else
            {
                Response.Write("Usuario incorrecto");

            }
            

            
        }
    }
}