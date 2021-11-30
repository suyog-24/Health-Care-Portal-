using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Advisor : System.Web.UI.Page
{
    SqlCommand cmd, cmmd, upmd;
    SqlDataAdapter da, da1, da2;
    DataTable dt = new DataTable();
    SqlDataReader dr, dr1;
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "" + Session["name"];
        Label2.Text = "" + Session["type"];

        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\onlineehmedical\\medical.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        
           
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from cont where doctype='" + Label2.Text + "' ", con);

        da.Fill(dt);
        gdImage.DataSource = dt;
        gdImage.DataBind();
        con.Close();

    }

    
    protected void ReplyMessage(object sender, GridViewDeleteEventArgs e)
    {

        string name;
        name = gdImage.Rows[e.RowIndex].Cells[0].Text;
        Response.Redirect("replay.aspx?ed=" + name);

    }

   
}