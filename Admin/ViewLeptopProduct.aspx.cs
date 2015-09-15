using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillProducts();
        }
    }

    private void fillProducts()
    {
        GridViewLeptop.DataSource = new dbhandlerDataContext().SelectLeptopProducts();
        GridViewLeptop.DataBind();
    }
    protected void Select(object sender, GridViewSelectEventArgs e)
    {
        int proid = int.Parse(GridViewLeptop.DataKeys[e.NewSelectedIndex].Value.ToString());
        Response.Redirect("Update.aspx?proId=" + proid + "&type=Leptop");

    }
    protected void Delete(object sender, GridViewDeleteEventArgs e)
    {
        int proid = int.Parse(GridViewLeptop.DataKeys[e.RowIndex].Value.ToString());
        db.ProdctDelete(proid);
        fillProducts();       
    }
}