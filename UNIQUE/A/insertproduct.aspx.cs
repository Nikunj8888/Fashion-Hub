using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;

namespace UNIQUE.A
{
    public partial class insertproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");
            
            string str2 = Server.MapPath("~/Images/");


            if (FileUpload1.HasFile == true)
            {
                
                 str2 =str2 + "\\" + FileUpload1.FileName;
                string extension = System.IO.Path.GetExtension(str2);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    FileUpload1.SaveAs(str2);
                    SqlCommand cmd = new SqlCommand("insert into product(p_name,p_price,p_img,p_des,cat_name) values('" + TextBox1.Text + "','" + TextBox2.Text + "', '"+"../Images/" + FileUpload1.FileName.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
                    //SqlCommand abc = new SqlCommand("insert into cetegory(cat_name) values('" + TextBox4.Text + "')",con);
                    con.Open();
                    int ans = cmd.ExecuteNonQuery();
                    //int ans1=abc.ExecuteNonQuery();
                    con.Close();
                    if (ans > 0)
                    {
                        MessageBox.Show("Add Successfully!!!.....");

                    }
                    
                    /*else if(ans1 > 0)
                    {
                        MessageBox.Show("Add Successfully!!!.....");

                    }*/
                }
                else
                {
                    MessageBox.Show("You doesn't selected jpg or jpeg or png format image.");
                    Response.Redirect("~/A/insertproduct.aspx");
                    
                }
                con.Open();
            }




            /*string upload_path = str2  +"/"+ FileUpload1.FileName;
           
            FileUpload1.SaveAs(upload_path);
            string abc = "../Images/"+FileUpload1.FileName;

            string a = "insert into product values(@p_name,@p_img,@p_price,@p_des,@cat_name)";
            con.Open();
            SqlCommand cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p_img", abc);
            cmd.Parameters.AddWithValue("@p_price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p_des", TextBox3.Text);
            cmd.Parameters.AddWithValue("@cat_name", TextBox4.Text);

            int ans = cmd.ExecuteNonQuery();

            if (ans > 0)
            {
                
                MessageBox.Show("Product Add Successfully.....");
            }
            else
            {
                MessageBox.Show("Product Insertion Not Done!!......");
            }
            con.Close();*/
        }
    }
}