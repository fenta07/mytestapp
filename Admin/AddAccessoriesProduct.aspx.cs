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

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            if (filefrontimage.HasFile && filebackimage.HasFile)
            {
                string serverpath = Server.MapPath("..") + "\\img\\" + filefrontimage.FileName;
                filefrontimage.SaveAs(serverpath);
                string urlfront = filefrontimage.FileName;

                string serverpath1 = Server.MapPath("..") + "\\img\\" + filebackimage.FileName;
                filebackimage.SaveAs(serverpath);
                string urlback = filebackimage.FileName;



                tbl_product proObj = new tbl_product();
                proObj.prodname = txtprodname.Text;
                proObj.fkcomid = int.Parse(ddlselectcompany.SelectedValue.ToString());
                proObj.fksid = int.Parse(ddlsubcat.SelectedValue.ToString());
                proObj.mandate = txtmanudate.Text;
                proObj.warryear = txtwarryear.Text;
                proObj.warrmonth = txtwarrmonth.Text;
                proObj.warrday = txtwarrday.Text;
                proObj.stock = txtstock.Text;
                proObj.prize = txtprize.Text;
                proObj.frontimage = urlfront;
                proObj.backimage = urlback;
                proObj.modalid = txtmodelid.Text;
                proObj.modalname = txtmodelname.Text;
                proObj.color = txtcolor.Text;
                proObj.weight = txtweight.Text;
                proObj.internalmemory = txtinternalmemory.Text;
                proObj.externalmemory = txtextrnalmemory.Text;
                proObj.batterytype = txtbattry.Text;
                proObj.batterycell = txtbattrycell.Text;
                proObj.frontcamera = txtfrontcamera.Text;
                proObj.displaysize = txtdsize.Text;

                db.tbl_products.InsertOnSubmit(proObj);
                db.SubmitChanges();

                lblmsg.Text = "Data Successfully Insert";
            }
        }
        catch (Exception ee)
        {
            lblmsg.Text = ee.Message;
        }
    }

    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlsubcat.DataSource = db.SelectscatwithCate(ddlcat.SelectedItem.Text);

        ddlsubcat.DataBind();
    }
}