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
    public partial class Buzon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            hipername.Text = Session["new"].ToString();
            string consulta = "select id_buzon from BuzonEntrada where id_usuario = '" + Session["id"] + "'";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //SqlDataAdapter ad = new SqlDataAdapter();
            conn.Open();
            SqlCommand command = new SqlCommand(consulta, conn);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                Session["idbuzon"] = reader.GetString(0);

            }
            conn.Close();

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (String.Compare(e.CommandName, "seleccionar") == 0)
            {

                int index = int.Parse(e.CommandArgument.ToString());

                string valor = GridView1.DataKeys[index].Value.ToString();

                Session["id_mensaje"] = valor;
                Response.Redirect("Mensaje_privado.aspx");


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Enviar_mensaje.aspx");
        }
 
    }
}