using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace OMDSP
{
    public class Connect
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public string locate = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\Projects\Visual Studio\OMDSP\OMDSP\OMDSP\App_Data\DatabaseMain.mdf';Integrated Security=True";
        
    }
}