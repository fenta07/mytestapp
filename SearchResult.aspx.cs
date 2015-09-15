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
        if (Request.QueryString["proid"] != null)
        {
            GridView1.DataSource = db.SearchProduct(int.Parse(Request.QueryString["proid"].ToString()), Request.QueryString["keyword"].ToString());
            GridView1.DataBind();
        }
        else
        {

        }

    }
}