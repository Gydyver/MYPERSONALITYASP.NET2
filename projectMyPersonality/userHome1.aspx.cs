using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userHome : System.Web.UI.Page
{
    string question, id_question, userlast;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    private void loadData()
    {
        try
        {
            con.Open();
            string query = "select * from question_table where question_status = 1";
            SqlCommand comm = new SqlCommand(query, con);
            SqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                id_question = dr[0].ToString();
                question = dr[2].ToString();
                Literal1.Text = Literal1.Text + "<br/><br/>" + question + "<br/>";
                Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='1'/>YES";
                Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='2'/>No";
                Literal1.Text = Literal1.Text + "<br/><br/>";
            }
            dr.Close();
            //con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.loadData();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ////while ()
        ////{

        ////}
        ////int i = 0;
        ////while ( "answer[]".a)
        ////{
        ////loadData();
        ////dari bapaknya awalan
        ////Label1.Text = Request["answer[4]"];
        ////dari bapaknya akhiran
        ////string[] answer = Request["answer[+ id_question +]"] ;
        ////}

        //var testList = new List<string>();
        ////string userlast;
        //foreach (string key in Request.Form.AllKeys)
        //{
        //    if (key.StartsWith("answer[") && key.EndsWith("]"))
        //    {
                //testList.Add(Request.Form[key]);
                //int result = 0;
                //int result2 = 0;
                try
                {
                    con.Open();
                    string tklastid = "SELECT TOP 1 id_user FROM user_table ORDER BY id_user DESC";
                    SqlCommand lastid = new SqlCommand(tklastid, con);
                    SqlDataReader dr2 = lastid.ExecuteReader();

                    dr2.Read();
                    userlast = dr2[0].ToString();
                    //    try
                    //    {
                    //        while (dr2.Read())
                    //        {
                    //            lblAnswer.Text = dr2.ToString();
                    //    userlast = dr2.ToString();
                    //}
                    //    }
                    //    catch (Exception exe)
                    //    {
                    //        lblAnswer.Text = exe.Message;
                    //    }
                    dr2.Close();
                    //string userlast = dr2[0].ToString();
                    
                }
                catch (Exception yu)
                {
                    lblSelect.Text = yu.Message;
                }
                finally
                {
                    con.Close();
                }

                int result2 = 0;
                try
                {
                    con.Open();
                    string insert = "insert into answer_table (id_user,id_question,answer) values (@iduser , @idquestion, '1')";
                    SqlCommand com = new SqlCommand(insert, con);
                    com.Parameters.AddWithValue("@iduser", userlast);
                    com.Parameters.AddWithValue("@idquestion", id_question);
                    //com.Parameters.AddWithValue("@answer", "answer[" + id_question + "]");
                    result2 = com.ExecuteNonQuery();
                    //con.Close();
                }
                catch (Exception ex)
                {
                    lblAnswer.Text = ex.Message;
                }
                finally
                {
                    con.Close();
                }
        //    }
        //}
        //Literal1.Text = testList[0];
        //Literal1.Text = testList[1];

    }
}