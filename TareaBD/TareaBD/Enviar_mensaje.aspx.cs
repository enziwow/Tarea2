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
    public partial class Enviar_mensaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DateTime fecha_actual = DateTime.Now;
            string f_actual = fecha_actual.ToString();
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string consulta = "select id_usuario from Usuario where nombre= '"+txtpara.Text+"'";
            SqlCommand comm = new SqlCommand(consulta, con);
            int idenviado = Convert.ToInt32(comm.ExecuteScalar().ToString());
            con.Close();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string consultaw = "select id_buzon from BuzonEntrada where id_usuario= '" +idenviado.ToString()+ "'";
            SqlCommand com = new SqlCommand(consultaw, conn);
            int buzon = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            
            SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            c.Open();
            string insert_mensaje = "insert into MensajePrivado (id_remitente,id_buzon,leido,mensaje,fecha_envio,asunto) values (@idrem,@idbuz,@leido,@mens,@f_env,@as)";
            SqlCommand command = new SqlCommand(insert_mensaje, c);
            command.Parameters.AddWithValue("@idrem",Session["id"]);
            command.Parameters.AddWithValue("@idbuz",buzon.ToString());
            command.Parameters.AddWithValue("@leido","0");
            command.Parameters.AddWithValue("@mens",txtmsg.Text);
            command.Parameters.AddWithValue("@f_env", f_actual);
            command.Parameters.AddWithValue("@as",txtasunto.Text);
            command.ExecuteNonQuery();
            c.Close();
        }
    }
}