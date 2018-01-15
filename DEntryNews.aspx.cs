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

public partial class DEntryNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        SetGridDataSourceNews();
        if (!IsPostBack)
            DataBindGrid();
    }


    private void DataBindGrid()
    {
        GridView2.DataBind();
    }

    private void SetGridDataSourceNews()
    {
        NewsDataTableAdapters.NewsTableAdapter cta = new NewsDataTableAdapters.NewsTableAdapter();
        GridView2.DataSource = cta.GetData();
    }


    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();

    }
}
