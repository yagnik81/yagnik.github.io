using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
public partial class Home : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataReader dr;
    static string path, name, type, link;
    double dwn, dwn1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
            cn.Open();
            link = Request.Url.ToString();
        //    setdata();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "download")
        {
            //Response.Write("<script>alert('hiiiiii')</script>");
            
            cmd = new SqlCommand("select name,type,path from material where id='"+e.CommandArgument.ToString()+"'",cn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                name = dr[0].ToString();
                type = dr[1].ToString();
                path = dr[2].ToString();
            }
            dr.Close();
            cmd = new SqlCommand("select download from material where id='" + e.CommandArgument.ToString() + "'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dwn = Convert.ToDouble(dr[0].ToString());
                dwn1 = dwn + 1;
            }
            dr.Close();
            cmd = new SqlCommand("update material set download =" + dwn1 + " where id='" + e.CommandArgument.ToString() + "'", cn);
            cmd.ExecuteNonQuery();

            Response.ContentType = "pdf";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + name + "");
            Response.TransmitFile(Server.MapPath(path));
            Response.End();
            //Response.Redirect(link);
        }
    }  
}