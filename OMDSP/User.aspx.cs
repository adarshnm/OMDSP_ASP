using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMDSP
{
    public partial class User : System.Web.UI.Page
    {
        public string name;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null || Session["name"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                name = Session["name"].ToString();
            }
        }
    }
}