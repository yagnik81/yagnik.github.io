using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(con);
        cn.Open();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("select * from profile where email='" + txtemail.Text + "' AND password='"+txtpass.Text+"' AND status='"+true+"'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["email"] = txtemail.Text;
            Response.Redirect("Home.aspx");
            
        }
        else
        {
            lblmsg.Text = "Invalid Email / Password ";
        }
        dr.Close();
    }
}