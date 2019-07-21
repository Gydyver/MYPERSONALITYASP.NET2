using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Choose_Page : System.Web.UI.Page
{
    public string username, tescoba;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //this.checkUser();
    }

    //private void checkUser()
    //{
    //    username = (string)Session["username"];
    //    if (username == null)
    //    {
    //        Response.Redirect("userLogin.aspx");
    //    }
    //}

    protected void btnTes_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserLogin.aspx", false);
    }
    protected void btnResult_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserLogin2.aspx", false);
    }

}