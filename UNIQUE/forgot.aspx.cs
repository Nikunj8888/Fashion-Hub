using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace UNIQUE
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("update Login set Password='"+TextBox2.Text+"' where UserName='"+TextBox1.Text+"'", conn);
                
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    MessageBox.Show("Password Update Successfully");
                }
                
            
        }
    }
}