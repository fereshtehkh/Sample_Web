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

public partial class DEntryNewsDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        if (!NId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (NId.Value == -1)
                DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
    }

    private void GotoListPage()
    {
        Response.Redirect("DEntryNews.aspx");
    }

    private void DataBindDetailsView()
    {
        DetailsView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        DetailsView1.DataSource =
            NewsAdapter.GetDataBySearch(NId.Value);
    }

    private int? NId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private NewsDataTableAdapters.NewsTableAdapter _adapter;

    private NewsDataTableAdapters.NewsTableAdapter NewsAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new NewsDataTableAdapters.NewsTableAdapter();
            return _adapter;
        }
    }

    private NewsData.NewsRow DetailsViewDataSource
    {
        get
        {
            NewsData.NewsDataTable dt = (NewsData.NewsDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddNewsRow(string.Empty, string.Empty, new byte[] { });
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

    private string NewsT
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].FindControl("TextBox2")).Text;
        }
    }

    private string News
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[1].Cells[1].FindControl("TextBox1")).Text;
        }
    }

    private byte[] Picture
    {
        get
        {
            FileUpload fu = (FileUpload)DetailsView1.Rows[2].Cells[1].FindControl("fuPicture");
            if (fu.PostedFile == null || fu.PostedFile.ContentLength == 0)
                return null;
            byte[] ans = new byte[fu.PostedFile.ContentLength];
            fu.PostedFile.InputStream.Seek(0, System.IO.SeekOrigin.Begin);
            fu.PostedFile.InputStream.Read(ans, 0, fu.PostedFile.ContentLength);
            return ans;
        }
    }

    private void Update()
    {
        DetailsViewDataSource.NewsT = NewsT;
        DetailsViewDataSource.News = News;

        if (Picture != null)
            DetailsViewDataSource.NPic = Picture;

        NewsAdapter.Update(DetailsViewDataSource);
        GotoReadonlyMode();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Update();
    }
    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        NewsData.NewsRow r = DetailsViewDataSource;
        r.Delete();
        NewsAdapter.Update(r);
        GotoListPage();
    }
}
