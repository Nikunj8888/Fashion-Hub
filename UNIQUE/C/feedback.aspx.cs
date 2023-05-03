using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace UNIQUE.C
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");
            string a = "insert into feedback (name,email,address,contactno,feedback) values(@name,@email,@address,@contactno,@feedback)";
            con.Open();
            SqlCommand cmd=new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@name",txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@contactno",TextBox1.Text);
            cmd.Parameters.AddWithValue("@feedback", Txtfeedback.Text);
            
            int ans = cmd.ExecuteNonQuery();

            if(ans > 0)
            {
                Response.Redirect("~/C/feedback.aspx");
                MessageBox.Show("FeedBack Successfully.....");
            }
            else
            {
                MessageBox.Show("FeedBack Not Done!!......");
            }
            con.Close();
        }
    }
}