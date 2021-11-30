using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter da = null;
    SqlCommand cmd = null;

    protected void Page_Load(object sender, EventArgs e)
   {
        
    }


     protected void  Button1_Click(object sender, EventArgs e)
     {

        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True");

        con.Open();
        // con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\finalyearproject\\31may\\SaiPlanetWeb\\saipdb.mdf;Integrated Security=True;User Instance=True");

        SqlCommand cmd = new SqlCommand("insert into cont(cname,doctype,mb,email,msg) values('" + TextBox2.Text + "','" + DropDownDesignation.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','"+TextBox4.Text+"')", con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result > 0)
        {

            Literal2.Text = "Message Send successfully";
       
         }
        else
        {

            Literal2.Text = "Message  Don't Send successfully";
        }






    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty; 
        TextBox4.Text = String.Empty;
    }

    }
