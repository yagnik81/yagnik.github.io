using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Request : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataReader dr;
    string path;
    double dwn, dwn1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
            cn.Open();
            cmd = new SqlCommand("select * from profile where email='"+Session["email"].ToString()+"'",cn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtname.Text = dr[1].ToString();
                txtemail.Text = dr[2].ToString();
            }
            dr.Close();
            
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into request values('"+txtname.Text+"','"+txtemail.Text+"','"+txtmsg.Text+"','"+txtsubject.Text+"')",cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Send...')</script>");
    }
}