using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class My_Project_dashbord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("dashbord.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:58189/register.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginpage.aspx");
    }
}