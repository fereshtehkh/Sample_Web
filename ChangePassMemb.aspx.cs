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

public partial class ChangePassMemb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        if (Application["TextBoxValue"] == null)
        {
            Response.Redirect("Mainfa.aspx");
        }

        txtCatId.Text = Application["TextBoxValue"].ToString();
        
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
        GridView1.DataBind();
    }

    private void SetDetailsViewDataSource()
    {
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        GridView1.DataSource = cta.GetDataByPassF (int.Parse (txtCatId.Text.ToString ()));
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        GridView1.DataSource = cta.GetDataByPassF(int.Parse(txtCatId.Text.ToString()));
        GridView1.DataBind();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string SPass;
        SPass = ((TextBox)GridView1.Rows[GridView1.EditIndex].Cells[2].Controls[0]).Text ;
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        CategoriesDataTableAdapters.CategoriesTableAdapter ct1 = new CategoriesDataTableAdapters.CategoriesTableAdapter();

        GridView1.DataSource = ct1.GetDataByPassF(int.Parse(txtCatId.Text.ToString()));

        CategoriesData.CategoriesDataTable cdt = (CategoriesData.CategoriesDataTable)GridView1.DataSource;
        cdt[e.RowIndex].Password  = SPass;
        cta.Update(cdt[e.RowIndex]);
        GridView1.EditIndex = -1;
        GridView1.DataBind();
        GridView1.Visible = true;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        GridView1.DataSource = cta.GetDataByPassF(int.Parse(txtCatId.Text.ToString()));
        GridView1.DataBind();

    }
}
