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

public partial class DEntryLHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");

        if (TextBox4.Text == "1")
        {
            LHomeDataTableAdapters.LHomeTableAdapter cta = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = cta.GetData();
        }
        if (TextBox4.Text == "2")
        {
            LHomeDataTableAdapters.LHomeTableAdapter ctaType = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = ctaType.GetDataByType(int.Parse(ddlLType.SelectedValue));

        }
        ddlLType.DataBind();
        if (!IsPostBack)
        {
            DataList1.DataBind();
        }
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
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        string LHomeT = ((TextBox)e.Item.FindControl("TextBox1")).Text;
        string Descript = ((TextBox)e.Item.FindControl("TextBox2")).Text;
        string LtId = ((DropDownList)e.Item.FindControl("ddlLType")).Text ;
        bool Final = ((CheckBox)e.Item.FindControl("chkFinal")).Checked ;
        FileUpload fu = ((FileUpload)e.Item.FindControl("FileUpload1"));
        Byte[] p = null;
        if (fu.PostedFile != null && fu.PostedFile.ContentLength != 0)
        {
            p = new byte[fu.PostedFile.ContentLength];
            fu.PostedFile.InputStream.Read(p, 0, fu.PostedFile.ContentLength);
        }
        LHomeDataTableAdapters.LHomeTableAdapter cta = new LHomeDataTableAdapters.LHomeTableAdapter();
        LHomeData.LHomeDataTable cdt = (LHomeData.LHomeDataTable)DataList1.DataSource;
        cdt[e.Item.ItemIndex].LHomeT = LHomeT;
        cdt[e.Item.ItemIndex].Descript = Descript;
        cdt[e.Item.ItemIndex].LtId = int.Parse (LtId);
        cdt[e.Item.ItemIndex].LFinal = Final;
        if (p != null)
            cdt[e.Item.ItemIndex].Lpic = p;
        cta.Update(cdt);
        //DataList1.SelectedIndex = -1;
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        LHomeDataTableAdapters.LHomeTableAdapter cta = new LHomeDataTableAdapters.LHomeTableAdapter();
        LHomeData.LHomeDataTable cdt = (LHomeData.LHomeDataTable)DataList1.DataSource;
        cdt[e.Item.ItemIndex].Delete();
        cta.Update(cdt);
        DataList1.SelectedIndex = -1;
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }
    protected void ddlLType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlLType.SelectedValue == "1")
        {
            LHomeDataTableAdapters.LHomeTableAdapter ctaType = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = ctaType.GetData();
            DataList1.DataBind();
            TextBox4.Text = "1";
        }
        else
        {
            LHomeDataTableAdapters.LHomeTableAdapter ctaType = new LHomeDataTableAdapters.LHomeTableAdapter();
            DataList1.DataSource = ctaType.GetDataByType(int.Parse(ddlLType.SelectedValue));
            DataList1.DataBind();
            lblType.Text = ddlLType.SelectedItem.ToString();
            TextBox4.Text = "2";

        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.SelectedIndex = e.Item.ItemIndex;
        DataList1.DataBind();
    }
}
