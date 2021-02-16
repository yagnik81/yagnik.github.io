using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class DeleteFile : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
            cn.Open();

            //    setdata();
        }
        else
        {
            Response.Redirect("Admin.aspx");
        }

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            cmd = new SqlCommand("Delete from material  where Id='"+e.CommandArgument.ToString()+"'",cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("AdminDeleteFile.aspx");
            //Response.Write("<script>alert('File Deleted...')</script>");
        }
    }
}