using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminUploadFile : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string fpath, spath;
    bool exist = false;
    double id=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(con);
        cn.Open();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        
    }
    protected double getId()
    {
        cmd = new SqlCommand("select * from material",cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
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
            cmd = new SqlCommand("select MAX(id) from material", cn);
            id = Convert.ToDouble(cmd.ExecuteScalar());
            id = id + 1;
        }
        else
        {
            id = 1;
        }
        return id;

        
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (txtname.Text == string.Empty)
        {
            lblmsg.Text = "Enter file Name";
        }
        else
        {
            if (FileUpload1.HasFile)
            {
               
                string contentType = FileUpload1.PostedFile.ContentType;//You may need it for validation
                string ext = System.IO.Path.GetExtension(this.FileUpload1.PostedFile.FileName).ToLower();
                if (ext == ".pdf")
                {
                    if (FileUpload2.HasFile)
                    {
                        System.IO.Directory.CreateDirectory(MapPath("~/material/"));
                        string ex = System.IO.Path.GetExtension(this.FileUpload2.PostedFile.FileName).ToLower();
                        if (ex == ".jpg" || ex == ".jpeg" || ex == ".png")
                        {
                            //double i = getId() + 1;
                            fpath = "~/material/" + getId() + ext;
                            spath = "~/screenshot/" + getId() + ex;
                            FileUpload1.SaveAs(MapPath(fpath));
                            FileUpload2.SaveAs(MapPath(spath));
                            //Response.Write("<script>alert('" + ex + "')</script>");
                            
                            cmd = new SqlCommand("insert into material values('" + contentType + "','" + txtname.Text + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "','Admin','0','" + fpath + "','" + DropDownList1.SelectedValue + "','" + spath + "','" + true + "')", cn);
                            cmd.ExecuteNonQuery();
                            lblmsg.Text = "File Upload Sucessfully";
                        }
                        else
                        {
                            lblmsg.Text = "Only JPG And PNG Image Allow..";
                        }
                    }
                    else
                    {
                        lblmsg.Text = "Upload Document Screenshot";
                    }
                }
                else
                {
                    lblmsg.Text = "Only PDF Allow ";
                }
            }
            else
            {
                lblmsg.Text = "Select File ";
            }
        }
    }
}