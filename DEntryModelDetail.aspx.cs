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

public partial class DEntryModelDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        if (!ModelId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (ModelId.Value == -1)
                DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
    }

    private void GotoListPage()
    {
        Response.Redirect("DEntryModel.aspx");
    }

    private void DataBindDetailsView()
    {
        DetailsView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        DetailsView1.DataSource =
            CategoriesAdapter.GetDataBySearch(ModelId.Value);
    }

    private int? ModelId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private ModelsDataTableAdapters.ModelsTableAdapter _adapter;

    private ModelsDataTableAdapters.ModelsTableAdapter CategoriesAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new ModelsDataTableAdapters.ModelsTableAdapter();
            return _adapter;
        }
    }

    private ModelsData.ModelsRow  DetailsViewDataSource
    {
        get
        {
            ModelsData.ModelsDataTable dt = (ModelsData.ModelsDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddModelsRow (1,1,(string.Empty));
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

 
   
    private string MarkId
    {
        get
        {
            return ((DropDownList)DetailsView1.Rows[0].Cells[1].FindControl("ddlMark")).Text;
        }
    }
    private string SysId
    {
        get
        {
            return ((DropDownList)DetailsView1.Rows[1].Cells[1].FindControl("ddlSys")).Text;
        }
    }
    private string Model
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[2].Cells[1].Controls[0]).Text;
        }
    }

   
    private void Update()
    {
     
        DetailsViewDataSource.MarkId  = int.Parse(MarkId );
        DetailsViewDataSource.SysTId  = int.Parse(SysId );
        DetailsViewDataSource.Model = Model;

        CategoriesAdapter.Update(DetailsViewDataSource);
        GotoReadonlyMode();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Update();
    }
    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {

        ModelsData.ModelsRow r = DetailsViewDataSource;
        r.Delete();
        CategoriesAdapter.Update(r);
        GotoListPage();
    }


    protected string GetMarkName(int MarkId)
    {
        DropDownList1.DataBind();
        DropDownList1.SelectedValue = MarkId.ToString();
        return DropDownList1.SelectedItem.Text;
    }

    protected string GetSysName(int SysId)
    {
        DropDownList2.DataBind();
        DropDownList2.SelectedValue = SysId.ToString();
        return DropDownList2.SelectedItem.Text;
    }
}
