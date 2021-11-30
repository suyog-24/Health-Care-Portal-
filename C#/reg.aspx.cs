using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class reg : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True");
   
    
  
    }

    protected void Butsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand();
       
        cmd.CommandText = "insert into reg values('" + TextEmoloyeeName.Text + "','" + TextPassword.Text + "','" + TextDOJ.Text + "','" + DropDownDesignation.SelectedItem.Text + "','"+RadioButtonList2.SelectedItem.Text+"','"+TextYourRefernce.Text+"','"+TextYourRefernce0.Text+"','"+TextYourRefernce1.Text+"')";
        cmd.Connection = con;
        int a = cmd.ExecuteNonQuery(); 

        if (a > 0)
           Label1.Text = "Candidate Register";
        Response.Redirect("contact.aspx");
        con.Close();



    }
}