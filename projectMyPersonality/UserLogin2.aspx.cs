using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class UserLogin2 : System.Web.UI.Page
{
    string username, email, userlast;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void setData()
    {
        //string[] keys = Request.Form.AllKeys;
        username = Request.Form["test[0].fullname"];
        //lbltestusername.Text = username;
        email = Request.Form["test[0].email"];
        //lbltestemail.Text = email;
        userlast = "";
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            this.setData();
            con.Open();
            string query = "select id_user from user_table where  user_email= @email";
            SqlCommand logincom = new SqlCommand(query, con);
            logincom.Parameters.AddWithValue("@email", email);
            SqlDataReader dr;
            dr = logincom.ExecuteReader();
            if (dr.Read())
            {
                string userid = dr[0].ToString();
                Session["userid"] = userid;
                Response.Redirect("user_resultdate.aspx", false);
                dr.Close();
            }
            else
            {
                dr.Close();
                lblError.Text = "data tidak ada";
                Response.Redirect("user_resultdate.aspx", false);
            }
            con.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        //Session["userid"] = "2";
        //Response.Redirect("User_ResultDate.aspx", false);
    }
}