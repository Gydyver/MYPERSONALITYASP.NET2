using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class adminAdd : System.Web.UI.Page
{
    string category, question, id, empname;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    private void checkUser()
    {
        empname = (string)Session["user"];
        if (empname == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        else
        {
            lblAdminName.Text = empname;
        }
    }

    private void setData()
    {
        category = ddCategory.SelectedItem.Text;
        question = tbQuestion.Text;
    }
    private int saveData()
    {
        int result = 0;
        try
        {
            this.setData();
            con.Open();
            string insert = "insert into question_table(category, question, question_status) values(@cat, @quest, '1')";
            SqlCommand com = new SqlCommand(insert, con);
            com.Parameters.AddWithValue("@cat", category);
            com.Parameters.AddWithValue("@quest", question);
            result = com.ExecuteNonQuery();
            //displayData();
            con.Close();

            ddCategory.Text = "";
            tbQuestion.Text = "";
        }
        catch (Exception ex)
        {
            lblResult.Text = ex.Message;
        }
        return result;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        checkUser();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (tbQuestion.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#cancelModal').modal({'backdrop':'static'});</script> ", false);
        }
        else
        {
            int result = this.saveData();
            if (result != 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#insertModal').modal({'backdrop':'static'});</script> ", false);
                ddCategory.Text = "";
                tbQuestion.Text = "";
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("adminLogin.aspx");
    }
}