using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;

public partial class User_Home : System.Web.UI.Page
{
    //isinya id_question
    List<string> testList = new List<string>();
    List<string> testList2 = new List<string>();
    List<string> testList3 = new List<string>();
    // isinya question
    List<string> questionList = new List<string>();
    public string question, id_question, userlast, category, answerfromdb, HasilAkhir, username, tes, tes2,answerdate;
    public string date;
    int questiondata = 0;
    //protected string HasilAkhir
    //{
    //    get;
    //    set;
    //}
    int Introvert, Extrovert, Sensing, Intuiting, Thinking, Feeling, Judging, Perceiving;
    private void checkUser()
    {
        username = (string)Session["userid"];
        if (username == null)
        {
            Response.Redirect("userLogin.aspx");
        }
    }


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        //int test = testList.Count();
        //Response.Write(test);
        //if (!this.IsPostBack)
        //{
        //int test2 = testList.Count();
        checkUser();
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
                questionList.Add(question);
                Literal1.Text = Literal1.Text + "<br/><br/><span style='font-family:good feeling sans demo;font-size:17px;'>" + question + "</span><br/>";
                Literal1.Text = Literal1.Text + "<label class='radio-inline' style='margin-left:2px;font-family:good feeling sans demo; font-weight:bold; color: forestgreen;font-size:17px;'>YES</label><input type='radio' runat='server' name='answer[" + id_question + "]' value='1' style='margin-left:5px;' checked/>&nbsp;&nbsp;&nbsp;";
                Literal1.Text = Literal1.Text + "<input type='radio' runat='server' name='answer[" + id_question + "]' value='2'  style='margin-right:-5px;' checked/><label class='radio-inline' style='font-family:good feeling sans demo; font-weight:bold; color: firebrick;font-size:17px;'>NO</label>";
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

