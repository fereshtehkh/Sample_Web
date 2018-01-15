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

public partial class MembSeeInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
        {
            Response.Redirect("Mainfa.aspx");
        }

        txtCatId.Text  = Application["TextBoxValue"].ToString();

        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
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
            CategoriesAdapter.GetDataByCategoryID(int.Parse (txtCatId.Text.ToString ()));
    }

    //private int? CategoryID
    //{
    //    get
    //    {
    //        if (string.IsNullOrEmpty(Request.QueryString["id"]))
    //            return null;
    //        return int.Parse(Request.QueryString["id"]);
    //    }
    //}

    private CategoriesDataTableAdapters.CategoriesTableAdapter _adapter;

    private CategoriesDataTableAdapters.CategoriesTableAdapter CategoriesAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            return _adapter;
        }
    }

    private CategoriesData.CategoriesRow DetailsViewDataSource
    {
        get
        {
            CategoriesData.CategoriesDataTable dt = (CategoriesData.CategoriesDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddCategoriesRow(string.Empty, string.Empty, new byte[] { }, 1, 1, 1, string.Empty, string.Empty, false, false, false, false, false,string.Empty,"1");
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
 
        //Update();
    }

    private void GotoReadonlyMode()
    {
        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        DataBindDetailsView();
    }

  

    ////private byte[] Picture
    ////{
    ////    get
    ////    {
    ////        FileUpload fu = (FileUpload)DetailsView1.Rows[2].Cells[1].FindControl("fuPicture");
    ////        if (fu.PostedFile == null || fu.PostedFile.ContentLength == 0)
    ////            return null;
    ////        byte[] ans = new byte[fu.PostedFile.ContentLength];
    ////        fu.PostedFile.InputStream.Seek(0, System.IO.SeekOrigin.Begin);
    ////        fu.PostedFile.InputStream.Read(ans, 0, fu.PostedFile.ContentLength);
    ////        return ans;
    ////    }
    ////}
  

    ////private string Phone
    ////{
    ////    get
    ////    {
    ////        return ((TextBox)DetailsView1.Rows[4].Cells[1].Controls[0]).Text;
    ////    }
    ////}

    ////private string Address
    ////{
    ////    get
    ////    {
    ////        return ((TextBox)DetailsView1.Rows[5].Cells[1].Controls[0]).Text;
    ////    }
    ////}

    ////private bool Chiller
    ////{
    ////    get
    ////    {
    ////        return ((CheckBox)DetailsView1.Rows[6].Cells[1].Controls[0]).Checked;
    ////    }
    ////}
    ////private bool DishWash
    ////{
    ////    get
    ////    {
    ////        return ((CheckBox)DetailsView1.Rows[7].Cells[1].Controls[0]).Checked;
    ////    }
    ////}

    ////private bool smalthing
    ////{
    ////    get
    ////    {
    ////        return ((CheckBox)DetailsView1.Rows[8].Cells[1].Controls[0]).Checked;
    ////    }
    ////}

    ////private bool Heater
    ////{
    ////    get
    ////    {
    ////        return ((CheckBox)DetailsView1.Rows[9].Cells[1].Controls[0]).Checked;
    ////    }
    ////}
    ////private bool AirCond
    ////{
    ////    get
    ////    {
    ////        return ((CheckBox)DetailsView1.Rows[10].Cells[1].Controls[0]).Checked;
    ////    }
    ////}

    ////private string StId
    ////{
    ////    get
    ////    {
    ////        return ((DropDownList)DetailsView1.Rows[11].Cells[1].FindControl("ddlState")).Text;
    ////    }
    ////}
    ////private string CtId
    ////{
    ////    get
    ////    {
    ////        return ((DropDownList)DetailsView1.Rows[12].Cells[1].FindControl("ddlCity")).Text;
    ////    }
    ////}
    ////private string Fax
    ////{
    ////    get
    ////    {
    ////        return ((TextBox)DetailsView1.Rows[13].Cells[1].Controls[0]).Text;
    ////    }
    ////}
    ////private void Update()
    ////{
   
    ////    DetailsViewDataSource.Phone = Phone;
    ////    DetailsViewDataSource.Address = Address;
    ////    DetailsViewDataSource.Chiller = Chiller;
    ////    DetailsViewDataSource.DishWash = DishWash;
    ////    DetailsViewDataSource.smalthing = smalthing;
    ////    DetailsViewDataSource.Heater = Heater;
    ////    DetailsViewDataSource.AirCond = AirCond;
    ////    DetailsViewDataSource.StId = int.Parse(StId);
    ////    DetailsViewDataSource.CtId = int.Parse(CtId);
    ////    DetailsViewDataSource.Fax = Fax;

    ////    if (Picture != null)
    ////        DetailsViewDataSource.Picture = Picture;
    ////    CategoriesAdapter.Update(DetailsViewDataSource);
    ////    GotoReadonlyMode();
    ////}

    ////protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    ////{
    ////     Update();
    ////}


    protected string GetStateName(int StId)
    {
        DropDownList1.DataBind();
        DropDownList1.SelectedValue = StId.ToString();
        return DropDownList1.SelectedItem.Text;
    }

    protected string GetCityName(int CtId)
    {
        DropDownList2.DataBind();
        DropDownList2.SelectedValue = CtId.ToString();
        return DropDownList2.SelectedItem.Text;
    }

}
