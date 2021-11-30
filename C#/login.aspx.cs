using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True";
        con.Open();
        //da = new SqlDataAdapter("select agent_id from agent_login where uname='"+TextBox1.Text+"' AND  pass='"+TextBox2.Text+"'", con);
        //da.Fill(dt);
        //dt.
        //DataRow dr = dt.Rows[1];
        cmd = new SqlCommand("select type from doc where docname='" + TextBox1.Text + "' AND  pass='" + TextBox2.Text + "'", con);
        dr=cmd.ExecuteReader();

        Session["name"] = " " + TextBox1.Text;
        if (dr.Read())
        {
            Session["type"] = dr[0];
            dr.Close();
            con.Close();
            Literal1.Text = "" + Session["type"];

            Response.Redirect("Advisor.aspx");
        }
        else
        {
            dr.Close();
            con.Close();
            Response.Redirect("NotExist.aspx");
            
        }

       // Literal1.Text=;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
    }
    }
