using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

public partial class adminHome : System.Web.UI.Page
{
    List<string> testList = new List<string>();
    List<string> testList2 = new List<string>();
    string id, empname, quest, userpersonality,iduser,answerdate, id_uservar;
    int tes = 4;
    int answer, count, countpersonality;
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
    protected void Page_Load(object sender, EventArgs e)
    {
        checkUser();
        //countAnswer();
        dropdownCount();
        GetEmployeeChartInfo();
        GetPersonalityChartInfo();
    }


    protected void countAnswer()
    {
        

        try
        {
            Literal1.Text = "";
            con.Open();
            string cntAnswer = "SELECT question, answer, COUNT(answer) AS countanswer FROM answer_table where id_question = @id GROUP BY question, answer ORDER BY countanswer DESC;";
            SqlCommand sqlcnt = new SqlCommand(cntAnswer, con);
            sqlcnt.Parameters.AddWithValue("@id", tes);
            //sqlcnt.Parameters.AddWithValue("@date", answerdate);
            SqlDataReader dr = sqlcnt.ExecuteReader();
            while (dr.Read())
            {
                quest = dr[0].ToString();
                answer = Convert.ToInt32(dr[1]);
                count = Convert.ToInt32(dr[2]);
                Literal1.Text = Literal1.Text + "|" + quest + "| |" + answer + "| |" + count + "|";
            }
            dr.Close();
            con.Close();
        }
        catch (Exception exe)
        {
            Label1.Text = exe.Message;
        }
    }
    private void dropdownCount()
    {
        if (!this.IsPostBack)
        {
            con.Open();
            SqlCommand com = new SqlCommand("select id_question, question from question_table", con); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            DropDownList1.DataTextField = ds.Tables[0].Columns["question"].ToString(); // text field name of table dispalyed in dropdown
            DropDownList1.DataValueField = ds.Tables[0].Columns["id_question"].ToString();// to retrive specific  textfield name 
            DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            DropDownList1.DataBind();  //binding dropdownlist
            con.Close();
        }
    }

    private void GetEmployeeChartInfo()
    {
        con.Open();
            string qid = DropDownList1.SelectedValue;
            DataTable dt = new DataTable();
            //string iduser = testList[i];
            //string date = testList2[i];
            SqlCommand cmd = new SqlCommand("SELECT question, answer, COUNT(answer) AS countanswer FROM answer_table where id_question = @qid AND status = 1 GROUP BY question, answer ORDER BY countanswer DESC;", con);
            cmd.Parameters.AddWithValue("@qid", qid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            int c = 0; 
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i <dt.Rows.Count; i++)
            {
                int cobs = Convert.ToInt32(dt.Rows[i][2].ToString());
                 c = c + cobs;
            }
            for (int i = 0; i < dt.Rows.Count; i++)
            {
            //x[i] = dt.Rows[i][2].ToString();
                string a = dt.Rows[i][1].ToString();
                int b = 100 * Convert.ToInt32(dt.Rows[i][2]) / c;
                if (a.Equals("1"))
                {
                    x[i] = b + "%" + " Yes";
                }
                else
                {
                    x[i] = b + "%" + " No";
                }
                y[i] = Convert.ToInt32(dt.Rows[i][2]);
            }
            EmployeeChartInfo.Series[0].Points.DataBindXY(x, y);
            EmployeeChartInfo.Series[0].ChartType = SeriesChartType.Pie;
            EmployeeChartInfo.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            EmployeeChartInfo.Legends[0].Enabled = true;
    }

    private void GetPersonalityChartInfo()
    {
        DataTable dt2 = new DataTable();
        con.Open();
        SqlCommand cmd2 = new SqlCommand("SELECT user_personality, COUNT(user_personality) AS countpersonality FROM user_table GROUP BY user_personality ORDER BY countpersonality DESC", con);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        da2.Fill(dt2);
        con.Close();
        int c = 0;
        string[] x = new string[dt2.Rows.Count];
        int[] y = new int[dt2.Rows.Count];
        for (int j = 0; j<dt2.Rows.Count; j++)
        {
            int coba = Convert.ToInt32(dt2.Rows[j][1].ToString());
            c = c + coba;
        }

        for (int i = 0; i<dt2.Rows.Count; i++)
        {
            string a = dt2.Rows[i][0].ToString();
            Double personality = Convert.ToDouble(dt2.Rows[i][1]);
            Double b = 100 * personality / c;
            Double var = Math.Round(b, 2);
            if (a.Equals("ISTJ"))
            {
                x[i] = var + "%" + " ISTJ ";
            }
            else if (a.Equals("ESTJ"))
            {
                x[i] = var + "%" + " ESTJ ";
            }
            else if (a.Equals("INTJ"))
            {
                x[i] = var + "%" + " INTJ ";
            }
            else if (a.Equals("ENTJ"))
            {
                x[i] = var + "%" + " ENTJ ";
            }
            else if (a.Equals("ISFJ"))
            {
                x[i] = var + "%" + " ISFJ ";
            }
            else if (a.Equals("ESFJ"))
            {
                x[i] = var + "%" + " ESFJ ";
            }
            else if (a.Equals("INFJ"))
            {
                x[i] = var + "%" + " INFJ ";
            }
            else if (a.Equals("ENFJ"))
            {
                x[i] = var + "%" + " ENFJ ";
            }
            else if (a.Equals("ISTP"))
            {
                x[i] = var + "%" + " ISTP ";
            }
            else if (a.Equals("ESTP"))
            {
                x[i] = var + "%" + " ESTP ";
            }
            else if (a.Equals("INTP"))
            {
                x[i] = var + "%" + " INTP ";
            }
            else if (a.Equals("ENTP"))
            {
                x[i] = var + "%" + " ENTP ";
            }
            else if (a.Equals("ISFP"))
            {
                x[i] = var + "%" + " ISFP ";
            }
            else if (a.Equals("ESFP"))
            {
                x[i] = var + "%" + " ESFP ";
            }
            else if (a.Equals("INFP"))
            {
                x[i] = var + "%" + " INFP ";
            }
            else if (a.Equals("ENFP"))
            {
                x[i] = var + "%" + " ENFP ";
            }
            y[i] = Convert.ToInt32(dt2.Rows[i][1]);
        }
        PersonalityChartInfo.Series[0].Points.DataBindXY(x, y);
        PersonalityChartInfo.Series[0].ChartType = SeriesChartType.Pie;
        PersonalityChartInfo.ChartAreas["ChartArea2"].Area3DStyle.Enable3D = true;
        PersonalityChartInfo.Legends[0].Enabled = true;
        //EmployeeChartInfo.ChartAreas[0].AxisX.LabelStyle.Font = new System.Drawing.Font("Times New Roman", 20f);
    }
   
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("adminLogin.aspx");
    }
    protected void btnCount_Click(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            Label2.Text = DropDownList1.SelectedValue;
        }
    }
}