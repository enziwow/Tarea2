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
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (IsPostBack)
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string ver_usuario = "select count(*) from Usuario where nombre = '" + txtnombre.Text + "'";
                SqlCommand command = new SqlCommand(ver_usuario, conn);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                if (temp == 1)
                {

                    Response.Write("El usuario ya existe...Por favor elegir un nombre diferente");
                    Response.Redirect("Responsew.aspx");
                }
                conn.Close();

            }

        }

        protected void registrar_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                DateTime fecha_actual = DateTime.Now;
                string f_actual = fecha_actual.ToString();
                string insert_usuario = "insert into Usuario (id_grupo,nombre,contrasena,cantidad_coment,avatar_url,fecha_nacim,sexo,fecha_registro) values (@id,@nom,@clave,@coments,@avatar,@naci,@sex,@regist)";
                SqlCommand command = new SqlCommand(insert_usuario, conn);

                command.Parameters.AddWithValue("@id", "3");
                command.Parameters.AddWithValue("@nom", txtnombre.Text);
                command.Parameters.AddWithValue("@clave", txtpassword.Text);
                command.Parameters.AddWithValue("@coments", "0");
                command.Parameters.AddWithValue("@avatar", txtavatar.Text);
                command.Parameters.AddWithValue("@naci", txtnaci.Text);
                command.Parameters.AddWithValue("@sex", txtsexo.Text);
                command.Parameters.AddWithValue("@regist", f_actual);

                command.ExecuteNonQuery();

                
                //Response.Write("Registro exitoso!");
                //CREAR BUZON ENTRADA
              /*  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string insert_buzon = "insert into BuzonEntrada (id_usuario,mensajes,msgs_sin_leer) values (@id,@msgs,@msgleer)";
                SqlCommand com = new SqlCommand(insert_buzon, con);
                command.Parameters.AddWithValue("@id",Session["id"]);
                command.Parameters.AddWithValue("@msgs","0");
                command.Parameters.AddWithValue("@msgleer", "0"); */


                conn.Close();
                Response.Redirect("Responsew2.aspx");
                

            }
            catch (Exception ex)
            {

                Response.Write("Error:" + ex.ToString());

            }
            


        }
    }
}