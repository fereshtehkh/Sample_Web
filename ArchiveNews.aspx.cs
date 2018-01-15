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

public partial class ArchiveNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        NewsDataTableAdapters.NewsTableAdapter cta = new NewsDataTableAdapters.NewsTableAdapter();
        DataList1.DataSource = cta.GetData();
        if (!IsPostBack)
            DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.DataBind();
    }
  
  
  
}
