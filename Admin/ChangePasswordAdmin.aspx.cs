using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default4 : System.Web.UI.Page
{
    adminBAL bal = new adminBAL();
    adminDAL dal = new adminDAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        Session["pass"] = txtnpass.Text;
        bal.adminName = Session["name"].ToString();
        bal.Password = txtopass.Text;       
        lblmsg.Text = dal.a_ChangePass(bal, txtnpass.Text);
    }
}