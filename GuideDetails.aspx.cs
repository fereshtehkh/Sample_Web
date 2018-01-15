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

public partial class GuideDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!GId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (GId.Value == -1)
                DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
    }

    private void GotoListPage()
    {
        Response.Redirect("Mainfa.aspx");
    }

    private void DataBindDetailsView()
    {
        DetailsView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        DetailsView1.DataSource =
            GuidsAdapter.GetDataBySearch(GId.Value);
    }

    private int? GId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private GuideDataTableAdapters.GuideTableAdapter _adapter;

    private GuideDataTableAdapters.GuideTableAdapter GuidsAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new GuideDataTableAdapters.GuideTableAdapter();
            return _adapter;
        }
    }

    private GuideData.GuideRow  DetailsViewDataSource
    {
        get
        {
            GuideData.GuideDataTable dt = (GuideData.GuideDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddGuideRow(string.Empty, string.Empty, new byte[] { });
            else
                return dt[0];
        }
    }


    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        if (DetailsView1.CurrentMode == DetailsViewMode.Insert && e.NewMode == DetailsViewMode.ReadOnly)
            GotoListPage();
        DetailsView1.ChangeMode(e.NewMode);
        DataBindDetailsView();
    }
    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        //DetailsViewDataSource.CategoryName = CategoryName;
        //DetailsViewDataSource.Description = Description;
        //CategoriesAdapter.Update(DetailsViewDataSource);
        //GotoReadonlyMode();
        Update();
    }

    private void GotoReadonlyMode()
    {
        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        DataBindDetailsView();
    }

    private string GTitle
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].Controls[0]).Text;
        }
    }

    private string GText
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[1].Cells[1].Controls[0]).Text;
        }
    }



    private void Update()
    {
        DetailsViewDataSource.GTitle = GTitle;
        DetailsViewDataSource.GText  = GText;

        GuidsAdapter.Update(DetailsViewDataSource);
        GotoReadonlyMode();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        //DetailsViewDataSource.CategoryName = CategoryName;
        //DetailsViewDataSource.Description = Description;
        //CategoriesAdapter.Update(DetailsViewDataSource);
        //GotoReadonlyMode();
        Update();
    }
    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        GuideData.GuideRow  r = DetailsViewDataSource;
        r.Delete();
        GuidsAdapter.Update(r);
        GotoListPage();
    }
}
