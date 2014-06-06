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
    public partial class Mensaje_privado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string consulta = "select nombre,fecha_envio,asunto,mensaje from MensajePrivado INNER JOIN Usuario ON id_mensaje = '" + Session["id_mensaje"] + "'";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(consulta, conn);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                
                lblname.Text = reader.GetString(0);
                Session["n_recibe"] = lblname.Text;
                lblfecha.Text = reader.GetString(1);
                lblasunto.Text = reader.GetString(2);
                Session["asunto"] = lblasunto.Text;
                txtmensaje.Text = reader.GetString(3);

            }
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Responder_mensaje.aspx");

        }
    }
}