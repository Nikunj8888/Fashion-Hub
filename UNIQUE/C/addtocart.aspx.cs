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
using System.Windows.Controls;
using System.Windows;
using System.Drawing;
using System.Security.Cryptography.X509Certificates;

namespace UNIQUE.C
{
    public partial class addtocart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            
            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;

                dt.Columns.Add("p_Id");
                dt.Columns.Add("p_name");
                dt.Columns.Add("p_img");
                dt.Columns.Add("p_price");
                dt.Columns.Add("p_des");
                dt.Columns.Add("cat_name");
                dt.Columns.Add("totalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True";
                        SqlConnection con = new SqlConnection(mycon);
                        con.Open();
                        
                        String myquery = "select * from product where p_Id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["p_Id"] = ds.Tables[0].Rows[0]["p_Id"].ToString();
                        dr["p_name"] = ds.Tables[0].Rows[0]["p_name"].ToString();
                        dr["p_img"] = ds.Tables[0].Rows[0]["p_img"].ToString() ;
                        dr["p_price"] = ds.Tables[0].Rows[0]["p_price"].ToString();
                        dr["p_des"] = ds.Tables[0].Rows[0]["p_des"].ToString();
                        dr["cat_name"] = ds.Tables[0].Rows[0]["cat_name"].ToString();
                        
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["p_price"].ToString());
                        
                        dr["totalprice"]=price;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("~/C/addtocart.aspx");

                        con.Close();
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        
                        String mycon = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");
                        SqlConnection con = new SqlConnection(mycon);
                        con.Open();
                        
                        String myquery = "select * from product where p_Id=" + Request.QueryString["id"];
                        
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["p_Id"] = ds.Tables[0].Rows[0]["p_Id"].ToString();
                        dr["p_name"] = ds.Tables[0].Rows[0]["p_name"].ToString();
                        dr["p_img"] = ds.Tables[0].Rows[0]["p_img"].ToString();
                        dr["p_price"] = ds.Tables[0].Rows[0]["p_price"].ToString();
                        dr["p_des"] = ds.Tables[0].Rows[0]["p_des"].ToString();
                        dr["cat_name"] = ds.Tables[0].Rows[0]["cat_name"].ToString();
                        
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["p_price"].ToString());
                        
                        dr["totalprice"] = price;


                        dt.Rows.Add(dr);
                        
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                       
                        Session["buyitems"] = dt;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                
                        Response.Redirect("~/C/addtocart.aspx");


                        con.Close();
                    }
                }

            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                
                GridView1.DataSource = dt;
                
                GridView1.DataBind();
            
                if(GridView1.Rows.Count>0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }
            }
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            
            dt = (DataTable)Session["buyitems"];
            
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            
            return totalprice;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if(this.IsValid)
            {
                abc();
            }

            void abc()
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];

                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\PROJECT1\UNIQUE\UNIQUE\App_Data\Fashion.mdf;Integrated Security=True");

                    string query = "insert into orderdetail values(@pno,@name,@email,@contactno,@address,@pincode,@city,@state,@deliverytype)";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@contactno", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@address", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@pincode", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@deliverytype", RadioButtonList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@city", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@state", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@pno", dt.Rows[i]["p_Id"]);

                    cmd.ExecuteNonQuery();


                    con.Close();

                }
                Response.Redirect("~/C/thankyou.aspx");

            }




        }

       
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1 ; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string ddata;
                sr = Convert.ToInt32(dt.Rows[i]["p_Id"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                ddata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["p_Id"] = i;
                dt.AcceptChanges();

            }
            Session["buyitems"] = dt;
            Response.Redirect("addtocart.aspx");

        }
        
    }

}











