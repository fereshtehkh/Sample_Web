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

public partial class DEntryBakhsh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");
        SetGridDataSourceBakhsh();
        if (!IsPostBack)
            DataBindGrid();

    }


    private void DataBindGrid()
    {
       GridView3.DataBind();
    }

   
    private void SetGridDataSourceBakhsh()
    {
        BakhshDataTableAdapters.BakhshnamehTableAdapter cta3 = new BakhshDataTableAdapters.BakhshnamehTableAdapter();
        GridView3.DataSource = cta3.GetData();
    }


    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        GridView3.DataBind();
    }
}
