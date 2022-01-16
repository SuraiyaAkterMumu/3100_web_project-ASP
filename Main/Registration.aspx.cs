using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
              
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Registration (Id, UserName, Email, Password, Country) values (@Id, @Uname, @email, @password, @country) ";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Id", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString()); 
           // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
           
            string checkUser = "select count(*)  from Registration where UserName = '" + TextBoxUN.Text + "'";
            SqlCommand comm = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar());
            com.ExecuteNonQuery();
            if (temp != 0)
            {
                Response.Write("User Already Exists");
            }
            else
            { 
                Response.Redirect("Login.aspx"); 
            }
            conn.Close();
            //com.ExecuteNonQuery();
            //Response.Redirect("Manager.aspx");
            //Response.Write("Registration is successful");
            

            //conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }     
    }
    
}