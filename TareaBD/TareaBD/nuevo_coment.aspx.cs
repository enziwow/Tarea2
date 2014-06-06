using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TareaBD
{
    public partial class nuevo_coment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            hipername.Text = Session["new"].ToString();

        }
    }
}