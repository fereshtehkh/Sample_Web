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

public partial class LHomeDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (TextBox1.Text == "1")
        {
            LHomeDataTableAdapters.LHomeTableAdapter cta = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = cta.GetData();
        }
        if (TextBox1.Text == "2")
        {
            LHomeDataTableAdapters.LHomeTableAdapter ctaType = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = ctaType.GetDataByType(int.Parse(ddlLType.SelectedValue));

        }
        if (!IsPostBack)
            DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.DataBind();
       
    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.SelectedIndex = -1;
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        DataList1.DataBind();
    }
   
    protected void ddlLType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlLType.SelectedValue == "1")
        {
            LHomeDataTableAdapters.LHomeTableAdapter ctaType = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = ctaType.GetData();
            DataList1.DataBind();
            TextBox1.Text = "1";

        }
        else
        {
            LHomeDataTableAdapters.LHomeTableAdapter ctaType = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = ctaType.GetDataByType(int.Parse(ddlLType.SelectedValue));
            DataList1.DataBind();
            lblType.Text = ddlLType.SelectedItem.ToString();
            TextBox1.Text = "2";
        }
    }



    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.SelectedIndex = e.Item.ItemIndex;
        DataList1.DataBind();
    }
}
