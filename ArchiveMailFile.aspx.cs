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

public partial class ArchiveMailFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        SetGridDataSource();

    }
    private void SetGridDataSource()
    {

        SMailTomembTableAdapters.SMailToMembTableAdapter ct1 = new SMailTomembTableAdapters.SMailToMembTableAdapter();
        grdMails.DataSource = ct1.GetDataByArchiveMail();
        grdMails.DataBind();
    }
  
 
    protected void grdMails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            string SsmId = grdMails.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;

            DetailsView2.Visible = true;
            grdFile.Visible = true;
            grdEmp.Visible = true;

            SMailTomembTableAdapters.SMailToMembTableAdapter ct1 = new SMailTomembTableAdapters.SMailToMembTableAdapter();
            DetailsView2.DataSource = ct1.GetDataBySearch(int.Parse(SsmId));
            DetailsView2.DataBind();

            SMailFileTableAdapters.SMailFileTableAdapter ct2 = new SMailFileTableAdapters.SMailFileTableAdapter();
            grdFile.DataSource = ct2.GetDataByQueryF(int.Parse(SsmId));
            grdFile.DataBind();

            SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ct3 = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
            grdEmp.DataSource = ct3.GetDataByQueryPr(int.Parse(SsmId));
            grdEmp.DataBind();
        }
    }

    protected void grdMails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string SsmId = grdMails.Rows[int.Parse(e.RowIndex.ToString())].Cells[0].Text;

        SMailTomembTableAdapters.SMailToMembTableAdapter ct3 = new SMailTomembTableAdapters.SMailToMembTableAdapter();
        DetailsView2.DataSource = ct3.GetDataBySearch(int.Parse(SsmId));
        DetailsView2.DataBind();

        SMailFileTableAdapters.SMailFileTableAdapter ct4 = new SMailFileTableAdapters.SMailFileTableAdapter();
        grdFile.DataSource = ct4.GetDataByQueryF(int.Parse(SsmId));
        grdFile.DataBind();

        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ct5 = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        grdEmp.DataSource = ct5.GetDataByQueryPr(int.Parse(SsmId));
        grdEmp.DataBind();

        DetailsView2.Visible = true;
        grdFile.Visible = true;
        grdEmp.Visible = true;

        // Delete Files
        SMailFileTableAdapters.SMailFileTableAdapter ct2 = new SMailFileTableAdapters.SMailFileTableAdapter();
        SMailFile.SMailFileDataTable cdt2 = (SMailFile.SMailFileDataTable)grdFile.DataSource;
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
        // Delete Files

        // Delete Members
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ct6 = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        SMailCodeAns.SMailAnswerDataTable cdt3 = (SMailCodeAns.SMailAnswerDataTable)grdEmp.DataSource;
        int cCount2 = int.Parse(cdt3.Count.ToString());
        if (cdt3.Count != 0)
        {
            int j = 0;
            do
            {
                cdt3[0].Delete();
                ct6.Update(cdt3);
                j = j + 1;
            }
            while (j != cCount2);

        }
        // Delete Members

        SMailTomembTableAdapters.SMailToMembTableAdapter ct1 = new SMailTomembTableAdapters.SMailToMembTableAdapter();
        grdMails.DataSource = ct1.GetDataByArchiveMail();
        SMailTomemb.SMailToMembDataTable cdt = (SMailTomemb.SMailToMembDataTable)grdMails.DataSource;
        cdt[e.RowIndex].Delete();
        SMailTomembTableAdapters.SMailToMembTableAdapter cta = new SMailTomembTableAdapters.SMailToMembTableAdapter();
        cta.Update(cdt);
        grdMails.DataBind();

        DetailsView2.Visible = false;
        grdFile.Visible = false;
        grdEmp.Visible = false;
    }
}
