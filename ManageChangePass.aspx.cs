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

public partial class ManageChangePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!ManageId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (ManageId.Value == -1)
                DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
    }

    private void GotoListPage()
    {
        Response.Redirect("MainFa.aspx");
    }

    private void DataBindDetailsView()
    {
        DetailsView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        DetailsView1.DataSource =
            CategoriesAdapter.GetDataBySearch (ManageId.Value);
    }

    private int? ManageId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private ManagerPassTableAdapters.ManagePassTableAdapter _adapter;

    private ManagerPassTableAdapters.ManagePassTableAdapter CategoriesAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new ManagerPassTableAdapters.ManagePassTableAdapter();
            return _adapter;
        }
    }
    private ManagerPass.ManagePassRow DetailsViewDataSource
    {
        get
        {
            ManagerPass.ManagePassDataTable dt = (ManagerPass.ManagePassDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddManagePassRow (string.Empty, string.Empty);
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
 
        Update();
    }

    private void GotoReadonlyMode()
    {
        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        DataBindDetailsView();
    }

    private string Usernam
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].Controls[0]).Text;
        }
    }

    private string password
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[1].Cells[1].Controls[0]).Text;
        }
    }
    private void Update()
    {
        DetailsViewDataSource.username = Usernam;
        DetailsViewDataSource.Pass  = password;


        CategoriesAdapter.Update(DetailsViewDataSource);
        GotoReadonlyMode();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Update();
    }


}
