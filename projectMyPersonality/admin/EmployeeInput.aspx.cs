using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

public partial class EmployeeInput : System.Web.UI.Page
{
    string empcode, empname, position, address, phone, gender;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RMNConnect"].ConnectionString);

    private void setData()
    {
        empcode = txEmpCode.Text;
        empname = txEmpName.Text;
        address = txAddress.Text;
        phone = txPhone.Text;
        position = ddlpos.SelectedItem.Value;
        gender = ddlgender.SelectedItem.Value;
    }

    private int saveData()
    {   
        int result = 0;
        try
        {
            this.setData();
            con.Open();
            string insert = "insert into employee(emp_code, emp_name, emp_position, emp_address, emp_phone, emp_gender) values(@code,@name,@pos,@address,@phone,@gender)";
            SqlCommand com = new SqlCommand(insert, con);
            com.Parameters.AddWithValue("@code", empcode);
            com.Parameters.AddWithValue("@name", empname);
            com.Parameters.AddWithValue("@pos", position);
            com.Parameters.AddWithValue("@address", address);
            com.Parameters.AddWithValue("@phone", phone);
            com.Parameters.AddWithValue("@gender", gender);
            result = com.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            Label2.Text = ex.Message;
        }
        return result;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btSubmit_Click(object sender, EventArgs e)
    {
        int result = this.saveData();
        if(result != 0) 
        {
            Label2.Text = "Data Berhasil Disimpan!!";
        }
    }
}