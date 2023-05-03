using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Windows;
using System.Xml.Linq;

namespace UNIQUE.C
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");
            string a = "insert into contactus values(@name,@email,@comment)";
            con.Open();
            SqlCommand cmd = new SqlCommand(a, con);
            _=cmd.Parameters.AddWithValue("@name", fname.Text);
            _=cmd.Parameters.AddWithValue("@email", email.Text);
            _=cmd.Parameters.AddWithValue("@comment", comment.Text);
           
            int ans = cmd.ExecuteNonQuery();

            if (ans > 0)
            {
                MessageBox.Show("Successfully Done.....");
                Response.Redirect("~/C/contactus.aspx");
            }
            else
            {
                MessageBox.Show(" Not Done Try Again!!......");
            }
            con.Close();
        }
    }
}