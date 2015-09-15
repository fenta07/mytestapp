using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default4 : System.Web.UI.Page
{
    adminBAL balObj = new adminBAL();
    adminDAL dalObj = new adminDAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        balObj.adminName = Session["name"].ToString();
        balObj.Password = Session["pass"].ToString();
        balObj.isLogin = 0;

        switch (dalObj.a_Logout(balObj))
        {
            case "VD":
                Response.Redirect("LoginAdmin.aspx");
                break;
        }
    }
    protected void btnno_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Admin/ChangePasswordAdmin.aspx");
    }
}