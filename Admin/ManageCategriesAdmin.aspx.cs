using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    adminDAL scat_dal = new adminDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        } 
    }

    public void FillGrid()
    {
        Gridsubcat.DataSource = scat_dal.Select();
        Gridsubcat.DataBind();
    }

    protected void Bunsave_Click(object sender, EventArgs e)
    {
        try
        {
            db.ScatInsert(txtscatname.Text,ddlcat.SelectedValue);
            lblmsg.Text = "Saved!";
            FillGrid();
        }
        catch
        {
            lblmsg.Text = "Server Side Error Plz Try Again!";
        }
        txtscatname.Text = null;
    }

    protected void scatcancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Gridsubcat.EditIndex = -1;
        FillGrid();
    }
    
    protected void gridscat_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(Gridsubcat.DataKeys[e.RowIndex].Value.ToString());

        FillGrid();
    }
    protected void scatEdit(object sender, GridViewEditEventArgs e)
    {
        Gridsubcat.EditIndex = e.NewEditIndex;
        FillGrid();
    }

    protected void scatUpdat(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            //step 1
            //Get all object(Controls) from gridview
            //textbox for scatname
            //ddl for catid
            TextBox tn = (TextBox)Gridsubcat.Rows[e.RowIndex].Cells[0].Controls[0];

            //fro drop down we have name of control so we use this code to get contrl
            DropDownList ddl = (DropDownList)Gridsubcat.Rows[e.RowIndex].FindControl("ddlcat");

            db.ScatUpdate(ddl.SelectedValue, tn.Text, int.Parse(Gridsubcat.DataKeys[e.RowIndex].Value.ToString()));
           
  
            Gridsubcat.EditIndex = -1;
            FillGrid();
            lblmsg.Text = "Update!";
        }
        catch (Exception ee)
        {
            lblmsg.Text = ee.Message;
        }
    }
    protected void scatDelete(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(Gridsubcat.DataKeys[e.RowIndex].Value.ToString());
        db.ScatDelete(id);
        lblmsg.Text = "Deleting!";
        FillGrid();
    }
}