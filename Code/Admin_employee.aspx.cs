using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_employee : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            
            Label_welcome.Text = Session["New"].ToString();

        }
       
        
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        show();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into employee values ('"+E_name.Text+"', '"+post.Text+"', '"+ S_month.Text+"', '"+R_date.Text+"','"+salary.Text+"','"+bonus.Text+"')";
        cmd.ExecuteNonQuery();

        E_name.Text = "";
        post.Text = "";
        S_month.Text = "";
        salary.Text = "";
        R_date.Text = "";
        bonus.Text = "";
        show();
    }
    public void show()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from employee";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from employee where id = "+Convert.ToInt32(idd.Text)+" ";
        cmd.ExecuteNonQuery();
        
        show();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update employee set Name = '" + E_name.Text + "', Post  = '" + post.Text + "', Salary_month = '" + S_month.Text + "', Receive_Date  = '" + R_date.Text + "', Salary= '" + salary.Text + "',Bonus = '" + bonus.Text + "' where id = "+ Convert.ToInt32(idd)+ "";
        cmd.ExecuteNonQuery();
        E_name.Text = "";
        post.Text = "";
        S_month.Text = "";
        salary.Text = "";
        R_date.Text = "";
        bonus.Text = "";
        show();
    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}