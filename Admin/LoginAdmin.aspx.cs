using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AdminLogin : System.Web.UI.Page
{
    adminBAL balObj = new adminBAL();
    adminDAL dalObj = new adminDAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnssubmit_Click(object sender, EventArgs e)
    {
        balObj.adminName = txtuser.Text;
        balObj.Password = txtpass.Text;
        balObj.isLogin = 1;
        Session["name"] = txtuser.Text;
        Session["pass"] = txtpass.Text;
        switch (dalObj.a_Login(balObj))
        {
            case "WA":
                lblmsg.Text = "Wrong Password";
                break;
            case "AD":
                lblmsg.Text = "Already Exist";
                break;
            case "VD":             
                Response.Redirect("ChangePasswordAdmin.aspx");
                break;
        }
    }
}