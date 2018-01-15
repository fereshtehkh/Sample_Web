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

public partial class DEntryIso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        if (!IsoId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (IsoId.Value == -1)
                DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
    }

    private void GotoListPage()
    {
        Response.Redirect("ManagerMain.aspx");
    }

    private void DataBindDetailsView()
    {
        DetailsView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        DetailsView1.DataSource =   
            IsoAdaptor.GetDataBySearch(IsoId.Value);
    }

    private int? IsoId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private IsoDataTableAdapters.IsoTableAdapter _adapter;

    private IsoDataTableAdapters.IsoTableAdapter IsoAdaptor
    {
        get
        {
            if (_adapter == null)
                _adapter = new  IsoDataTableAdapters.IsoTableAdapter();
            return _adapter;
        }
    }

    private IsoData.IsoRow DetailsViewDataSource
    {
        get
        {
            IsoData.IsoDataTable dt = (IsoData.IsoDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddIsoRow (string.Empty );
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

 

    private string IsoText
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].FindControl("TextBox1")).Text;
        }
    }

   
   private void Update()
    {
        DetailsViewDataSource.IsoText  = IsoText;

        IsoAdaptor.Update(DetailsViewDataSource);
        GotoReadonlyMode();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Update();
    }

}
