using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_client : System.Web.UI.Page
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
        cmd.CommandText = "insert into Clients values ('" + C_name.Text + "', '" + R_sector.Text + "', '" + I_team.Text + "', '" + S_start.Text + "','" + S_end.Text + "','" + payment.Text + "')";
        cmd.ExecuteNonQuery();

        C_name.Text = "";
        R_sector.Text = "";
        S_start.Text = "";
        I_team.Text = "";
        S_end.Text = "";
        payment.Text = "";
        show();
    }
    public void show()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Clients";
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
        cmd.CommandText = "delete from Clients where id = " + Convert.ToInt32(idd.Text) + "";
        cmd.ExecuteNonQuery();
        idd.Text = "";
        show();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Clients set Name = '" + C_name.Text + "', Post  = '" + R_sector.Text + "', Salary_month = '" + S_start.Text + "', Receive_Date  = '" + S_end.Text + "', Salary= '" + I_team.Text + "',Bonus = '" + payment.Text + "' where id = " + Convert.ToInt32(idd) + "";
        cmd.ExecuteNonQuery();
        C_name.Text = "";
        R_sector.Text = "";
        S_start.Text = "";
        I_team.Text = "";
        S_end.Text = "";
        payment.Text = "";
        show();
    }

    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}