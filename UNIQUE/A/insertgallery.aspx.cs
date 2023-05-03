using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace UNIQUE.A
{
    public partial class insertgallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");

            string str2 = Server.MapPath("~/Images/");
            string apppath = Request.PhysicalApplicationPath;

            if (FileUpload1.HasFile == true)
            {
                str2 = str2 + "\\" + FileUpload1.FileName;
                string extension = System.IO.Path.GetExtension(str2);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    FileUpload1.SaveAs(str2);
                    SqlCommand cmd = new SqlCommand("insert into Gallery (image) values('"+"../Images/" + FileUpload1.FileName.ToString() + "')", con);
                    con.Open();
                    int ans = cmd.ExecuteNonQuery();
                    con.Close();
                    if (ans > 0)
                    {
                        MessageBox.Show("Insert Successfully...");
                        //lblmsg.Text = "Add Successfully";

                    }
                }
                else
                {
                    //lblmsg.Text = "You doesn't selected jpg or jpeg or png format image.";
                    MessageBox.Show("Insertion Not Done!!!");
                    Response.Redirect("~/A/Gallery.aspx");
                    //conn.Close();
                }
                con.Close();
        }
        }
    }
}