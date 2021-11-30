using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class replay : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd, cmmd, upmd;
    SqlDataAdapter da, da1, da2;
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    SqlDataReader dr, dr1;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "" + Session["name"];
        Label2.Text = "" + Session["type"];

        TextBox2.Text = Request.QueryString["ed"];
       // Session["n"] = "" + TextBox2.Text;
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True");
        con.Open();


        da = new SqlDataAdapter("select * from  cont where cname ='" + TextBox2.Text + "'", con);

        da.Fill(dt);
        DataRow dtr = dt.Rows[0];
        



        
        //TextBox2.Text = dtr[0].ToString();
      // TextBox1.Text = dtr[1].ToString();
      //  TextBox5.Text = dtr[2].ToString();
       TextBox6.Text = dtr[2].ToString();
       TextBox3.Text = dtr[3].ToString();
        TextBox7.Text = dtr[4].ToString();
        // TextBox11.Text = dtr[9].ToString();
       //da1 = new SqlDataAdapter("select mob from doc where docname ='" + Label1.Text + "'", con);

        //da.Fill(dt);
       // DataRow dtr1 = dt1.Rows[0];
        //Label3.Text=dtr1[3].ToString();
        con.Close();
  
    }

    protected void Button1_Click(object sender, EventArgs e)
    { 
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        cmd = new SqlCommand();

        cmd.CommandText = "insert into advice values('" + TextBox2.Text + "','" + Label1.Text + "','" + Label2.Text + "','" + TextBox4.Text + "')";
        cmd.Connection = con;
        int result = cmd.ExecuteNonQuery();
        con.Close();
        // con.Close();
        if (result > 0)
        {

            Label1.Text = " Send Advice successfully";
        }
        else
        {

            Label1.Text = " Advice Not Send";
        }


   

    }

    
    protected void Button2_Click(object sender, EventArgs e)
    {
       // TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox7.Text = String.Empty;
      
   
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("login.aspx");


    }
}