        try
        {
            //this.setData();
            con.Open();
            //iduser = Session["userid"].ToString();
            string query = "select TOP 1 answer_date from answer_table where id_user = @id_user ORDER BY answer_date desc";
            //string query = "select DISTINCT answer_date from answer_table where id_user = @iduser";
            SqlCommand comm = new SqlCommand(query, con);
            comm.Parameters.AddWithValue("@id_user", username);
            SqlDataReader dr = comm.ExecuteReader();
            if (dr.Read())
            {
                answerdate = dr[0].ToString();
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        int result4 = 0;
        con.Open();
        string update2 = "update answer_table set status=0 where id_user=@idus";
        SqlCommand com3 = new SqlCommand(update2, con);
        com3.Parameters.AddWithValue("@idus", username);
        result4 = com3.ExecuteNonQuery();
        con.Close();

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
        //try
        //{
        //    con.Open();
        //    string tklastid = "SELECT TOP 1 id_user FROM user_table ORDER BY id_user DESC";
        //    SqlCommand lastid = new SqlCommand(tklastid, con);
        //    SqlDataReader dr2 = lastid.ExecuteReader();

        //    dr2.Read();
        //    userlast = dr2[0].ToString();
        //    Label1.Text = dr2[0].ToString();
        //    dr2.Close();
        //}
        //catch (Exception exe)
        //{
        //    Label1.Text = exe.Message;
        //}
        //finally
        //{
        //    con.Close();
        //}
        //Penggantinya
        userlast = (string)Session["userid"];
        //for (int i = 0; i < questionList.Count; i++)
        //{
        //    string questionsave = questionList[i];
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
                    string trimmed = key.TrimStart('a', 'n', 's', 'w', 'e', 'r', '[');
                    //ini untuk motong variable trimmed (dipotong bagian belakangnya
                    string id_question = trimmed.TrimEnd(']');
                    //int id = Convert.ToInt32();
                    testList.Add(id_question);
                    int questiontotal = questionList.Count();
                    
                    if (questiondata != questiontotal)
                    {
                        string questionsave = questionList[questiondata];
                        date = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
                        int result2 = 0;
                        string insert = "insert into answer_table (id_user,id_question,question,answer,answer_date,status) values (@iduser , @idquestion,@question,@answer,@date,1)";
                        SqlCommand com2 = new SqlCommand(insert, con);
                        com2.Parameters.AddWithValue("@iduser", userlast);
                        com2.Parameters.AddWithValue("@idquestion", id_question);
                        com2.Parameters.AddWithValue("@question", questionsave);
                        com2.Parameters.AddWithValue("@answer", Request[key]);
                        com2.Parameters.AddWithValue("@date", date);
                        result2 = com2.ExecuteNonQuery();
                        questiondata++;
                    }


                    //}
                }
            }
            con.Close();
        //}
        //Kodingan untuk ngambil category per soal
        try
        {
            con.Open();
            for (int i = 0; i < testList.Count; i++)
            {
                string id_question = testList[i];
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
                string queryanswer = "SELECT answer FROM answer_table WHERE id_question = @id_question AND id_user = @id_user AND answer_date = @answerdate";
                SqlCommand answerquery = new SqlCommand(queryanswer, con);
                answerquery.Parameters.AddWithValue("@id_question", id_question);
                answerquery.Parameters.AddWithValue("@id_user", userlast);
                answerquery.Parameters.AddWithValue("@answerdate", date);
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
        if (Introvert > Extrovert)
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
        if (Thinking > Feeling)
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
        int result = 0;
        con.Open();
        string update = "update user_table set user_personality=@personality where id_user=@idus";
        SqlCommand com = new SqlCommand(update, con);
        com.Parameters.AddWithValue("@idus", userlast);
        com.Parameters.AddWithValue("@personality", HasilAkhir);
        result = com.ExecuteNonQuery();
        con.Close();
        proses();

    }

    private void proses()
    {
        string str = HasilAkhir;
        if (str == "ISTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTJModal').modal({'backdrop': 'static'});</script> ", false);
            tes = "https://www.16personalities.com/images/types/istj.png";
            tes2 = "ISTJ - LOGISTICIAN";
        }
        else if (str == "ESTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESTJModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/estj.png";
            tes2 = "ESTJ - EXECUTIVE";
        }
        else if (str == "INTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INTJModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/infj.png";
            tes2 = "INTJ - ARCHITECT";
        }
        else if (str == "ENTJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENTJModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/entj.png";
            tes2 = "ENTJ - COMMANDER";
        }
        else if (str == "ISFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISFJModal').modal({'backdrop': 'static'});</script> ", false);
            tes = "https://www.16personalities.com/images/types/isfj.png";
            tes2 = "ISFJ - DEVENDER";
        }
        else if (str == "ESFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESFJModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/esfj.png";
            tes2 = "ESFJ - CONSUL";
        }
        else if (str == "INFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INFJModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/infj.png";
            tes2 = "INFJ - ADVOCATE";
        }
        else if (str == "ENFJ")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENFJModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/enfj.png";
            tes2 = "ENFJ - PROTAGONIST";
        }
        else if (str == "ISTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/istp.png";
            tes2 = "ISTP - VIRTUOSO";
        }
        else if (str == "ESTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESTPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/estp.png";
            tes2 = "ESTP - ENTREPRENEUR";
        }
        else if (str == "INTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INTPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/intp.png";
            tes2 = "INTP - LOGICIAN";
        }
        else if (str == "ENTP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENTPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/entp.png";
            tes2 = "ENTP - DEBATER";
        }
        else if (str == "ISFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISFPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/isfp.png";
            tes2 = "ISFP - ADVENTURER";
        }
        else if (str == "ESFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ESFPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/esfp.png";
            tes2 = "ESFP - ENTERTAINER";
        }
        else if (str == "INFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#INFPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/infp.png";
            tes2 = "INFP - MEDIATOR";
        }
        else if (str == "ENFP")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ENFPModal').modal('show');</script> ", false);
            tes = "https://www.16personalities.com/images/types/enfp.png";
            tes2 = "ENFP - CAMPAIGNER";
        }

        //Fetching Email Body Text from EmailTemplate File.  
        string FilePath = "G:/KULIAH (CCIT)/SEMESTER 4/Quarter 8/DARI GYVER/projectMyPersonalityBeda2/projectMyPersonality/EmailTemplates/Hasil.html";
        StreamReader str2 = new StreamReader(FilePath);
        string MailText = str2.ReadToEnd();
        str2.Close();

        string useremail = (string)Session["useremail"];
        //tes = "../img/istj-logistician.sgv";

        //Replace [newusername] = signup user name   
        MailText = MailText.Replace("[userpersonality]", str);
        MailText = MailText.Replace("[gambar]", tes);
        MailText = MailText.Replace("[userperstext]", tes2);

        string from = "portofolio.mindy@gmail.com";// like username@server.com
        string to = useremail; //your To Mail
        string subject = "Your Test Result";
        string body = MailText;//"Your Personality is " + str;
        SendEmail(from, to, subject, body);

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("UserLogin.aspx");
    }

    public void SendEmail(string from, string to, string subject, string body)
    {
        try
        {
            MailMessage NewEmail = new MailMessage();
            NewEmail.From = new MailAddress(from);
            NewEmail.To.Add(new MailAddress(to));
            NewEmail.Subject = subject;
            NewEmail.Body = body;
            NewEmail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("portofolio.mindy@gmail.com", "mindy131507");
            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            // Send the mail message
            smtp.Send(NewEmail);
            //this.Labelnih.Text = "Email sent successful.";
        }
        catch (Exception e)
        {
            this.Label1.Text = e.Message;
            //this.Labelnih.Text = "Email sent failed";
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
}