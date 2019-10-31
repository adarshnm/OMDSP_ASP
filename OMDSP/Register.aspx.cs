using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMDSP
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = username.Text;
            string name = inputname.Text;
            string email = inputEmail.Text;
            string gender = inputGender.SelectedValue;
            string phone = inputPhone.Text;
            string Altphone = inputAltPhone.Text;
            string address = inputaddress.Text;
            string city = inputCity.Text;
            string state = inputState.SelectedValue;
            string zip = inputZip.Text;
            string password = inputPassword.Text;
            try
            {
                Connect obj = new Connect();
                obj.conn.ConnectionString = obj.locate;
                obj.conn.Open();
                obj.cmd.Connection = obj.conn;
                obj.cmd.CommandText = "INSERT INTO [dbo].[user_details] ([username], [name], [email], [phone], [AltPhone], [gender], [address], [city], [state], [zipcode]) VALUES (@uname,@name,@email,@phone,@alphone,@gender,@address,@city,@state,@zip)";
                obj.cmd.Parameters.AddWithValue("@uname",uname);
                obj.cmd.Parameters.AddWithValue("@name",name);
                obj.cmd.Parameters.AddWithValue("@email",email);
                obj.cmd.Parameters.AddWithValue("@phone",phone);
                obj.cmd.Parameters.AddWithValue("@alphone",Altphone);
                obj.cmd.Parameters.AddWithValue("@gender",gender);
                obj.cmd.Parameters.AddWithValue("@address",address);
                obj.cmd.Parameters.AddWithValue("@city",city);
                obj.cmd.Parameters.AddWithValue("@state",state);
                obj.cmd.Parameters.AddWithValue("@zip",zip);
                obj.cmd.ExecuteNonQuery();
                string regCredentials = "INSERT INTO [dbo].[userCredentials] ([username], [password]) VALUES ('" + uname + "', '"+password+"')";
                obj.cmd.CommandText = regCredentials;
                obj.cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

            }
            catch (Exception ae)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+ae.Message+"')", true);
            }
        }
    }
}