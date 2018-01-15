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
using System.Globalization;

public partial class customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!CuId.HasValue)
            GotoListPage();
        //Response.Redirect("Default.aspx");
        SetDetailsViewDataSource();
        if (!IsPostBack)
        {
            DataBindDetailsView();
            if (CuId.Value == -1)
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
            CuAdapter.GetDataBySearch(CuId.Value);
      
    }

    private int? CuId
    {
        get
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                return null;
            return int.Parse(Request.QueryString["id"]);
        }
    }

    private CustomerDataTableAdapters.CustomerTableAdapter _adapter;

    private CustomerDataTableAdapters.CustomerTableAdapter CuAdapter
    {
        get
        {
            if (_adapter == null)
                _adapter = new CustomerDataTableAdapters.CustomerTableAdapter();
            return _adapter;
        }
    }

    private CustomerData.CustomerRow DetailsViewDataSource
    {
        get
        {
            CustomerData.CustomerDataTable dt = (CustomerData.CustomerDataTable)DetailsView1.DataSource;
            if (dt.Count == 0)
                return dt.AddCustomerRow(string.Empty, string.Empty, string.Empty, string.Empty,string.Empty ,string.Empty ,string.Empty );
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

    //private string CuDate
    //{
    //    get
    //    {
    //        return ((TextBox)DetailsView1.Rows[6].Cells[1].FindControl ("TextBox2")).Text;
    //    }
    //}
    private string CuName
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[0].Cells[1].Controls[0]).Text;
        }
    }
    private string CuPhone
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[1].Cells[1].Controls[0]).Text;
        }
    }
    private string CuAddress
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[2].Cells[1].FindControl ("TextBox3")).Text;
        }
    }
    private string CuSysType
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[3].Cells[1].Controls[0]).Text;
        }
    }
    private string CuReqType
    {
        get
        {
            return ((DropDownList )DetailsView1.Rows[4].Cells[1].FindControl("DropDownList1")).Text ;
        }
    }
    private string CuDescript
    {
        get
        {
            return ((TextBox)DetailsView1.Rows[5].Cells[1].FindControl("TextBox1")).Text;
        }
    }


    private void Update()
    {
        string YMD = GD2JD2(DateTime.Now);
        DetailsViewDataSource.CuDate = YMD;

        //DetailsViewDataSource.CuDate  = CuDate ;
        DetailsViewDataSource.CuName  = CuName ;
        DetailsViewDataSource.CuPhone  = CuPhone;
        DetailsViewDataSource.CuAddress = CuAddress;
        DetailsViewDataSource.CuSysType = CuSysType;
        DetailsViewDataSource.CuReqType = CuReqType;
        DetailsViewDataSource.CuDescript  = CuDescript ;

        CuAdapter.Update(DetailsViewDataSource);
        GotoReadonlyMode();
        lblMessage.Text = "با تشکر از درخواست شما ، در اسرع وقت در مورد زمان مراجعه با شما تماس گرفته خواهد شد";

    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Update();
    }
    //------------------
    private static string GD2JD2(DateTime Gregorian)
    {
        PersianCalendar pc = new PersianCalendar();
        int y, m, d;
        y = pc.GetYear(Gregorian);
        m = pc.GetMonth(Gregorian);
        d = pc.GetDayOfMonth(Gregorian);
        string ans = string.Format("{0}/{1:d2}/{2:d2}", y, m, d);
    

        return ans;
    }

    //---------------------------
    
}
