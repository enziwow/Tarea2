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
    public partial class coment_ingresado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string consulta = "select nombre from Tema where id_tema = '"+Session["tema"]+"'";
            SqlCommand command = new SqlCommand(consulta, conn);
            string nombre = command.ExecuteScalar().ToString();
            conn.Close();
            label_tema.Text += nombre;

            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
           // con.Open();
           // consulta = "select mensaje from Comentario where id_tema = '" + Session["tema"] + "'";
           // string coment =command.ExecuteScalar().ToString();
           // con.Close();
           // label_coment
        }
    }
}