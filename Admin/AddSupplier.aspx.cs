using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    adminDAL com_dal = new adminDAL();
    /* protected void Page_Load(object sender, EventArgs e)
     {
        
             {
                 if (!IsPostBack)
                 {
                     FillGrid();
                 }

             }
     }
 
     protected void btnadd_Click(object sender, EventArgs e)
     {
         {
             try
             {
                 db.InsertSupplier(txtsuoacno.Text, txtsupplier.Text, txtemailid.Text, txtidentyid.Text, txtmobile.Text, txtissupplier.Text);
                 lblmsg.Text = "Saved!";
                 FillGrid();
             }
             catch
             {
                 lblmsg.Text = "Server Side Error Plz Try Again!";
             }
             txtsuoacno.Text = null;
         }
     }*/





    protected void btnadd_Click(object sender, EventArgs e)
    {
        {
            try
            {
                db.InsertSupplier(txtsuoacno.Text, txtsupplier.Text, txtemailid.Text, txtidentyid.Text, txtmobile.Text, txtissupplier.Text);                
                lblmsg.Text = "Saved!";

            }
            catch
            {
                lblmsg.Text = "Server Side Error Plz Try Again!";
            }
            txtsuoacno.Text = null;
        }
    }
}