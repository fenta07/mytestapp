using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    userBAL balObj = new userBAL();
    userDAL dalObj = new userDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            log.Visible = false;
            lbmyac.Visible = true;
            Label1.Text = Session["user"].ToString();
        }
        else
        {
            lbmyac.Visible = false;
            log.Visible = true;
        }        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
     //   if (txtusername.Text == "admin" && txtpassword.Text == "admin")
      //  {
        //    Session["user"] = txtusername.Text;            
      //  }
        switch (dalObj.u_Login(balObj))
        {
            case "WA":
                lblmsg.Text = "Wrong Password";
                break;
            case "VD":
                Response.Redirect("Feedback.aspx");
                break;
        }
    }
    protected void lbmyac_Click(object sender, EventArgs e)
    {
        Session["user"] = null;        
    }

    protected void btnsearch0_Click(object sender, EventArgs e)
    {
        txtsearch.Text = "null";
    }
}
