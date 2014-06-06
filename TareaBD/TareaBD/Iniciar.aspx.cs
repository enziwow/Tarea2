using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace TareaBD
{
    public partial class Iniciar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void aceptar_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
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
                string password = passcommand.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtpass.Text)
                {

                    con.Open();
                    string ver_id = "select id_usuario from Usuario where nombre = '" + txtUsuario.Text + "' and contrasena = '" + txtpass.Text + "'";
                    SqlCommand com = new SqlCommand(ver_id, con);
                    int id = Convert.ToInt32(com.ExecuteScalar().ToString());
                    Session["id"] = id.ToString();
                    con.Close();
                    c.Open();
                    string consulta = "select id_buzon from BuzonEntrada where id_usuario= '" + Session["id"].ToString() + "'";
                    SqlCommand coman = new SqlCommand(consulta, c);
                    int idbuzon = Convert.ToInt32(coman.ExecuteScalar().ToString());
                    Session["New"] = txtUsuario.Text;
                    Session["id_buzon"] = idbuzon.ToString();
                    c.Close();
                    //GUARDAR ID USUARIO

                    SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    connn.Open();
                    string consul = "select id_grupo from Usuario where id_usuario = '" + Session["id"] + "'";
                    SqlCommand comand = new SqlCommand(consul, connn);
                    Session["id_grupo"] = comand.ExecuteScalar().ToString();
                    connn.Close();
                    //Response.Write(Session["id"]);
                    Response.Redirect("Usuarios.aspx");

                }
                else
                {
                    Response.Write("Contraseña incorrecta");

                }
                conn.Close();

            }
            else
            {
                Response.Write("Usuario incorrecto");

            }

        }
    }
}