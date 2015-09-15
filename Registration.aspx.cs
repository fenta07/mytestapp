using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcity.DataSource = db.SelectCitywithState(int.Parse(ddlstate.SelectedValue.ToString()));
        ddlcity.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            db.UserInsert(fname.Text,lname.Text,rdbgender.SelectedValue.ToString(),ddlstate.SelectedValue.ToString(),ddlcity.SelectedValue.ToString(),txtpin.Text,txtaddress.Text,txtmobile.Text,txtemail.Text,txtpass.Text,"yes");
            Session["user"] = txtemail.Text;
            Response.Redirect("VerifyUser.aspx");
            Label2.Text = "User Successfully Registration";
        }
        catch(Exception ee)
        {
            Label2.Text = ee.Message;
        }
    }
}