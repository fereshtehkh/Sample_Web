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

public partial class Mainfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SetGridDataSourceGuide();
        SetGridDataSourceNews();
        //SetGridDataSourceBakhsh();
        SetBakhsh();
        if (!IsPostBack)
            DataBindGrid();

    }


    private void DataBindGrid()
    {
        GridView1.DataBind();
        GridView2.DataBind();
        //GridView3.DataBind();
    }

    private void SetGridDataSourceGuide()
    {
        GuideDataTableAdapters.GuideTableAdapter cta = new GuideDataTableAdapters.GuideTableAdapter();
        GridView1.DataSource = cta.GetData();
    }
    private void SetGridDataSourceNews()
    {
        NewsDataTableAdapters.NewsTableAdapter cta2 = new NewsDataTableAdapters.NewsTableAdapter();
        GridView2.DataSource = cta2.GetData();
    }
    //private void SetGridDataSourceBakhsh()
    //{
    //    BakhshDataTableAdapters.BakhshnamehTableAdapter cta3 = new BakhshDataTableAdapters.BakhshnamehTableAdapter();
    //    GridView3.DataSource = cta3.GetData();
    //}
    private void SetBakhsh()
    {
        LHomeDataTableAdapters.LHomeTableAdapter cta4 = new LHomeDataTableAdapters.LHomeTableAdapter();
        DataList1.DataSource =cta4.GetDataByFinal ();
        DataList1.DataBind();

    }

    protected void btnEnter_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/aboutus.aspx");
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
