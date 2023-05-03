using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;
using System.Windows;

namespace UNIQUE
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where UserName=@UserName and Password=@Password", con);
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["id"] = txtusername.Text;
                Response.Redirect("C/home.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "UserName And Password is Incorrect!!!";
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Login  VALUES('" + txtusername.Text + "','" + txtpassword.Text + "')", con);


            int a=cmd.ExecuteNonQuery();
            if(a> 0)
            {
                Response.Redirect("C/home.aspx");
            }

            con.Close();
        }
       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AdminLogin where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["id"] = txtusername.Text;
                Response.Redirect("A/home.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "UserName And Password is Incorrect!!!";
            }
        }
    }
}