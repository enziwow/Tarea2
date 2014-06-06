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
    public partial class Responder_tema : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            lblname.Text = Session["new"].ToString();
            //name.Text = Session["new"].ToString();

            if (String.Compare(Session["id_grupo"].ToString(), "4") == 0)
            {

                Button1.Visible = false;

            }
            if (String.Compare(Session["id_grupo"].ToString(), "1") == 0)
            {

                Button2.Visible = false;
                //Button3.Visible = false;
                lblname.Visible = false;
                //name.Visible = false;

            }


          /*  if (!IsPostBack)
            {
                FillVendorGrid();
            } */
            
            
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
           // conn.Open();
           // string consulta = "select c.mensaje,u.nombre,u.avatar_url from Comentario c INNER JOIN Usuario u ON c.id_tema = '"+Session["tema"]+"'";
           // SqlCommand command = new SqlCommand(consulta, conn);
            //SqlDataAdapter da = new SqlDataAdapter(command);
           // DataTable dt = new DataTable();
           // DataRow Renglon;
           // da.Fill(dt);
           // GridView1.Visible = true;
           // GridView1.DataSource = dt;
           // GridView1.DataBind();
           // conn.Close();

        }
      /*  private void FillVendorGrid()
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlDataAdapter ad = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DataTable dataTable;
            dataTable = new DataTable();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT * FROM Vendor";
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        } */

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
            cmd.CommandText = "UPDATE Comentario SET mensaje ='" + coment.Text + "' where id_comentario='" +GridView1.DataKeys[e.RowIndex].Values[0].ToString() + "'";
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


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (String.Compare(e.CommandName, "edit") == 0)
            {

                
                
                //string coment="Comentario";
                int index = int.Parse(e.CommandArgument.ToString());
                string valor = GridView1.DataKeys[index].Value.ToString();
                Session["idcoment"] = valor;
                Response.Redirect("editar_coment.aspx");
                

            }

        }
        
       

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Plantilla_coment.aspx");

        }

        protected void Gridview1_databound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {



                if (String.Compare(Session["id_grupo"].ToString(), "1") == 0 || String.Compare(Session["id_grupo"].ToString(), "2") == 0)
                {
                    
                    
                    e.Row.Cells[5].Visible = true;
                    e.Row.Cells[6].Visible = true;

                }
                else
                {
                    e.Row.Cells[5].Visible = false;
                    e.Row.Cells[6].Visible = false;
                }

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("editar_comun.aspx");


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("borrar_comun.aspx");

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {

            Response.Redirect("Crear_tema.aspx");

        }

       
    }
}