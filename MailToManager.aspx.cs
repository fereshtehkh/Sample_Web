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

public partial class MailToManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Application["TextBoxValue"] == null)
        {
            Response.Redirect("Mainfa.aspx");
        }

       txtCatId.Text = Application["TextBoxValue"].ToString();

       CategoriesDataTableAdapters.CategoriesTableAdapter ct = new CategoriesDataTableAdapters.CategoriesTableAdapter();
       CategoriesData.CategoriesDataTable cdt = ct.GetDataByCategoryID(int.Parse(txtCatId.Text.ToString()));

       Label1.Text = cdt[0].CategoryName.ToString();
            
        if (!MMailId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (MMailId.Value == -1)
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
            CuAdapter.GetDataBySearch(MMailId.Value);
    }

    private int? MMailId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }
    private SMailTiManagDataTableAdapters.MMailToMangerTableAdapter _adapter;
    private SMailTiManagDataTableAdapters.MMailToMangerTableAdapter CuAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new SMailTiManagDataTableAdapters.MMailToMangerTableAdapter();
            return _adapter;
        }
    }

    private SMailTiManagData.MMailToMangerRow DetailsViewDataSource
    {
        get
        {
            SMailTiManagData.MMailToMangerDataTable dt = (SMailTiManagData.MMailToMangerDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddMMailToMangerRow (string.Empty, string.Empty, string.Empty, false, string.Empty, int.Parse(txtCatId.Text));
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

    private string mDate
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].Controls[0]).Text;
        }
    }
    private string mTitle
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[1].Cells[1].Controls[0]).Text;
        }
    }

    private string mText
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[2].Cells[1].FindControl("TextBox1")).Text;
        }
    }


    private void Update()
    {
        DetailsViewDataSource.mDate  = mDate ;
        DetailsViewDataSource.mTitle  = mTitle ;
        DetailsViewDataSource.mText  = mText ;
        DetailsViewDataSource.mcheck  = false;
        DetailsViewDataSource.mAnswer  = "";
        DetailsViewDataSource.CategoryID  = int.Parse(txtCatId.Text);

        CuAdapter.Update(DetailsViewDataSource);
        GotoReadonlyMode();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Update();
    }

}
