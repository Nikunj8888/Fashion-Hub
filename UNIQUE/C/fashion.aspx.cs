using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIQUE.C
{
    public partial class fashion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            Session["addproduct"] = "false";
            if (!IsPostBack)
            {
                drp_cetegory();
            }
        }

        public void drp_cetegory()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from cetegory", con);
            cetegory.DataSource = cmd.ExecuteReader();
            cetegory.DataTextField = "cat_name";
            cetegory.DataValueField = "cat_id";
            cetegory.DataBind();
            cetegory.Items.Insert(0, "Product Category");
            con.Close();
        }

        protected void cetegory_SelectedIndexChanged(object sender, EventArgs e)
        {

            string query = "";
            string selecproduct = cetegory.SelectedItem.Text;
            if (selecproduct == "Product Category")
            {
                
                query = "select * from product";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader a = cmd.ExecuteReader();
                if (a.HasRows)
                {
                    DataList1.DataSource = a;
                    DataList1.DataBind();
                }
            }
            else
            {
                query = "select * from product where cat_name=@cat_name";

                SqlCommand sqlcomm = new SqlCommand(query, con);
                con.Open();
                sqlcomm.Parameters.AddWithValue("cat_name", cetegory.SelectedItem.Text.ToString());
                SqlDataReader sdr = sqlcomm.ExecuteReader();
                if (sdr.HasRows)
                {
                    DataList1.DataSource = sdr;
                    DataList1.DataBind();
                }
            }


            /*
            string query = "select * from product where cat_name=@cat_name";
            
            SqlCommand sqlcomm=new SqlCommand(query,con);
            con.Open();
            sqlcomm.Parameters.AddWithValue("cat_name", cetegory.SelectedItem.Text.ToString());
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            if(sdr.HasRows)
            {
                DataList1.DataSource = sdr;
                DataList1.DataBind();
            }
            
           
            con.Close();
        */




        }

        protected void img_Click(object sender, ImageClickEventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            string query = "select * from product where p_name like '%' + @p_name + '%' ";
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("p_name", TextBox1.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

       

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"]="true";
            Response.Redirect("~/C/addtocart.aspx?id="+e.CommandArgument.ToString());
        }


        /*
       protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
       {
           Session["addproduct"]=true;
           if (e.CommandName == "addtocart")
           {
               Response.Redirect("~/Client/addtocart.aspx" + " ");
           }
       }
*/

    }

}