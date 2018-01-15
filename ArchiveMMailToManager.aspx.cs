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

public partial class ArchiveMMailToManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        SetGridDataSource();
    }


    private void SetGridDataSource()
    {
        SMailTiManagDataTableAdapters.MMailToMangerTableAdapter ct1 = new SMailTiManagDataTableAdapters.MMailToMangerTableAdapter();
        grdMails.DataSource = ct1.GetDataByManagerSee();
        grdMails.DataBind();

    }


    protected void grdMails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            DetailsView2.Visible = true;
            string sMMailId = grdMails.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
            txtSmId.Text = sMMailId.ToString();

            SMailTiManagDataTableAdapters.MMailToMangerTableAdapter ct1 = new SMailTiManagDataTableAdapters.MMailToMangerTableAdapter();
            DetailsView2.DataSource = ct1.GetDataByManageDetail(int.Parse(sMMailId));
            DetailsView2.DataBind();


        }
    }
}
