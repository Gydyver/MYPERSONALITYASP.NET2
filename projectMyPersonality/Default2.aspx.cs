using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    //isinya id_question
    List<string> testList = new List<string>();
    List<string> testList2 =new List<string>();
    List<string> testList3 = new List<string>();
    public string question, id_question, userlast, category, answerfromdb, HasilAkhir, username, pass;
    //protected string HasilAkhir
    //{
    //    get;
    //    set;
    //}
    int Introvert, Extrovert, Sensing, Intuiting, Thinking, Feeling, Judging, Perceiving;
    

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    private void checkUser()
    {
        username = (string)Session["user"];
        if (username == null)
        {
            Response.Redirect("userLogin.aspx");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
            //int test = testList.Count();
            //Response.Write(test);
            //if (!this.IsPostBack)
            //{
            //int test2 = testList.Count();
            //this.checkUser();
            this.loadData();
            //testList = true;
            //int test3 = testList.Count();
        //}
    }

    private void loadData()
    {
        //kodingan utuk nampilin soal di aspx
        Literal1.Text = "";
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
                Literal1.Text = Literal1.Text + "<br/><br/><span style='font-family:good feeling sans demo;font-size:17px;'>" + question + "</span><br/>";
                Literal1.Text = Literal1.Text + "<label class='radio-inline' style='margin-left:-1%;font-family:good feeling sans demo; font-weight:bold; color: forestgreen;font-size:17px;'>YES</label><input type='radio' runat='server' name='answer[" + id_question + "]' value='1' style='margin-left:5px;'/>";
                Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='2' style='margin-left:20px;'/> <label class='radio-inline' style='font-family: Good Feeling Sans Demo; font-weight:bold; color: firebrick;font-size:17px;margin-left:-5px;'>NO</label>";
                 //style='margin-left:-1%;font-family:good feeling sans demo; font-weight:bold; color: forestgreen;font-size:17px;', style='margin-left:2%;margin-right:-1%;',  style='font-family:good feeling sans demo; font-weight:bold; color: firebrick;font-size:17px;'
                
                //testList = Add.id_question;
                //testList.Add(dr[id_question]);
                //testList.Add(id_question);
                Literal1.Text = Literal1.Text + "<br/><br/>";
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        //while ()
        //{

        //}
        //int i = 0;
        //while ( "answer[]".a)
        //{
        //loadData();
        //dari bapaknya awalan
        //Label1.Text = Request["answer[4]"];
        //dari bapaknya akhiran
        //string[] answer = Request["answer[+ id_question +]"] ;
        //}
        
        
        //int result = 0;
        //Kodingan untuk ngambil last inserted id
        try
        {
            con.Open();
            string tklastid = "SELECT TOP 1 id_user FROM user_table ORDER BY id_user DESC";
            SqlCommand lastid = new SqlCommand(tklastid, con);
            SqlDataReader dr2 = lastid.ExecuteReader();

            dr2.Read();
            userlast = dr2[0].ToString();
            Label1.Text = dr2[0].ToString();
            dr2.Close();
        }
        catch (Exception exe)
        {
            Label1.Text = exe.Message;
        }
        finally
        {
            con.Close();
        }
        //Kodingan untuk ngesave id_user, id_question, answer ke table answer_table
        con.Open();
        foreach (string key in Request.Form.AllKeys)
        {
            if (key.StartsWith("answer[") && key.EndsWith("]"))
            {
                //testList.Add(Request.Form[key]);
                //string test = key [new id_question]; 
                //string  = "answer[" + id_question + "]";
                //string id_questionnih = id_question;
                //int result2 = 0;
                //string insert = "insert into answer_table (id_user,id_question,answer) values (@iduser , @idquestion,@answer)";
                //SqlCommand com = new SqlCommand(insert, con);
                //com.Parameters.AddWithValue("@iduser", userlast);
                //com.Parameters.AddWithValue("@idquestion", 3);
                //com.Parameters.AddWithValue("@answer", Request[key]);
                //result2 = com.ExecuteNonQuery();

                //untuk ngambil indexnya di key jadi keynya di trim
                string trimmed = key.TrimStart('a','n','s','w','e','r','[');
                //ini untuk motong variable trimmed (dipotong bagian belakangnya
                string id_question = trimmed.TrimEnd(']');
                testList.Add(id_question);
                int result2 = 0;
                string insert = "insert into answer_table (id_user,id_question,answer) values (@iduser , @idquestion,@answer)";
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@iduser", userlast);
                com.Parameters.AddWithValue("@idquestion", id_question);
                com.Parameters.AddWithValue("@answer", Request[key]);
                result2 = com.ExecuteNonQuery();

            }
        }
        con.Close();
        //Kodingan untuk ngambil category per soal
        try
        {
            con.Open();
            for (int i =0; i <testList.Count; i++)
            {
                string id_question = testList[i] ;
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
            for (int i = 0; i < testList.Count; i++)
            {
                string id_question = testList[i];
                string queryanswer = "SELECT answer FROM answer_table WHERE id_question = @id_question AND id_user = @id_user";
                SqlCommand answerquery = new SqlCommand(queryanswer, con);
                answerquery.Parameters.AddWithValue("@id_question", id_question);
                answerquery.Parameters.AddWithValue("@id_user", userlast);
                SqlDataReader dr4 = answerquery.ExecuteReader();
                dr4.Read();
                answerfromdb = dr4[0].ToString();
                testList3.Add(answerfromdb);
                //testList2.Add(category);
                //Label1.Text = dr3[0].ToString();
                dr4.Close();
            }
        }
        catch(Exception exep)
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
            for (int i = 0; i < testList.Count; i++)
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
        if(Introvert > Extrovert)
        {
            HasilAkhir = HasilAkhir + "I";
        }
        else
        {
            HasilAkhir = HasilAkhir + "E";
        };
        if (Sensing > Intuiting)
        {
            HasilAkhir = HasilAkhir + "S";
        }
        else
        {
            HasilAkhir = HasilAkhir + "N";
        };
        if (Thinking> Feeling)
        {
            HasilAkhir = HasilAkhir + "T";
        }
        else
        {
            HasilAkhir = HasilAkhir + "F";
        };
        if (Judging > Perceiving)
        {
            HasilAkhir = HasilAkhir + "J";
        }
        else
        {
            HasilAkhir = HasilAkhir + "P";
        };
        Response.Write(HasilAkhir);
        proses();

    }

    private void proses()
    {
        string str = HasilAkhir;
        if (str == "ISTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTJModal').modal('show');</script> ", false);
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
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISFJModal').modal('show');</script> ", false);
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

    //   <script>
    //$(document).ready(function(){

    //           <% --var str = "<% Hasil%>"
    //           string str = <%= hasilakhirview;%>

    //           if (str == "ISTJ")
    //       {
    //			$('#ISTJModal').modal('show');
    //       }
    //       else if (str == "ESTJ")
    //       {
    //			$('#ESTJModal').modal('show');
    //       }
    //       else if (str == "INTJ")
    //       {
    //			$('#INTJModal').modal('show');
    //       }
    //       else if (str == "ENTJ")
    //       {
    //			$('#ENTJModal').modal('show');
    //       }
    //       else if (str == "ISFJ")
    //       {
    //			$('#ISFJModal').modal('show');
    //       }
    //       else if (str == "ESFJ")
    //       {
    //			$('#ESFJModal').modal('show');
    //       }
    //       else if (str == "INFJ")
    //       {
    //			$('#INFJModal').modal('show');
    //       }
    //       else if (str == "ENFJ")
    //       {
    //			$('#ENFJModal').modal('show');
    //       }
    //       else if (str == "ISTP")
    //       {
    //			$('#ISTPModal').modal('show');
    //       }
    //       else if (str == "ESTP")
    //       {
    //			$('#ESTPModal').modal('show');
    //       }
    //       else if (str == "INTP")
    //       {
    //			$('#INTPModal').modal('show');
    //       }
    //       else if (str == "ENTP")
    //       {
    //			$('#ENTPModal').modal('show');
    //       }
    //       else if (str == "ISFP")
    //       {
    //			$('#ISFPModal').modal('show');
    //       }
    //       else if (str == "ESFP")
    //       {
    //			$('#ESFPModal').modal('show');
    //       }
    //       else if (str == "INFP")
    //       {
    //			$('#INFPModal').modal('show');
    //       }
    //       else if (str == "ENFP")
    //       {
    //			$('#ENFPModal').modal('show');
    //       }
    //           <% --// echo "jawaban berhasil disimpan";
    //       });
    //    </ script > --%>

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("userLogin.aspx");
    }
}