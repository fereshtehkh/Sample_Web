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

public partial class ArchiveReqPart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
        {
            Response.Redirect("Mainfa.aspx");
        }

        txtCatId.Text = Application["TextBoxValue"].ToString();
        CategoriesDataTableAdapters.CategoriesTableAdapter ct = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        CategoriesData.CategoriesDataTable cdt = ct.GetDataByCategoryID(int.Parse(txtCatId.Text.ToString()));

        Label1.Text = cdt[0].CategoryName.ToString();

        SetGridDataSource();
    }


    private void SetGridDataSource()
    {
        ReqPartDataTableAdapters.ReqPartTableAdapter ct1 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
        grdMails.DataSource = ct1.GetDataBySrEmpPart(int.Parse(txtCatId.Text));
        grdMails.DataBind();

        DetailsView2.Visible = false;
    }


    protected void grdMails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            DetailsView2.Visible = true;
            grdDetail.Visible = true;
            Label2.Visible = true;
            string sReqPId = grdMails.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;

            ReqPartDataTableAdapters.ReqPartTableAdapter ct1 = new ReqPartDataTableAdapters.ReqPartTableAdapter();
            DetailsView2.DataSource = ct1.GetDataByManageSeeDet (int.Parse(sReqPId));
            DetailsView2.DataBind();
            RPartDetailDataTableAdapters.RPartDetailTableAdapter ct2 = new RPartDetailDataTableAdapters.RPartDetailTableAdapter();
            grdDetail.DataSource = ct2.GetDataBySearch (int.Parse(sReqPId));
            grdDetail.DataBind();


        }
    }
}
