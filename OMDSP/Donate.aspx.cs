using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMDSP
{
    public partial class Donate : System.Web.UI.Page
    {
        public string username;
        public List<string> NGOs;
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null || Session["name"] == null)
            {
                Response.Redirect("Home.aspx");

            }
            else
            {
                username = Session["username"].ToString();
                name = Session["name"].ToString();
                NGOs = getNGODetails();
            }
        }
        private List<string> getNGODetails()
        {
            List<string> temp = new List<string> { };
            try
            {
                Connect obj = new Connect();
                obj.conn.ConnectionString = obj.locate;
                obj.conn.Open();
                obj.cmd.Connection = obj.conn;
                string query = "select [name] from [dbo].[NGO_Details]";
                obj.cmd.CommandText = query;
                SqlDataReader dataReader;
                dataReader = obj.cmd.ExecuteReader();
                while (dataReader.Read())
                {
                    temp.Add(dataReader.GetValue(0).ToString());
                }

            }
            catch (Exception ae) { }
            return temp;

        }

        protected void AddField_Click(object sender, EventArgs e)
        {
            try
            {
                Connect obj = new Connect();
                obj.conn.ConnectionString = obj.locate;
                obj.conn.Open();
                obj.cmd.Connection = obj.conn;
                obj.cmd.CommandText = "INSERT INTO [dbo].[donations] ([username], [ngo], [tablets], [syrups], [sanitary_pads], [others]) VALUES ( @usname,@ngo,@tb,@syrup,@sp,@ot)";
                obj.cmd.Parameters.AddWithValue("@usname", username);
                obj.cmd.Parameters.AddWithValue("@ngo", DropDownList1.SelectedValue);
                obj.cmd.Parameters.AddWithValue("@tb", Quantity1.Text);
                obj.cmd.Parameters.AddWithValue("@syrup", Quantity2.Text);
                obj.cmd.Parameters.AddWithValue("@sp", Quantity3.Text);
                obj.cmd.Parameters.AddWithValue("@ot", Quantity4.Text);
                obj.cmd.ExecuteNonQuery();
                string regCredentials = "INSERT INTO [dbo].[donors] ([name], [ngo], [date]) VALUES (@name, @ng, @date)";
                obj.cmd.CommandText = regCredentials;
                obj.cmd.Parameters.AddWithValue("@name", name);
                obj.cmd.Parameters.AddWithValue("@ng", DropDownList1.SelectedValue);
                obj.cmd.Parameters.AddWithValue("@date", DateTime.Now.Date.ToShortDateString());
                obj.cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Donation Successfull')", true);
                Response.Redirect("User.aspx");
            }
            catch (Exception ae) { ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something happened')", true); }
        }
    }
}