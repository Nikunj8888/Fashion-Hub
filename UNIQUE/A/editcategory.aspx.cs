using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;

namespace UNIQUE.A
{
    public partial class editcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");
            string query = "insert into cetegory values('"+TextBox1.Text+"')";
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            int a=cmd.ExecuteNonQuery();
            con.Close();
            if (a>0)
            {
                MessageBox.Show("Insert Successfully!!!....");
            }
            else
            {
                MessageBox.Show("Error!!!!!!!");
            }
        }
    }
}