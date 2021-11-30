using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class patient : System.Web.UI.Page
{SqlConnection con = null;
    SqlCommand cmd, cmmd, upmd;
    SqlDataAdapter da, da1, da2;
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    SqlDataReader dr, dr1;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "" + Session["name"];
        
       
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True");
        con.Open();


        da = new SqlDataAdapter("select * from  advice where uname ='" + Label1.Text + "'", con);

        da.Fill(dt);
        DataRow dtr = dt.Rows[0];
        



        
        //TextBox2.Text = dtr[0].ToString();
      // TextBox1.Text = dtr[1].ToString();
      //  TextBox5.Text = dtr[2].ToString();
        TextBox2.Text = dtr[0].ToString();
        TextBox6.Text = dtr[1].ToString();
       TextBox8.Text = dtr[2].ToString();
        TextBox4.Text = dtr[3].ToString();
        // TextBox11.Text = dtr[9].ToString();
       //da1 = new SqlDataAdapter("select mob from doc where docname ='" + Label1.Text + "'", con);

        //da.Fill(dt);
       // DataRow dtr1 = dt1.Rows[0];
        //Label3.Text=dtr1[3].ToString();
        con.Close();
  
    }

    protected void  Button1_Click(object sender, EventArgs e)
{
        string strscript = "<script>" +
                                              "window.print()" +
                                              "</script>";
        Page.RegisterClientScriptBlock("ImageButton1_Click", strscript);

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("loginpe.aspx");


    }
}
