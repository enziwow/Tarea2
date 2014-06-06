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
    public partial class editar_coment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string cadena = "select mensaje from Comentario where id_comentario = '" + Session["idcoment"] + "'";
            SqlCommand command = new SqlCommand(cadena, conn);
            SqlDataReader leer = command.ExecuteReader();
            if (leer.Read() == true)
            {

                //label_com.Text += coment;
                txtcoment.Text = leer["mensaje"].ToString();

            }
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            //TextBox coment = coment.FindControl("txtcoment");
            string cadena = "update Comentario set mensaje = @msj where id_comentario = '"+Session["idcoment"]+"'";
            SqlCommand command = new SqlCommand(cadena, conn);
            command.Parameters.AddWithValue("@msj",txtcoment.Text);
            command.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("nuevo_coment.aspx");
        }
    }
}