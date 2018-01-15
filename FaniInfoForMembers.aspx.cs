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

public partial class FaniInfoForMembers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");
        SetGridDataSource();
        if (!IsPostBack)
            DataBindGrid();

    }


    private void DataBindGrid()
    {
        GridView1.DataBind();
    }

    private void SetGridDataSource()
    {
        ModelsDataTableAdapters.ModelsTableAdapter cta = new ModelsDataTableAdapters.ModelsTableAdapter();
        GridView1.DataSource = cta.GetDataByQueryModel();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        ModelsDataTableAdapters.ModelsTableAdapter cta1 = new ModelsDataTableAdapters.ModelsTableAdapter();
        GridView1.DataSource = cta1.GetDataByQueryModel();
        DataBindGrid();

        ddlMark.SelectedValue = "1";
        ddlSys.SelectedValue = "1";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            string sFlId = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
            TextBox2.Text = sFlId.ToString();

            txtNameM.Text = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[1].Text.ToString() + "  " + GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[2].Text.ToString() + "  " + GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[3].Text.ToString();
            string SMarkId = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[4].Text;
            FaniTypeDataTableAdapters.FaniTypeTableAdapter ct1 = new FaniTypeDataTableAdapters.FaniTypeTableAdapter();
            DropDownList1.DataSource = ct1.GetDataBySearch(int.Parse(SMarkId.ToString()));
            DropDownList1.DataBind();

            Label5.Visible = true;
            DropDownList1.Visible = true;
            btnFilterFani.Visible = true;
            btnAllFan.Visible = true;
            txtNameM.Visible = true;

            grdMWire.Visible = false;
        
            GrdFText.Visible = false;
            //AllFanInfo();
        }
    }
    protected void btnFilterFani_Click(object sender, EventArgs e)
    {
        FaniFileDataTableAdapters.FaniFileTableAdapter ct1 = new FaniFileDataTableAdapters.FaniFileTableAdapter();
        FaniTextDataTableAdapters.FaniTextTableAdapter ct2 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        grdMWire.DataSource = ct1.GetDataByFilter(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
        grdMWire.DataBind();
        grdMWire.Visible = true;
        GrdFText.DataSource = ct2.GetDataBySearch(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
        GrdFText.DataBind();
        GrdFText.Visible = true;

        grdMWire.Visible = true;

    
    }
    private void AllFanInfo()
    {

        FaniFileDataTableAdapters.FaniFileTableAdapter ct1 = new FaniFileDataTableAdapters.FaniFileTableAdapter();
        grdMWire.DataSource = ct1.GetDataByAll(int.Parse(TextBox2.Text.ToString()));
        grdMWire.DataBind();

        FaniTextDataTableAdapters.FaniTextTableAdapter ct2 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        GrdFText.DataSource = ct2.GetDataByGrdText(int.Parse(TextBox2.Text.ToString()));
        GrdFText.DataBind();

        GrdFText.Visible = true;
        grdMWire.Visible = true;


    }
    protected void btnAllFan_Click(object sender, EventArgs e)
    {
        AllFanInfo();
    }
    protected void btnSearchM_Click(object sender, EventArgs e)
    {
        if (ddlMark.SelectedValue != "")
        {
            ModelsDataTableAdapters.ModelsTableAdapter ctM = new ModelsDataTableAdapters.ModelsTableAdapter();
            GridView1.DataSource = ctM.GetDataByQueryMMark(int.Parse(ddlMark.SelectedValue));
            DataBindGrid();

        }
        if (ddlSys.SelectedValue != "1")
        {
            ModelsDataTableAdapters.ModelsTableAdapter ctM = new ModelsDataTableAdapters.ModelsTableAdapter();
            GridView1.DataSource = ctM.GetDataByQMarkSys(int.Parse(ddlMark.SelectedValue), int.Parse(ddlSys.SelectedValue));
            DataBindGrid();

        }
        if (ddlMark.SelectedValue == "1")
        {
            ModelsDataTableAdapters.ModelsTableAdapter cta1 = new ModelsDataTableAdapters.ModelsTableAdapter();
            GridView1.DataSource = cta1.GetDataByQueryModel();
            DataBindGrid();
        }
    }
   
}
