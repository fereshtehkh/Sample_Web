using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ManagerMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");
        else
        {
            SMailTiManagDataTableAdapters.MMailToMangerTableAdapter ct1=new SMailTiManagDataTableAdapters.MMailToMangerTableAdapter ();
            SMailTiManagData.MMailToMangerDataTable cdt1=ct1.GetDataByNoSee ();
            if (cdt1.Count > 0)
            {
                lblMail.Text = "نامه جديد از نمايندگان خود داريد لطفا به مراسلات از نمايندگان مراجعه کنيد";
                HyperLink1.Visible = true;
            }
            ReqPartDataTableAdapters.ReqPartTableAdapter ct2 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
            ReqPartData.ReqPartDataTable cdt2 = ct2.GetDataByManageSeeP();
            if (cdt2.Count > 0)
            {
                lblMail2.Text = "درخواست قطعه جديد از نمايندگان خود داريد لطفا به صفحه درخواست قطعه از نماينده مراجعه کنيد";
                HyperLink2.Visible = true;
            }
        }

    }
}
