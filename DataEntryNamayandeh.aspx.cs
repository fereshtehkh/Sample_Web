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

public partial class DataEntryNamayandeh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TextBoxValue"] == null)
            Response.Redirect("Mainfa.aspx");
        SetGridDataSource();
        if (!IsPostBack)
            DataBindGrid();

    }


    private void DataBindGrid()
    {
        GridView1.DataBind();
    }

    private void SetGridDataSource()
    {
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        GridView1.DataSource = cta.GetData();
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlState.SelectedValue != "")
        {
            CityTableAdapters.CityTableAdapter cta = new CityTableAdapters.CityTableAdapter();
            ddlCity.DataSource = cta.GetDataBySearch(int.Parse(ddlState.SelectedValue));
            ddlCity.DataBind();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        GridView1.DataSource = cta.GetData();
        DataBindGrid();
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        CheckBox5.Checked = false;
        ddlState.SelectedValue = "1";
        //ddlCity.SelectedValue = "1";
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ddlState.SelectedItem.Text == "")
        {
            CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            GridView1.DataSource = cta.GetDataByGridall(CheckBox1.Checked, CheckBox2.Checked, CheckBox3.Checked, CheckBox4.Checked, CheckBox5.Checked);
            DataBindGrid();
        }
        if (ddlState.SelectedItem.Text != "")
        {
            CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            GridView1.DataSource = cta.GetDataByGridSt(CheckBox1.Checked, int.Parse(ddlState.SelectedValue), CheckBox2.Checked, CheckBox3.Checked, CheckBox4.Checked, CheckBox5.Checked);
            DataBindGrid();
        }
        if (ddlCity.SelectedValue != "")
            if (ddlCity.SelectedItem.Text != "")
            {
                CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
                GridView1.DataSource = cta.GetDataByGridCt(CheckBox1.Checked, int.Parse(ddlCity.SelectedValue), CheckBox2.Checked, CheckBox3.Checked, CheckBox4.Checked, CheckBox5.Checked);
                DataBindGrid();
            }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (ddlState.SelectedValue != "")
        {
            CategoriesDataTableAdapters.CategoriesTableAdapter ctaSt = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            GridView1.DataSource = ctaSt.GetDataBySearchState(int.Parse(ddlState.SelectedValue));
            DataBindGrid();
        }
        if (ddlState.SelectedValue == "1")
        {
            CategoriesDataTableAdapters.CategoriesTableAdapter cta1 = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            GridView1.DataSource = cta1.GetDataByGridQuery();
            DataBindGrid();
        }
        if (ddlCity.SelectedValue != "")
            if (ddlCity.SelectedItem.Text != "")
        {
            CategoriesDataTableAdapters.CategoriesTableAdapter ctaCity = new CategoriesDataTableAdapters.CategoriesTableAdapter();
            GridView1.DataSource = ctaCity.GetDataBySearchCity(int.Parse(ddlCity.SelectedValue));
            DataBindGrid();
        }

    }
}
