using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class profile : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string email="";
    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new SqlConnection(con);
        cn.Open();
        email = Session["email"].ToString();
        data1();
        MultiView1.ActiveViewIndex = 0;
    }

    protected void data1()
    {
        cmd = new SqlCommand("select * from profile where email='" + email + "'", cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
           
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            
            TextBox4.Text = dr[5].ToString();

            ViewState["nm"] = dr[1].ToString();
            ViewState["em"] = dr[2].ToString();
            ViewState["pass"] = dr[3].ToString();
            ViewState["qe"] = dr[4].ToString();
            ViewState["an"] = dr[5].ToString();


        }
        dr.Close();
 
    }


    protected void data()
    {
        
        txtname.Text = ViewState["nm"].ToString();
        txtemail.Text = ViewState["em"].ToString();
        txtpass.Text = ViewState["pass"].ToString();
       // txtque.SelectedValue = ViewState["qe"].ToString();
        txtans.Text = ViewState["an"].ToString();
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        data();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        
        Response.Write("<script>alert('"+txtname.Text+"')</script>");
        cmd = new SqlCommand("update profile set name='" + txtname.Text + "',email='" + txtemail.Text + "',password='" + txtpass.Text + "',question='" + txtque.SelectedItem.ToString() + "',ans='" + txtans.Text + "'", cn);
        cmd.ExecuteNonQuery();
        Session["email"] = txtemail.Text;
       Response.Redirect("profile.aspx");
    }
}