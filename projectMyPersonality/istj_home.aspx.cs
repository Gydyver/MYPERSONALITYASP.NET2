using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class istj_home : System.Web.UI.Page
{
    string username;
    private void checkUser()
    {
        username = (string)Session["userid"];
        if (username == null)
        {
            Response.Redirect("userLogin2.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.checkUser();
        Session.Abandon();
        //Response.Redirect("UserLogin.aspx");
    }
    protected void btnCareer_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTJCareer').modal({'backdrop':'static'});</script> ", false);
    }
    protected void btnRomantic_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTJRelationship').modal({'backdrop':'static'});</script> ", false);
    }
    protected void btnsw_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "<script>$('#ISTJsw').modal({'backdrop':'static'});</script> ", false);
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("UserLogin.aspx");
    }
}