using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    tbl_product proObj = new tbl_product();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["proId"] == null)
        {
            Response.Redirect("HomeUser.aspx");
        }
        else
        {
            if (Request.QueryString["type"].ToString().Equals("Mobile"))
            {
                pnlMobile.Visible = true;
                pnlComputer.Visible = false;
                pnlLeptop.Visible = false;
                pnlAccesseries.Visible = false;
                if (!IsPostBack)
                {
                    fillMobileProduct(int.Parse(Request.QueryString["proId"].ToString()));
                }
            }
            else if (Request.QueryString["type"].ToString().Equals("Computer"))
            {
                pnlMobile.Visible = false;
                pnlComputer.Visible = true;
                pnlLeptop.Visible = false;
                pnlAccesseries.Visible = false;
                if (!IsPostBack)
                {
                    fillComputerProduct(int.Parse(Request.QueryString["proId"].ToString()));
                }
            }
            else if (Request.QueryString["type"].ToString().Equals("Leptop"))
            {
                pnlMobile.Visible = false;
                pnlComputer.Visible = false;
                pnlLeptop.Visible = true;
                pnlAccesseries.Visible = false;
                if (!IsPostBack)
                {
                    fillLeptopProduct(int.Parse(Request.QueryString["proId"].ToString()));
                }
            }
            else if (Request.QueryString["type"].ToString().Equals("Accessories"))
            {
                pnlMobile.Visible = false;
                pnlComputer.Visible = false;
                pnlLeptop.Visible = false;
                pnlAccesseries.Visible = true;
                if (!IsPostBack)
                {
                    fillAccessoriesProduct(int.Parse(Request.QueryString["proId"].ToString()));
                }
            }
        }
    }

    private void fillMobileProduct(int p)
    {
        DetailsView1.DataSource = db.SelectMobileProductsById(p);
        DetailsView1.DataBind();
    }

    private void fillComputerProduct(int p)
    {
        DetailsView2.DataSource = db.SelectMobileProductsById(p);
        DetailsView2.DataBind();
    }

    private void fillLeptopProduct(int p)
    {
       DetailsView3.DataSource = db.SelectMobileProductsById(p);
       DetailsView3.DataBind();
    }
    private void fillAccessoriesProduct(int p)
    {
        DetailsView4.DataSource = db.SelectMobileProductsById(p);
        DetailsView4.DataBind();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        TextBox ProductName = (TextBox)DetailsView1.FindControl("txtprodname");
        DropDownList fkcomid = (DropDownList)DetailsView1.FindControl("ddlselectcompany");
        TextBox stock = (TextBox)DetailsView1.FindControl("txtstock");
        DropDownList fksid = (DropDownList)DetailsView1.FindControl("ddlsubcat");
        TextBox prize = (TextBox)DetailsView1.FindControl("txtprize");
        FileUpload filefrontimage = (FileUpload)DetailsView1.FindControl("filefrontimage");
        FileUpload filebackimage = (FileUpload)DetailsView1.FindControl("filebackimage");
        TextBox modelid = (TextBox)DetailsView1.FindControl("txtmodelid");
        TextBox modelname = (TextBox)DetailsView1.FindControl("txtmodelname");
        TextBox color = (TextBox)DetailsView1.FindControl("txtcolor");
        DropDownList touch = (DropDownList)DetailsView1.FindControl("ddltouch");
        TextBox simtype = (TextBox)DetailsView1.FindControl("txtsim");
        TextBox callfeature = (TextBox)DetailsView1.FindControl("txtcallfeat");
        TextBox cpu = (TextBox)DetailsView1.FindControl("txtcpu");
        TextBox os = (TextBox)DetailsView1.FindControl("txtos");
        TextBox ram = (TextBox)DetailsView1.FindControl("txtram");
        DropDownList java = (DropDownList)DetailsView1.FindControl("ddljava");
        TextBox processer = (TextBox)DetailsView1.FindControl("txtprocesser");
        TextBox size = (TextBox)DetailsView1.FindControl("txtdsize");
        TextBox frontcamera = (TextBox)DetailsView1.FindControl("txtfrontcamera");
        DropDownList bluethooth = (DropDownList)DetailsView1.FindControl("ddlbluethooth");
        DropDownList wifi = (DropDownList)DetailsView1.FindControl("ddlwifi");
        DropDownList _2g = (DropDownList)DetailsView1.FindControl("ddl2g");
        DropDownList _3g = (DropDownList)DetailsView1.FindControl("ddl3g");
        DropDownList gprs = (DropDownList)DetailsView1.FindControl("ddlgprs");
        TextBox backcamera = (TextBox)DetailsView1.FindControl("txtbackcamera");
        TextBox internalmemory = (TextBox)DetailsView1.FindControl("txtinternalmemory");
        TextBox externalmemory = (TextBox)DetailsView1.FindControl("txtextrnalmemory");
        TextBox weight = (TextBox)DetailsView1.FindControl("txtweight");
        TextBox batterytype = (TextBox)DetailsView1.FindControl("txtbattry");


        if (filefrontimage.HasFile && filebackimage.HasFile)
        {
            string serverpath = Server.MapPath("..") + "\\img\\" + filefrontimage.FileName;
            filefrontimage.SaveAs(serverpath);
            string urlfront = filefrontimage.FileName;

            string serverpath1 = Server.MapPath("..") + "\\img\\" + filebackimage.FileName;
            filebackimage.SaveAs(serverpath);
            string urlback = filebackimage.FileName;

            proObj = db.tbl_products.Single(data => data.pkprodid == int.Parse(DetailsView1.DataKey[0].ToString()));
            proObj.prodname = ProductName.Text;
            proObj.fkcomid = int.Parse(fkcomid.SelectedValue.ToString());
            proObj.fksid = int.Parse(fksid.SelectedValue.ToString());
            proObj.stock = stock.Text;
            proObj.prize = prize.Text;
            proObj.frontimage = urlfront;
            proObj.backimage = urlback;
            proObj.modalid = modelid.Text;
            proObj.modalname = modelname.Text;
            proObj.color = color.Text;
            proObj.touch = touch.SelectedValue.ToString();
            proObj.simtype = simtype.Text;
            proObj.callfeature = callfeature.Text;
            proObj.cpu = cpu.Text;
            proObj.os = os.Text;
            proObj.ram = ram.Text;
            proObj.java = java.Text;
            proObj.processer = processer.Text;
            proObj.displaysize = size.Text;
            proObj.frontcamera = frontcamera.Text;
            proObj.backcamera = backcamera.Text;
            proObj.bluethooth = bluethooth.SelectedValue.ToString();
            proObj.wifi = wifi.SelectedValue.ToString();
            proObj._2g = _2g.SelectedValue.ToString();
            proObj._3g = _3g.SelectedValue.ToString();
            proObj.gprs = gprs.SelectedValue.ToString();
            proObj.internalmemory = internalmemory.Text;
            proObj.externalmemory = externalmemory.Text;
            proObj.weight = weight.Text;
            proObj.batterytype = batterytype.Text;

            db.SubmitChanges();
            Response.Redirect("ViewMobileProduct.aspx");
        }
        
    }
    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddlsubcat = (DropDownList)DetailsView1.FindControl("ddlsubcat");
        DropDownList ddlcat = (DropDownList)DetailsView1.FindControl("ddlcat");
        ddlsubcat.DataSource = db.SelectscatwithCate(ddlcat.SelectedItem.Text);

        ddlsubcat.DataBind();
    }

 
}