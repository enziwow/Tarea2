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
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string consulta;
            if (Session["id_ousuario"] == null)
            {

                consulta = "select nombre,fecha_nacim,sexo,cantidad_coment,fecha_registro from Usuario where id_usuario = '" + Session["id"] + "'";
                Session["id_ousuario"] = Session["id"];
            }
            else
            {

                consulta = "select nombre,fecha_nacim,sexo,cantidad_coment,fecha_registro from Usuario where id_usuario = '" + Session["id_ousuario"] + "'";

                if (String.Compare(Session["id_ousuario"].ToString(), Session["id"].ToString()) == 0 || String.Compare(Session["id_grupo"].ToString(),"1")==0)
                {

                    Button1.Visible = true;


                }
                else
                {
                    Button1.Visible = false;

                }
                

            }
            if (String.Compare(Session["id_grupo"].ToString(), "1") != 0)
            {

                Session["id_ousuario"] = null;


            }
            
            //lblname.Text = Session["new"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            
            SqlCommand command = new SqlCommand(consulta, conn);
            SqlDataReader reader = command.ExecuteReader();
             if(reader.Read())
            {

                txtname.Text = reader.GetString(0);
                lblname.Text = txtname.Text;
                txtedad.Text = reader.GetString(1);
                txtsexo.Text = reader.GetString(2);
                txtcoments.Text = reader.GetInt32(3).ToString();
                txtfecha.Text = reader.GetDateTime(4).ToString();
                //txtusu.Text = reader.GetDateTime(5).ToString();
             
             
             }
             conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Editar_perfil.aspx");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("Usuarios.aspx");

        }
    }
}