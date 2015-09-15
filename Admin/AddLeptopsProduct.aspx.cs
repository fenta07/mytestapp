using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default4 : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            if (filefrontimage.HasFile)
            {
                string serverpath = Server.MapPath("..") + "\\img\\" + filefrontimage.FileName;
                filefrontimage.SaveAs(serverpath);
                string urlfront = filefrontimage.FileName;

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
                proObj.port = txtport.Text;
                proObj.modalid = txtmodelid.Text;
                proObj.modalname = txtmodelname.Text;
                proObj.color = txtcolor.Text;
                proObj.lifestyle = txtlifestyle.Text;
                proObj.batterycell = txtbattterycell.Text;
                proObj.hardwareinterface = txthardwareinterface.Text;
                proObj.systemarchitutecture = txtsysarchite.Text;
                proObj.processer = txtprocessername.Text;
                proObj.harddisk = txtharddisk.Text;
                proObj.harddisk = txtharddisk.Text;
                proObj.frontcamera = txtwebcamera.Text;
                proObj.speaker = txtspeakers.Text;
                proObj.batterycell = txtbattterycell.Text;
                proObj.lockport = txtlockport.Text;
                proObj.os = txtos.Text;
                proObj.ram = txtram.Text;
                proObj.weight = txtweight.Text;
                proObj.graphicprocess = txtgraphicprocesser.Text;
                proObj.maxresoulution = txtmaxresolution.Text;
                proObj.bluethooth = ddlbluethooth.SelectedValue.ToString();
                proObj.wifi = ddlwifi.SelectedValue.ToString();
                
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