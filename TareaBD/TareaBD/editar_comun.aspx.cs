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
    public partial class editar_comun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            hipername.Text = Session["new"].ToString();

        }
        protected void ResultGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //SqlDataAdapter ad = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();


            cmd.Connection = conn;
            cmd.CommandText = "DELETE FROM Comentario WHERE id_comentario='" + GridView1.DataKeys[e.RowIndex].Values[0].ToString() + "'";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            // FillVendorGrid();
        }
        protected void ResultGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;

        }

        protected void ResultGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            TextBox coment = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcoment");

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //SqlDataAdapter ad = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "UPDATE Comentario SET mensaje ='" + coment.Text + "' where id_comentario='" + GridView1.DataKeys[e.RowIndex].Values[0].ToString() + "'";
            conn.Open();
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            //FillVendorGrid();
            conn.Close();

        }


        protected void ResultGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            //FillVendorGrid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Responder_tema.aspx");

        }
    }
}