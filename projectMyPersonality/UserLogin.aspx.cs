using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class UserLogin : System.Web.UI.Page
{
    string username, email, userlast;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);
    private void setData()
    {
        //string[] keys = Request.Form.AllKeys;
        username = Request.Form["test[0].fullname"];
        //lbltestusername.Text = username;
        email = Request.Form["test[0].email"];
        //lbltestemail.Text = email;
        userlast = "";
    }

        
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string script = "window.onload = function(){validation();};";
        ClientScript.RegisterStartupScript(this.GetType(), "validation", script, true);
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
                dr.Close();
                Session["userid"] = userid;
                Session["useremail"] = email;
                con.Close();
                Response.Redirect("User_Home.aspx",false);
            }
            else
            {
                dr.Close();
                int result = 0;
                string insert = "insert into user_table (user_name,user_email) values (@username , @email)";
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@username", username);
                com.Parameters.AddWithValue("@email", email);
                result = com.ExecuteNonQuery();
                try
                {
                    //con.Open();
                    string tklastid = "SELECT TOP 1 id_user FROM user_table ORDER BY id_user DESC";
                    SqlCommand lastid = new SqlCommand(tklastid, con);
                    SqlDataReader dr2 = lastid.ExecuteReader();
                    dr2.Read();
                    userlast = dr2[0].ToString();
                    lblError.Text = dr2[0].ToString();
                    Session["userid"] = userlast;
                    dr2.Close();
                    con.Close();
                }
                catch (Exception exe)
                {
                    lblError.Text = exe.Message;
                }
                finally
                {
                    Response.Redirect("User_Home.aspx", false);
                }
                //lempar ke halaman pertanyaan
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}