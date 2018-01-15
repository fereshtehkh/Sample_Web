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

public partial class ArchiveMReqPart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        SetGridDataSource();
    }


    private void SetGridDataSource()
    {
        ReqPartDataTableAdapters.ReqPartTableAdapter ct1 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
        grdMails.DataSource = ct1.GetDataByManageSeeP();
        grdMails.DataBind();
    }


    protected void grdMails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            DetailsView2.Visible = true;
            grdDetail.Visible = true;
            Label2.Visible = true;
            string sReqPId = grdMails.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
            txtSmId.Text = sReqPId.ToString();

            ReqPartDataTableAdapters.ReqPartTableAdapter ct1 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
            DetailsView2.DataSource = ct1.GetDataByManageSeeDet(int.Parse(sReqPId));
            DetailsView2.DataBind();

            RPartDetailDataTableAdapters.RPartDetailTableAdapter ct2 = new RPartDetailDataTableAdapters.RPartDetailTableAdapter();
            grdDetail.DataSource = ct2.GetDataBySearch (int.Parse(sReqPId));
            grdDetail.DataBind();
        }
    }
    protected void grdMails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sReqPId = grdMails.Rows[int.Parse(e.RowIndex.ToString())].Cells[0].Text;
        txtSmId.Text = sReqPId.ToString();

        ReqPartDataTableAdapters.ReqPartTableAdapter ct3 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
        DetailsView2.DataSource = ct3.GetDataByManageSeeDet(int.Parse(sReqPId));
        DetailsView2.DataBind();

        RPartDetailDataTableAdapters.RPartDetailTableAdapter ct4 = new RPartDetailDataTableAdapters.RPartDetailTableAdapter();
        grdDetail.DataSource = ct4.GetDataBySearch(int.Parse(sReqPId));
        grdDetail.DataBind();
        DetailsView2.Visible = true;
        grdDetail.Visible = true;

        RPartDetailDataTableAdapters.RPartDetailTableAdapter ct2 = new RPartDetailDataTableAdapters.RPartDetailTableAdapter();
        RPartDetailData.RPartDetailDataTable cdt2 = (RPartDetailData.RPartDetailDataTable)grdDetail.DataSource;
        int cCount = int.Parse(cdt2.Count.ToString());
        if (cdt2.Count != 0)
        {
            int i = 0;
            do
            {
                cdt2[0].Delete();
                ct2.Update(cdt2);
                i = i + 1;
            }
            while (i != cCount);

        }

        ReqPartDataTableAdapters.ReqPartTableAdapter ct1 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
        grdMails.DataSource = ct1.GetDataByManageSeeP();
        ReqPartData.ReqPartDataTable cdt = (ReqPartData.ReqPartDataTable)grdMails.DataSource;
        cdt[e.RowIndex].Delete();
        ReqPartDataTableAdapters.ReqPartTableAdapter cta = new ReqPartDataTableAdapters.ReqPartTableAdapter();
        cta.Update(cdt);
        grdMails.DataBind();
        DetailsView2.Visible = false;
        grdDetail.Visible = false;
    }
}
