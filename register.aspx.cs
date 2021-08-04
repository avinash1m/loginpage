using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Load();
            if (Request.QueryString["id"] != null)
            {
                lodgrid(Request.QueryString["id"]);
                string ids = Request.QueryString["id"];
            }
        }
        
    }

    private void Load()
    {
            string query = "select * from  empolyeereg";
            SqlConnection connection = new SqlConnection("Data Source=BEATWAR;Initial Catalog=practice;Integrated Security=True");

            connection.Open();

            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = connection;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds);
                        GridView1.DataSource = ds.Tables[0];
                        GridView1.DataBind();

                    }
                }
            }
            connection.Close();
    }
    private void lodgrid(string id)
    {
        SqlConnection connection = new SqlConnection("Data Source=BEATWAR;Initial Catalog=practice;Integrated Security=True");
        connection.Open();
        string query1 = "select * from [empolyeereg] where id='" + id + "' ";
        using (SqlCommand cmd = new SqlCommand(query1))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = connection;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    TextBox1.Text = ds.Tables[0].Rows[0]["name"].ToString();
                    password.Text = ds.Tables[0].Rows[0]["password"].ToString();
                    confirm.Text = ds.Tables[0].Rows[0]["confirm password"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["city"].ToString();
                    RadioButtonList1.Text = ds.Tables[0].Rows[0]["gender"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["email"].ToString();
                    //GridView1.DataBind();

                }
            }
        }
        connection.Close();
    }

        protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "INSERT INTO [dbo].[empolyeereg] ([name],[password],[confirm password],[city],[gender],[email]) VALUES ('" + TextBox1.Text + "', '" + password.Text + "', '" + confirm.Text + "', '" + TextBox4.Text + "', '" + RadioButtonList1.Text + "', '" + TextBox6.Text + "')";
        SqlConnection connection = new SqlConnection("Data Source=BEATWAR;Initial Catalog=practice;Integrated Security=True");

        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        Label1.Text = "data is saved";
        connection.Close();

        
        Response.Redirect("http://localhost:58189/register.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        
        {
            string query = ("UPDATE [dbo].[empolyeereg] set [name]='" + TextBox1.Text + "',[password]='" + password.Text + "',[confirm password]='" + confirm.Text + "',[city]='" + TextBox4.Text + "',[gender]='" + RadioButtonList1.Text + "',[email]='" + TextBox6.Text + "'  WHERE id='" + int.Parse(Request.QueryString["id"]) + "' ");
            SqlConnection connection = new SqlConnection("Data Source=BEATWAR;Initial Catalog=practice;Integrated Security=True");

            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);

            cmd.ExecuteNonQuery();

            Label2.Text = "data is updated";
            Response.Redirect("http://localhost:58189/register.aspx");

        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string query = ("DELETE FROM [dbo].[empolyeereg]  WHERE id='" + int.Parse(Request.QueryString["id"]) + "' ");
        SqlConnection connection = new SqlConnection("Data Source=BEATWAR;Initial Catalog=practice;Integrated Security=True");

        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);

        cmd.ExecuteNonQuery();
        Label3.Text = "data is deleted";
        Response.Redirect("http://localhost:58189/register.aspx");
        connection.Close();
    }



    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:58189/My%20Project/loginpage.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:58189/My%20Project/dashbord.aspx");
    }
}