using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_ResultDate : System.Web.UI.Page
{
    List<string> testList = new List<string>();
    List<string> testList2 = new List<string>();
    List<string> testList3 = new List<string>();
    List<string> testList4 = new List<string>();
    public string question, id_question, userlast, category, answerfromdb, HasilAkhir, username,email, answer;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);
    public string iduser , answerdate;
    int Introvert, Extrovert, Sensing, Intuiting, Thinking, Feeling, Judging, Perceiving;


    protected void Page_Load(object sender, EventArgs e)
    {
        Literal1.Text = "";
        try
        {
            //this.setData();
            con.Open();
            iduser = Session["userid"].ToString();
            string query = "select TOP 1 answer_date from answer_table where id_user = @id_user ORDER BY answer_date desc";
            //string query = "select DISTINCT answer_date from answer_table where id_user = @iduser";
            SqlCommand comm = new SqlCommand(query, con);
            comm.Parameters.AddWithValue("@id_user", iduser);
            SqlDataReader dr = comm.ExecuteReader();
            if (dr.Read())
            {
                //id_question = dr[0].ToString();
                //question = dr[2].ToString();
                answerdate = dr[0].ToString();

               // Literal1.Text = Literal1.Text + answerdate;
                //Literal1.Text = Literal1.Text + "<br/><br/>" + question + "<br/>";
                //Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='1'/>YES";
                //Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='2'/>No";
                //testList = Add.id_question;
                //testList.Add(dr[id_question]);
                //testList.Add(answerdate);
                //Literal1.Text = Literal1.Text + "<br/>";
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        try
        {
           // this.setData();
            con.Open();
            iduser = (string)Session["userid"];
            string query = "select id_question,answer from answer_table where id_user = @id_user AND answer_date = @date";
            //string query = "select DISTINCT answer_date from answer_table where id_user = @iduser";
            SqlCommand comm = new SqlCommand(query, con);
            comm.Parameters.AddWithValue("@id_user", iduser);
            comm.Parameters.AddWithValue("@date", answerdate);
            SqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                //id_question = dr[0].ToString();
                //question = dr[2].ToString();
                
                id_question = dr[0].ToString();
                answer = dr[1].ToString();
                // Literal1.Text = Literal1.Text + answerdate;
                //Literal1.Text = Literal1.Text + "<br/><br/>" + question + "<br/>";
                //Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='1'/>YES";
                //Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='2'/>No";
                //testList = Add.id_question;
                //testList.Add(dr[id_question]);
                testList.Add(answer);
                testList4.Add(id_question);
                //Literal1.Text = Literal1.Text + "<br/>";
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        try
        {
            con.Open();
            for (int i = 0; i < testList4.Count; i++)
            {
                string id_question = testList4[i];
                string tkcategory = "SELECT category FROM question_table WHERE id_question = @id";
                SqlCommand categoryquery = new SqlCommand(tkcategory, con);
                categoryquery.Parameters.AddWithValue("@id", id_question);
                SqlDataReader dr3 = categoryquery.ExecuteReader();
                dr3.Read();
                category = dr3[0].ToString();
                testList2.Add(category);
                //Label1.Text = dr3[0].ToString();
                dr3.Close();
            }
        }
        catch (Exception exe)
        {
            Label1.Text = exe.Message;
        }
        finally
        {
            con.Close();
        }
        //Kodingan untuk ngambil jawabannya dari answer_table
        try
        {
            
            con.Open();
            for (int i = 0; i < testList4.Count; i++)
            {
                string id_question = testList4[i];
                string queryanswer = "SELECT answer FROM answer_table WHERE id_question = @id_question AND id_user = @id_user AND answer_date = @answerdate";
                SqlCommand answerquery = new SqlCommand(queryanswer, con);
                answerquery.Parameters.AddWithValue("@id_question", id_question);
                answerquery.Parameters.AddWithValue("@id_user", iduser);
                answerquery.Parameters.AddWithValue("@answerdate", answerdate);
                SqlDataReader dr4 = answerquery.ExecuteReader();
                dr4.Read();
                answerfromdb = dr4[0].ToString();
                testList3.Add(answerfromdb);
                //testList2.Add(category);
                //Label1.Text = dr3[0].ToString();
                dr4.Close();
            }
        }
        catch (Exception exep)
        {
            Label1.Text = exep.Message;
        }
        finally
        {
            con.Close();
        }
        Introvert = 0;
        Extrovert = 0;
        Sensing = 0;
        Intuiting = 0;
        Thinking = 0;
        Feeling = 0;
        Judging = 0;
        Perceiving = 0;
        try
        {
            for (int i = 0; i < testList4.Count; i++)
            {
                if (testList2[i] == "Introvert vs Extrovert")
                {
                    if (testList3[i] == "1")
                    {
                        Introvert = Introvert + 1;
                    }
                    else if (testList3[i] == "2")
                    {
                        Extrovert = Extrovert + 1;
                    }
                }
                else if (testList2[i] == "Sensing vs Intuiting")
                {
                    if (testList3[i] == "1")
                    {
                        Sensing = Sensing + 1;
                    }
                    else if (testList3[i] == "2")
                    {
                        Intuiting = Intuiting + 1;
                    }
                }
                else if (testList2[i] == "Thinking vs Feeling")
                {
                    if (testList3[i] == "1")
                    {
                        Thinking = Thinking + 1;
                    }
                    else if (testList3[i] == "2")
                    {
                        Feeling = Feeling + 1;
                    }
                }
                else if (testList2[i] == "Judging vs Perceiving")
                {
                    if (testList3[i] == "1")
                    {
                        Judging = Judging + 1;
                    }
                    else if (testList3[i] == "2")
                    {
                        Perceiving = Perceiving + 1;
                    }
                }
            }
        }
        catch (Exception except)
        {
            Label1.Text = except.Message;
        }

        HasilAkhir = "";
        if (Introvert > Extrovert)
        {
            HasilAkhir += "I";
        }
        else
        {
            HasilAkhir += "E";
        };
        if (Sensing > Intuiting)
        {
            HasilAkhir += "S";
        }
        else
        {
            HasilAkhir += "N";
        };
        if (Thinking > Feeling)
        {
            HasilAkhir += "T";
        }
        else
        {
            HasilAkhir += "F";
        };
        if (Judging > Perceiving)
        {
            HasilAkhir += "J";
        }
        else
        {
            HasilAkhir += "P";
        };
        Response.Write(iduser);
        Response.Write(HasilAkhir);
        proses();

    }

    private void proses()
    {
        string str = HasilAkhir;
        if (str == "ISTJ")
        {
            Response.Redirect("istj_home.aspx");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTJModal').modal({'backdrop': 'static'});</script> ", false);
        }
        else if (str == "ESTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESTJModal').modal('show');</script> ", false);
        }
        else if (str == "INTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INTJModal').modal('show');</script> ", false);
        }
        else if (str == "ENTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENTJModal').modal('show');</script> ", false);
        }
        else if (str == "ISFJ")
        {
            Response.Redirect("isfj_home.aspx");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISFJModal').modal({'backdrop': 'static'});</script> ", false);
        }
        else if (str == "ESFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESFJModal').modal('show');</script> ", false);
        }
        else if (str == "INFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INFJModal').modal('show');</script> ", false);
        }
        else if (str == "ENFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENFJModal').modal('show');</script> ", false);
        }
        else if (str == "ISTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTPModal').modal('show');</script> ", false);
        }
        else if (str == "ESTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESTPModal').modal('show');</script> ", false);
        }
        else if (str == "INTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INTPModal').modal('show');</script> ", false);
        }
        else if (str == "ENTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENTPModal').modal('show');</script> ", false);
        }
        else if (str == "ISFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISFPModal').modal('show');</script> ", false);
        }
        else if (str == "ESFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESFPModal').modal('show');</script> ", false);
        }
        else if (str == "INFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INFPModal').modal('show');</script> ", false);
        }
        else if (str == "ENFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENFPModal').modal('show');</script> ", false);
        }
    }
}