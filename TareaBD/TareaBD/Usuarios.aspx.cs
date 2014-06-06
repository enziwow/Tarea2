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
    public partial class Usuarios : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

            hipername.Text = Session["new"].ToString();
            //string validate = "True";


        }
        /*protected void GridView_DataBound(object sender, GridViewRowEventArgs e)
        {
            int i = 0;
            if (i==0)
            {
                GridView1.Columns[4].Visible = false;
                //GridView1.Columns[8].Visible = false;
            }
        } */

        protected void ResultGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                //SqlDataAdapter ad = new SqlDataAdapter();
                conn.Open();
                SqlCommand cmd = new SqlCommand();


                cmd.Connection = conn;
                cmd.CommandText = "DELETE FROM Categoria WHERE id_categoria='" + GridView1.DataKeys[e.RowIndex].Values[0].ToString() + "'";
                
                cmd.ExecuteNonQuery();
                conn.Close();

            

            


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if(String.Compare(e.CommandName,"seleccionar")==0){

                int index = int.Parse(e.CommandArgument.ToString());

                string valor = GridView1.DataKeys[index].Value.ToString();

                Session["categoria"] = valor;
                Response.Redirect("Crear_tema.aspx");
                //Response.Write(Session["categoria"]);
              
                // Selecciona el indice de la fila del boton en el que se hizo clic
               
                //int index = Convert.ToInt32(e.CommandArgument);
                
                // retorna el row en que se hizo clic
                
                //GridViewRow selectedRow = GridView1.Rows[index];
                
               // Session["categoria"] = selectedRow.Cells[0].ToString();
                
                //string item = selectedRow.Cells[2].ToString();
                //Response.Write(Session["categoria"]);
               // Response.Redirect("Default.aspx");

            }
 

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (String.Compare(e.CommandName, "seleccionar") == 0)
            {

                int index = int.Parse(e.CommandArgument.ToString());

                string id = GridView2.DataKeys[index].Value.ToString();

                Session["id_ousuario"] = id;
                Response.Redirect("Perfil.aspx");


            }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                

                if (String.Compare(Session["id_grupo"].ToString(),"1")==0)
                {
                    e.Row.Cells[4].Visible = true;

                }
                else
                {
                    e.Row.Cells[4].Visible = false;
                }

            }


        }


        
    }
}