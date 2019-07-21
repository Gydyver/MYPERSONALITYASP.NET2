using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class adminUpdate : System.Web.UI.Page
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
        id = tbQuestionIDUpdate.Text;
        category = tbCategoryUpdate.Text;
        question = tbQuestionUpdate.Text;
    }

    private void displayData()
    {
        try
        {
            con.Open();
            DataSet ds = new DataSet();
            string query = "select id_question AS ID, category AS Category, question AS Question FROM question_table where question_status='1' ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds, "question");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            lblUpdate.Text = ex.Message;
        }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        checkUser();
        displayData();
    }

    private int updateData()
    {
        int result = 0;
        try
        {
            this.setData();
            con.Open();
            string update = "update question_table set question=@quest where id_question=@id";
            SqlCommand com = new SqlCommand(update, con);
            com.Parameters.AddWithValue("@id", id);
            com.Parameters.AddWithValue("@quest", question);
            result = com.ExecuteNonQuery();
            con.Close();
            this.displayData();
        }
        catch (Exception ex)
        {
            lblUpdate.Text = ex.Message;
        }
        return result;
    }

    private int deleteData()
    {

        int result = 0;
        try
        {
            this.setData();
            con.Open();
            string delete = "update question_table set question_status='0' where id_question=@id";
            SqlCommand com = new SqlCommand(delete, con);
            com.Parameters.AddWithValue("@id", id);
            result = com.ExecuteNonQuery();
            con.Close();
            this.displayData();
        }
        catch (Exception e)
        {
            lblDelete.Text = e.Message;
        }
        return result;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        tbQuestionIDUpdate.Text = row.Cells[0].Text;
        tbCategoryUpdate.Text = row.Cells[1].Text;
        tbQuestionUpdate.Text = row.Cells[2].Text;
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
        tbQuestionIDUpdate.Text = row.Cells[0].Text;
        tbCategoryUpdate.Text = row.Cells[1].Text;
        tbQuestionUpdate.Text = row.Cells[2].Text;
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
            e.Row.ToolTip = "Click to select this row";
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (tbQuestionUpdate.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#cancelModal').modal({'backdrop':'static'});</script> ", false);
        }
        else
        {
            int result = this.updateData();
            if (result != 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#updateModal').modal({'backdrop':'static'});</script> ", false);
                tbQuestionIDUpdate.Text = "";
                tbCategoryUpdate.Text = "";
                tbQuestionUpdate.Text = "";
            }
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (tbQuestionUpdate.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#cancelModal').modal({'backdrop':'static'});</script> ", false);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#askdeleteModal').modal({'backdrop':'static'});</script> ", false);
        }
    }

    protected void btnDelete1_Click(object sender, EventArgs e)
    {
        int result = this.deleteData();
        if (result != 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#deleteModal').modal({'backdrop':'static'});</script> ", false);
            tbQuestionIDUpdate.Text = "";
            tbCategoryUpdate.Text = "";
            tbQuestionUpdate.Text = "";
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("adminLogin.aspx");
    }
}