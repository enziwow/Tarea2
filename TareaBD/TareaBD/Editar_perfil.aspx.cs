using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TareaBD
{
    public partial class Editar_perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (String.Compare(Session["id"].ToString(), "1") == 0)
            {

                lblid.Visible = true;
                txtid.Visible = true;

            }
            else
            {
                lblid.Visible = false;
                txtid.Visible = false;

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtid.Visible == true)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string actualiza = "update Usuario set id_grupo=@idg where id_usuario= '" + Session["id_ousuario"] + "'";
                SqlCommand com = new SqlCommand(actualiza, con);
                com.Parameters.AddWithValue("@idg", txtid.Text);
                com.ExecuteNonQuery();
                con.Close();

            }

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string actualizar = "update Usuario set contrasena=@clave,avatar_url=@avatar,fecha_nacimiento=@naci where id_usuario= '"+Session["id"]+"'";
            SqlCommand command = new SqlCommand(actualizar, conn);
            command.Parameters.AddWithValue("@clave", txtclave.Text);
            command.Parameters.AddWithValue("@avatar", txtavatar.Text);
            command.Parameters.AddWithValue("@naci", txtfecha.Text);
            command.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Perfil.aspx");

        }
    }
}