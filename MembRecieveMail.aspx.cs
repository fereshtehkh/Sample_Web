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

public partial class MembRecieveMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
        {
            Response.Redirect("Mainfa.aspx");
        }
        else
        {
            txtCatId.Text = Application["TextBoxValue"].ToString();

            SetGridDataSource();
        }
    }


    private void SetGridDataSource()
    {
        SMailTomembTableAdapters.SMailToMembTableAdapter ct1 = new SMailTomembTableAdapters.SMailToMembTableAdapter();
        grdMails.DataSource = ct1.GetDataBySEmp(int.Parse(txtCatId.Text));
        grdMails.DataBind();

        //DetailsView2.Visible = false;
        //grdFile.Visible = false;
        //btnAnswer.Visible = false;
        //GridView1.Visible = false;

    }

  
    protected void grdMails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            DetailsView2.Visible = true;
            grdFile.Visible = true;
            btnAnswer.Visible = true;
            GridView1.Visible = false;
            string SsmId = grdMails.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
            txtSmId.Text = SsmId.ToString();

            SMailTomembTableAdapters.SMailToMembTableAdapter ct1 = new SMailTomembTableAdapters.SMailToMembTableAdapter();
            DetailsView2.DataSource = ct1.GetDataBySearch(int.Parse(SsmId));
            DetailsView2.DataBind();

            SMailFileTableAdapters.SMailFileTableAdapter ct2 = new SMailFileTableAdapters.SMailFileTableAdapter();
            grdFile.DataSource = ct2.GetDataByQueryF(int.Parse(SsmId));
            grdFile.DataBind();


        }
    }


    protected void btnAnswer_Click(object sender, EventArgs e)
    {
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ctS = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        GridView1.DataSource = ctS.GetDataBySMIdCat(int.Parse(txtSmId.Text), int.Parse(txtCatId.Text));
        GridView1.DataBind();
        GridView1.Visible = true;


    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ctS = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        GridView1.DataSource = ctS.GetDataBySMIdCat(int.Parse(txtSmId.Text), int.Parse(txtCatId.Text));
        GridView1.DataBind();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string  SAnswer;
        bool SchkAns;
        SchkAns = ((CheckBox )GridView1.Rows[GridView1.EditIndex].Cells[0].Controls[0]).Checked ;
        SAnswer = ((TextBox)GridView1.Rows[GridView1.EditIndex].Cells[1].FindControl("TextBox1")).Text;
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter cta = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ctS = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        GridView1.DataSource = ctS.GetDataBySMIdCat(int.Parse(txtSmId.Text), int.Parse(txtCatId.Text));

        SMailCodeAns.SMailAnswerDataTable cdt = (SMailCodeAns.SMailAnswerDataTable)GridView1.DataSource;
        cdt[e.RowIndex].sChkR  = SchkAns ;
        cdt[e.RowIndex].SAnswer  = SAnswer ;
        cta.Update(cdt[e.RowIndex]);
        GridView1.EditIndex = -1;
        GridView1.DataBind();
        GridView1.Visible = true;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ctS = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        GridView1.DataSource = ctS.GetDataBySMIdCat(int.Parse(txtSmId.Text), int.Parse(txtCatId.Text));
        GridView1.DataBind();

    }
}
