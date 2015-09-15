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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlsubcat.DataSource = db.SelectscatwithCate(ddlcat.SelectedItem.Text);
        ddlsubcat.DataTextField = "sname";
        ddlsubcat.DataValueField = "pksid";
        ddlsubcat.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult.aspx?proid=" + int.Parse(ddlsubcat.SelectedValue.ToString()) + "&keyword=" + TextBox1.Text);
    }
}