using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // for Directory
using System.Data;//create DataTable

public partial class Candite_CV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Label_welcome.Text = Session["New"].ToString();
        }
        //creating dynamic table
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("size", typeof(string));
        dt.Columns.Add("type", typeof(string));
        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
        {
            FileInfo fi = new FileInfo(strFile);//retrive all info about file
            dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    // get file extension as string
    private string GetFileTypeByExtension(string ext)
    {
        switch (ext.ToLower())
        {
            case ".docx":
            case ".doc":
                return "Microsoft Word Document";
            case ".xlsx":
            case ".xls":
                return "Microsoft Excel Document";
            case ".txt":
                return "Text Document";
            case ".jpg":
            case ".png":
                return "Image";
            default:
                return "Unknown";
        }
    }
    // for download the upload file
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "aplication/cotact - stream";
            Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);//e.commandArgument return file name 
            Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
            Response.End();
        }
    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}