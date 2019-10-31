using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OMDSP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["username"] != null)
            {
                Response.Redirect("User.aspx");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = login_uname.Text;
            string password = login_password.Text;
            try
            {
                Connect obj = new Connect();
                obj.conn.ConnectionString = obj.locate;
                obj.conn.Open();
                obj.cmd.Connection = obj.conn;
                string query = "select count(*) from [dbo].[userCredentials] where [username]=@uname and [password]=@pass";
                obj.cmd.CommandText = query;
                obj.cmd.Parameters.AddWithValue("@uname", username);
                obj.cmd.Parameters.AddWithValue("@pass",password);
                int temp = Convert.ToInt32(obj.cmd.ExecuteScalar().ToString());
                if(temp==1)
                {
                    obj.cmd.Parameters.Clear();
                    obj.cmd.CommandText = "SELECT [name] FROM [dbo].[user_details] WHERE [username]=@usname";
                    obj.cmd.Parameters.AddWithValue("@usname", username);
                    SqlDataReader dataReader = obj.cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        Session["name"] = dataReader.GetValue(0).ToString();
                    }
                    Session["username"] = username;
                    Response.Redirect("User.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username and Password doesnt match')", true);
                }
            }
            catch (Exception ae) { }
        }
    }
}