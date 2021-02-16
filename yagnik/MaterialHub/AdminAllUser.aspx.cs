using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class AdminAllUser : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
        cn.Open();
        cmd = new SqlCommand("select id,name,email,password,question,ans from profile", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();




    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        id = e.CommandArgument.ToString();
        Response.Write("<script>alert('"+id+"')</script>");
    }
}