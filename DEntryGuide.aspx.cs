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

public partial class DEntryGuide : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        SetGridDataSourceGuide();
   
        if (!IsPostBack)
            DataBindGrid();

    }


    private void DataBindGrid()
    {
        GridView1.DataBind();
     }

    private void SetGridDataSourceGuide()
    {
        GuideDataTableAdapters.GuideTableAdapter cta = new GuideDataTableAdapters.GuideTableAdapter();
        GridView1.DataSource = cta.GetData();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();

    }
}
