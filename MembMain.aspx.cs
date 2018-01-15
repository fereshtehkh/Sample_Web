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

public partial class MembMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");
        else
        {
            txtCode.Text = Application["TextBoxValue"].ToString();
            CategoriesDataTableAdapters.CategoriesTableAdapter ct = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            CategoriesData.CategoriesDataTable cdt = ct.GetDataByCategoryID(int.Parse(txtCode.Text.ToString()));
            if (cdt.Count > 0)
            {
                txtName.Text = cdt[0].CategoryName;
                txtSrCode.Text = cdt[0].SrCode.ToString();

            }
            BakhshDataTableAdapters.BakhshnamehTableAdapter ct1 = new BakhshDataTableAdapters.BakhshnamehTableAdapter();
            GridView1.DataSource = ct1.GetDataByImpBakhsh();
            GridView1.DataBind();
        }
        SMailCodeAnsTableAdapters.SMailAnswerTableAdapter ct2 = new SMailCodeAnsTableAdapters.SMailAnswerTableAdapter();
        SMailCodeAns.SMailAnswerDataTable cdt1 = ct2.GetDataByNoSee();
        if (cdt1.Count > 0)
            lblMail.Text = "نامه جديد از بخش مديريت داريد لطفا به صفحه ارسال مطالب  از مديريت مراجعه کنيد";

    }
}
