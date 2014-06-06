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
    public partial class Responder_mensaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            txtasunto.Text = "re:'" + Session["asunto"].ToString() + "'";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime fecha_actual = DateTime.Now;
            string f_actual = fecha_actual.ToString();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string consulta = "select id_usuario from Usuario where nombre = '" + Session["n_recibe"] + "'";
            SqlCommand command = new SqlCommand(consulta, conn);
            string id = command.ExecuteScalar().ToString();
            conn.Close();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string consultaw = "select id_buzon from BuzonEntrada where id_usuario = '" + id + "'";
            SqlCommand comm = new SqlCommand(consultaw, con);
            string idbuzon = comm.ExecuteScalar().ToString();
            con.Close();

            SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            c.Open();
            string query = "insert into MensajePrivado (id_remitente,id_buzon,leido,mensaje,fecha_envio,asunto) values (@idrem,@idbuz,@leido,@mens,@f_env,@as)";
            SqlCommand com = new SqlCommand(query, c);

            command.Parameters.AddWithValue("@idrem", Session["id"]);
            command.Parameters.AddWithValue("@idbuz", idbuzon);
            command.Parameters.AddWithValue("@leido", "0");
            command.Parameters.AddWithValue("@mens", txtmensaje.Text);
            command.Parameters.AddWithValue("@f_env", f_actual);
            command.Parameters.AddWithValue("@as",txtasunto.Text);
            command.ExecuteNonQuery();


            c.Close();
            Response.Redirect("Buzon.aspx");

        }
    }
}