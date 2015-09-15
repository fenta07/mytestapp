using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmin_Click(object sender, EventArgs e)
    {
        
        try
        {
            db.FeedbackInsert(txtemail.Text,txtmobile.Text,ddlCategory.SelectedValue,txtmsg.Text);
            lblmsg.Text = "Feedback Sent";
        }
        catch
        {
            lblmsg.Text = "Server Side Error Plz Try Again!";
        }
        txtemail.Text = "";
        txtmobile.Text = "";
        txtmsg.Text = "";        
    }
}