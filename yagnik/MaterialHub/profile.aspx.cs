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
    static string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(con);
        cn.Open();
        if (Session["email"].ToString() != null)
        {
            email = Session["email"].ToString();

        }
        else
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            getData();
        }
    }
    protected void getData()
    {
        cmd = new SqlCommand("select * from profile where email='"+email+"' AND status='"+true+"'",cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            txtname.Text = dr[1].ToString();
            txtemail.Text = dr[2].ToString();
            txtpass.Text = dr[3].ToString();
            ddQue.SelectedValue = dr[4].ToString();
            txtans.Text = dr[5].ToString();
        }
        dr.Close();
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        txtans.Enabled = true;
        txtemail.Enabled = true;
        txtname.Enabled = true;
        txtpass.Enabled = true;
        ddQue.Enabled = true;
        btnEdit.Visible = false;
        btnCancel.Visible = true;
        btnUpdate.Visible = true;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void clear()
    {
        txtans.Enabled = false;
        txtemail.Enabled = false;
        txtname.Enabled = false;
        txtpass.Enabled = false;
        ddQue.Enabled = false;
        btnEdit.Visible = true;
        btnCancel.Visible = false;
        btnUpdate.Visible = false;
        Response.Redirect("profile.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('"+txtname.Text+"')</script>");
        cmd = new SqlCommand("update profile set name='"+txtname.Text+"',email='"+txtemail.Text+"',password='"+txtpass.Text+"',question='"+ddQue.SelectedValue+"',ans='"+txtans.Text+"' where email='"+email+"'",cn);
        cmd.ExecuteNonQuery();
        Session["email"] = txtemail.Text;
        getData();
        clear();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update profile set status='"+false+"' where email='" + email + "'", cn);
        cmd.ExecuteNonQuery();
        Session["email"] = null;
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
}