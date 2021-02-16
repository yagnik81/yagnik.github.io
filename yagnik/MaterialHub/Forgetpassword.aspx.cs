using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Forgetpasswrd : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    bool exist=false;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(con);
        cn.Open();
    }
    protected void btnnext1_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("select * from profile where email='" + txtemail.Text + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblque.Text = dr[4].ToString();
            MultiView1.ActiveViewIndex = 1;
            lblmsg.Text = "";
        }
        else
        {
            lblmsg.Text = "Invalid Email ...";
        }
        dr.Close();
    }
    protected void btnnext2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from profile where email='" + txtemail.Text + "' AND ans='"+txtans.Text+"'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            
            MultiView1.ActiveViewIndex = 2;
            lblmsg.Text = "";
        }
        else
        {
            lblmsg.Text = "Invalid Answer ...";
        }
        dr.Close();
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update profile set password='"+txtpass.Text+"' where email='"+txtemail.Text+"'",cn);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Password Reset Sucessfuly Login Now";
    }
}