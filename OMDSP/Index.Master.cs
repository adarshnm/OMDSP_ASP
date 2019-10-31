using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMDSP
{
    public partial class Index : System.Web.UI.MasterPage
    {
        public string name = "Login";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
                name = Session["name"].ToString();
            else
                name = "Login";
        }
    }
}