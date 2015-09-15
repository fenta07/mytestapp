using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillProducts();
        }
    }
    private void fillProducts()
    {
        datamobile.DataSource = new dbhandlerDataContext().SelectMobHome();
        datamobile.DataBind();

        datacomputer.DataSource = new dbhandlerDataContext().SelectComHome();
        datacomputer.DataBind();

        dataleptop.DataSource = new dbhandlerDataContext().SelectLepHome();
        dataleptop.DataBind();

        dataaccessories.DataSource = new dbhandlerDataContext().SelectAccHome();
        dataaccessories.DataBind();
        
    }
    protected void txtmore_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductDetails.aspx");
    }
    protected void Select(object sender, EventArgs e)
    {
        
    }
    protected void Edit(object source, DataListCommandEventArgs e)
    {
        int proId = int.Parse(datamobile.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("ProductDetails.aspx?proId=" + proId + "&type=Mobile");
    }


    protected void Update(object source, DataListCommandEventArgs e)
    {
        int proId = int.Parse(datacomputer.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("ProductDetails.aspx?proId=" + proId + "&type=Computer");    
    }

    protected void Delete(object source, DataListCommandEventArgs e)
    {
        int proId = int.Parse(dataaccessories.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("ProductDetails.aspx?proId=" + proId + "&type=Accessories");
    }
    protected void ItemCommand(object source, DataListCommandEventArgs e)
    {
        int prodId = int.Parse(dataleptop.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("ProductDetails.aspx?proId=" + prodId + "&type=Leptop");
    }
}