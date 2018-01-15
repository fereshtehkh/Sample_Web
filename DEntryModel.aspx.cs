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

public partial class DEntryModel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        SetGridDataSource();
        ddlMark.DataBind();
        ddlSys.DataBind();

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
    protected void btnNew2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        btnNew2.Enabled = false;
        btnSave2.Enabled = true;
    }
    protected void btnSave2_Click(object sender, EventArgs e)
    {
        FaniTypeDataTableAdapters.FaniTypeTableAdapter cta = new FaniTypeDataTableAdapters.FaniTypeTableAdapter();
        FaniTypeData.FaniTypeDataTable cdt = cta.GetData();
        cdt.AddFaniTypeRow(TextBox3.Text.ToString(), int.Parse(ddlFani2.SelectedValue));
        cta.Update(cdt);
        btnNew2.Enabled = true;
        btnSave2.Enabled = false;

    }
}
