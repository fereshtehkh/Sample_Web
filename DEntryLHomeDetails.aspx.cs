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

public partial class DEntryLHomeDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        if (!LId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (LId.Value == -1)
                DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
    }

    private void GotoListPage()
    {
        Response.Redirect("DEntryLHome.aspx");
    }

    private void DataBindDetailsView()
    {
        DetailsView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        DetailsView1.DataSource =
            LHomeAdapter.GetDataBySearch (LId.Value);
    }

    private int? LId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private LHomeDataTableAdapters.LHomeTableAdapter _adapter;

    private LHomeDataTableAdapters.LHomeTableAdapter LHomeAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new LHomeDataTableAdapters.LHomeTableAdapter();
            return _adapter;
        }
    }

    private LHomeData.LHomeRow  DetailsViewDataSource
    {
        get
        {
            LHomeData.LHomeDataTable dt = (LHomeData.LHomeDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddLHomeRow(string.Empty, string.Empty, new byte[] { },false,1);
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

    private string LHomeT
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].Controls[0]).Text;
        }
    }

    private string Description
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
   
    private bool LFinal
    {
        get
        {
            return ((CheckBox)DetailsView1.Rows[3].Cells[1].Controls[0]).Checked;
        }
    }
   

    private string LtId
    {
        get
        {
            return ((DropDownList)DetailsView1.Rows[4].Cells[1].FindControl("ddlType")).Text;
        }
    }
   
    private void Update()
    {
        DetailsViewDataSource.LHomeT = LHomeT ;
        DetailsViewDataSource.Descript  = Description;
        DetailsViewDataSource.LFinal  = LFinal ;
        DetailsViewDataSource.LtId  = int.Parse(LtId );

        if (Picture != null)
            DetailsViewDataSource.Lpic  = Picture;
        LHomeAdapter.Update (DetailsViewDataSource);
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

    protected string GetLTypeName(int LtId)
    {
        ddlType1.DataBind();
        ddlType1.SelectedValue = LtId.ToString();
        return ddlType1.SelectedItem.Text;
    }

}
