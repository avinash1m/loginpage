using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class My_Project_loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:58189/register.aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "SELECT * FROM [empolyeereg] WHERE [email]='" + TextBox1.Text.Trim() + "' AND [password]='"+TextBox2.Text+"'";
        SqlConnection connection = new SqlConnection("Data Source=BEATWAR;Initial Catalog=practice;Integrated Security=True");

        
        SqlCommand cmd = new SqlCommand(query, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        connection.Open();
        int i = cmd.ExecuteNonQuery();

        connection.Close();
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("dashbord.aspx");
        }
        else
        {
            Label1.Text = "Your username and word is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }

        
    }
}