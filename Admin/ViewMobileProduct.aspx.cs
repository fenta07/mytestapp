using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
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
        GridViewMobile.DataSource = new dbhandlerDataContext().SelectMobileProducts();
        GridViewMobile.DataBind();
    }
    
    protected void Select(object sender, GridViewSelectEventArgs e)
    {
        int proid = int.Parse(GridViewMobile.DataKeys[e.NewSelectedIndex].Value.ToString());
        Response.Redirect("Update.aspx?proId=" + proid + "&type=Mobile");

    }
    protected void Delete(object sender, GridViewDeleteEventArgs e)
    {
       int proid = int.Parse(GridViewMobile.DataKeys[e.RowIndex].Value.ToString());
       db.ProdctDelete(proid);
       fillProducts();        
    }
}