using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class adminLogin : System.Web.UI.Page
{
    string username, password, empid, empname;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    private void setData()
    {
        username = tbUsername.Text;
        password = tbPassword.Text;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            this.setData();
            con.Open();
            string query = "select emp_ID from account where username = @user AND password = @pass";
            SqlCommand logincomm = new SqlCommand(query, con);
            logincomm.Parameters.AddWithValue("@user", username);
            logincomm.Parameters.AddWithValue("@pass", password);
            SqlDataReader dr;
            dr = logincomm.ExecuteReader();
            if (dr.Read())
            {
                empid = dr[0].ToString();
                dr.Close();
                string query2 = "select emp_name from employee_table where emp_ID = @id";
                SqlCommand namacomm = new SqlCommand(query2, con);
                namacomm.Parameters.AddWithValue("@id", empid);
                SqlDataReader dr2;
                dr2 = namacomm.ExecuteReader();
                if (dr2.Read())
                {
                    empname = dr2[0].ToString();
                    Session["user"] = empname;
                    Response.Redirect("adminHome.aspx");
                }
                dr2.Close();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#loginModal').modal({'backdrop':'static'});</script> ", false);
            }
            con.Close();

        }
        catch (Exception ex)
        {
            lblLogin.Text = ex.Message;
        }
    }
}