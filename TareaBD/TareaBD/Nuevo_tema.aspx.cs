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
    public partial class Nuevo_tema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string pub = "";
                if (chpub.Checked==true)
                {

                    pub = "1";

                }
                else
                {

                    pub = "0";
                }
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insert_tema = "insert into Tema (id_categoria,id_usuario,nombre,descripcion,mensaje,publico) values (@idcat,@idus,@nom,@descrip,@mensaje,@publi)";
                SqlCommand command = new SqlCommand(insert_tema, conn);
                command.Parameters.AddWithValue("@idcat", Session["categoria"]);
                command.Parameters.AddWithValue("@idus", Session["id"]);
                command.Parameters.AddWithValue("@nom", txtname.Text);
                command.Parameters.AddWithValue("@descrip", txtdescrip.Text);
                command.Parameters.AddWithValue("@mensaje", txtmsg.Text);
                command.Parameters.AddWithValue("@publi", pub);

                command.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Crear_tema.aspx");


            }
            catch (Exception ex)
            {

                Response.Write("Error:" + ex.ToString());

            }

        }
 
        
    }
}