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
    public partial class Plantilla_coment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insert = "insert into Comentario (id_tema,id_usuario,mensaje) values (@idtem,@idus,@mensaje)";
            SqlCommand command = new SqlCommand(insert, conn);
            command.Parameters.AddWithValue("@idtem",Session["tema"]);
            command.Parameters.AddWithValue("@idus",Session["id"]);
            command.Parameters.AddWithValue("@mensaje",TextBox1.Text);
            command.ExecuteNonQuery();
            conn.Close();
           // Response.Redirect("coment_ingresado.aspx");
            Response.Redirect("Response3.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}