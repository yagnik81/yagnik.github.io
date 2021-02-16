using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminDeleteUser : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(con);
        cn.Open();
        setData();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("update profile set status='" + false + "' where id='" + DropDownList1.SelectedItem + "'", cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('User Delete....')</script>");
        txtname.Text = "";
        setData();
    }
    protected void setData()
    {
        while (DropDownList1.Items.Count > 0)
        {
            DropDownList1.Items.RemoveAt(0);
        }
        //DropDownList1.Items.Add("Select ID");
        cmd = new SqlCommand("select Id from profile where status='"+true+"' ",cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList1.Items.Add(dr[0].ToString());
        }
        dr.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("select name from profile where id='" + DropDownList1.SelectedItem + "' AND status='" + true + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtname.Text = dr[0].ToString();
        }
        dr.Close();
    }
}