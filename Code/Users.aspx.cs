using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["New"] != null)
        {
            B_logout.Visible = true;
            B_login.Visible = false;
            Label_welcome.Text += Session["New"].ToString();

        }
        //----------------------------------new for cookie----------------------------
        else if (Request.Cookies["UserInfo"] != null)
        {
            //TextBoxUserName.Text = cookie["name"];
            //TextBoxPassword.Text = cookie["pass"];
            Label_welcome.Text += Request.Cookies["UserInfo"]["name"].ToString();

        }
        //----------------------------------new for cookie----------------------------
        else
        {
            B_logout.Visible = false;
            B_login.Visible = true;
            Label_welcome.Text += "  viewer";
        }
    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        //----------------------------------new for cookie----------------------------
        if (Request.Cookies["UserInfo"] != null)
        {

            Session.Abandon();
        }
        //----------------------------------new for cookie----------------------------
        if (Session["new"] != null)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
            
        }
        
    }
    protected void B_login_Click(object sender, EventArgs e)
    {
        if (Session["new"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
}