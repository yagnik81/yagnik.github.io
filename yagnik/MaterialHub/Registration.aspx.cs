using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    static bool exist = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(con);
        cn.Open();
    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from profile where email='" + txtemail.Text + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            exist = true;
        }
        else
        {
            exist = false;
        }
        dr.Close();
        if (exist)
        {
            lblmsg.Text = "Email Already Used..";
        }
        else
        {
            cmd = new SqlCommand("insert into profile (name,email,password,question,ans,status) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','"+ddQue.SelectedValue+"','"+txtans.Text+"','"+true+"')", cn);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Account Create Sucessfully Log In Now";
        }
    }
}