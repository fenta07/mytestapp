using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default3 : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    adminDAL com_dal = new adminDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        } 
    }

    public void FillGrid()
    {
        gridcom.DataSource = com_dal.CSelect();
        gridcom.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            db.ComInsert(TextBox1.Text);
            lblmsg.Text = "Saved!";
            FillGrid();
        }
        catch
        {
            lblmsg.Text = "Server Side Error Plz Try Again!";
        }
        TextBox1.Text = null;
    }
    protected void ComEdit(object sender, GridViewEditEventArgs e)
    {
        gridcom.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void ComCancel(object sender, GridViewCancelEditEventArgs e)
    {
        gridcom.EditIndex = -1;
        FillGrid();
    }
    protected void ComUpdate(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            //step 1
            //Get all object(Controls) from gridview
            //textbox for scatname
            //ddl for catid
            TextBox tn = (TextBox)gridcom.Rows[e.RowIndex].FindControl("TextBox2");

            db.ComUpdate(int.Parse(gridcom.DataKeys[e.RowIndex].Value.ToString()),tn.Text);

            gridcom.EditIndex = -1;
            FillGrid();
            lblmsg.Text = "Update!";
        }
        catch (Exception ee)
        {
            lblmsg.Text = ee.Message;
        }
    }
    protected void ComDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(gridcom.DataKeys[e.RowIndex].Value.ToString());
        db.ComDelete(id);
        lblmsg.Text = "Deleting!";
        FillGrid();
    }
}