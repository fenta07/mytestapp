using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageLocation : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    adminDAL state_dal = new adminDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    public void FillGrid()
    {
        gridstate.DataSource = state_dal.StateSelect();
        gridstate.DataBind();
        gridcity.DataSource = state_dal.CitySelect();
        gridcity.DataBind();
    }

    protected void btnstate_Click(object sender, EventArgs e)
    {
        try
        {
            db.StateInsert(txtstate.Text);
            lblmsg.Text = "State Saved!";
            FillGrid();
        }
        catch
        {
            lblmsg.Text = "Server Side Error Plz Try Again!";
        }
        txtstate.Text = null;
        txtcity.Text = null;
    }
    protected void StateUpdate(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            //step 1
            //Get all object(Controls) from gridview
            //textbox for scatname
            //ddl for catid
            TextBox tn = (TextBox)gridstate.Rows[e.RowIndex].FindControl("TextBox1");

            db.StateUpdate(int.Parse(gridstate.DataKeys[e.RowIndex].Value.ToString()), tn.Text);

            gridstate.EditIndex = -1;
            FillGrid();
            lblmsg.Text = "Update!";
        }
        catch (Exception ee)
        {
            lblmsg.Text = ee.Message;
        }
    }
    protected void StateEdit(object sender, GridViewEditEventArgs e)
    {
        gridstate.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void StateEditCancel(object sender, GridViewCancelEditEventArgs e)
    {
        gridstate.EditIndex = -1;
        FillGrid();
    }
    protected void StateDelete(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(gridstate.DataKeys[e.RowIndex].Value.ToString());
        db.StateDelete(id);
        lblmsg.Text = "Deleting Sucessfully!";
        FillGrid();
    }
    protected void btncity_Click(object sender, EventArgs e)
    {
        try
        {
            db.CityInsert(txtcity.Text,int.Parse(ddlstate.SelectedValue));
            lblmsg.Text = "City Saved!";
            FillGrid();
        }
        catch
        {
            lblmsg.Text = "Server Side Error Plz Try Again!";
        }
        txtstate.Text = null;
        txtcity.Text = null;
    }
    protected void CityEdit(object sender, GridViewEditEventArgs e)
    {
        gridcity.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void CityCancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridcity.EditIndex = -1;
        FillGrid();
    }
    protected void CityUpadate(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            //step 1
            //Get all object(Controls) from gridview
            //textbox for scatname
            //ddl for catid
            TextBox tn = (TextBox)gridcity.Rows[e.RowIndex].Cells[0].Controls[0];
            //fro drop down we have name of control so we use this code to get contrl
            DropDownList ddl = (DropDownList)gridcity.Rows[e.RowIndex].FindControl("ddlcity1");
            db.CityUpdate(int.Parse(ddl.SelectedValue), tn.Text, int.Parse(gridcity.DataKeys[e.RowIndex].Value.ToString()));
            gridcity.EditIndex = -1;
            FillGrid();
            lblmsg.Text = "Update!";
        }
        catch (Exception ee)
        {
            lblmsg.Text = ee.Message;
        }

    }
    protected void CityDelete(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(gridcity.DataKeys[e.RowIndex].Value.ToString());
        db.CityDelete(id);
        FillGrid();
    }
   
}