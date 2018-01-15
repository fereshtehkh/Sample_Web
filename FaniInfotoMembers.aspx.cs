using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Security;
using System.IO;
using System.Net;
using System.Threading;
using System.Text;

public partial class FaniInfotoMembers : System.Web.UI.Page
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
        ModelsDataTableAdapters.ModelsTableAdapter cta = new ModelsDataTableAdapters.ModelsTableAdapter();
        GridView1.DataSource = cta.GetDataByQueryModel();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        ModelsDataTableAdapters.ModelsTableAdapter cta1 = new ModelsDataTableAdapters.ModelsTableAdapter();
        GridView1.DataSource = cta1.GetDataByQueryModel();
        DataBindGrid();

        ddlMark.SelectedValue = "1";
        ddlSys.SelectedValue = "1";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            string sFlId = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
            TextBox2.Text = sFlId.ToString();

            txtNameM.Text = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[1].Text.ToString() + "  " + GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[2].Text.ToString() + "  " + GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[3].Text.ToString();

            string SMarkId = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[4].Text;
            FaniTypeDataTableAdapters.FaniTypeTableAdapter ct1 = new FaniTypeDataTableAdapters.FaniTypeTableAdapter();
            DropDownList1.DataSource = ct1.GetDataBySearch(int.Parse(SMarkId.ToString()));
            DropDownList1.DataBind();
            ddlFaniTyp.DataSource = ct1.GetDataBySearch(int.Parse(SMarkId.ToString()));
            ddlFaniTyp.DataBind();
            ddlFani2.DataSource = ct1.GetDataBySearch(int.Parse(SMarkId.ToString()));
            ddlFani2.DataBind();

            Label5.Visible = true;
            DropDownList1.Visible = true;
            btnFilterFani.Visible = true;
            btnAllFan.Visible = true;
            btnSave.Enabled = true;
            btnSave2.Enabled = true;
            txtNameM.Visible = true;
            //AllFanInfo();

            grdMWire.Visible = false ;
            GrdFText.Visible = false;
         
        }
    }

    protected void btnSearchM_Click(object sender, EventArgs e)
    {
        if (ddlMark.SelectedValue != "")
        {
            ModelsDataTableAdapters.ModelsTableAdapter ctM = new ModelsDataTableAdapters.ModelsTableAdapter();
            GridView1.DataSource = ctM.GetDataByQueryMMark(int.Parse(ddlMark.SelectedValue));
            DataBindGrid();

        }
        if (ddlSys.SelectedValue != "1")
        {
            ModelsDataTableAdapters.ModelsTableAdapter ctM = new ModelsDataTableAdapters.ModelsTableAdapter();
            GridView1.DataSource = ctM.GetDataByQMarkSys(int.Parse(ddlMark.SelectedValue), int.Parse(ddlSys.SelectedValue));
            DataBindGrid();

        }
        if (ddlMark.SelectedValue == "1")
        {
            ModelsDataTableAdapters.ModelsTableAdapter cta1 = new ModelsDataTableAdapters.ModelsTableAdapter();
            GridView1.DataSource = cta1.GetDataByQueryModel();
            DataBindGrid();
        }
    }

    protected void btnFilterFani_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "2";

        FaniFileDataTableAdapters.FaniFileTableAdapter ct1 = new FaniFileDataTableAdapters.FaniFileTableAdapter();
        FaniTextDataTableAdapters.FaniTextTableAdapter ct2 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        grdMWire.DataSource = ct1.GetDataByFilter(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
        grdMWire.DataBind();
        grdMWire.Visible = true;
        GrdFText.DataSource = ct2.GetDataBySearch(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
        GrdFText.DataBind();
        GrdFText.Visible = true;

        grdMWire.Visible = true;

        
     
    }
    private void AllFanInfo()
    {
        FaniFileDataTableAdapters.FaniFileTableAdapter ct1 = new FaniFileDataTableAdapters.FaniFileTableAdapter();
        grdMWire.DataSource = ct1.GetDataByAll(int.Parse(TextBox2.Text.ToString()));
        grdMWire.DataBind();

        FaniTextDataTableAdapters.FaniTextTableAdapter ct2 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        GrdFText.DataSource = ct2.GetDataByGrdText(int.Parse(TextBox2.Text.ToString()));
        GrdFText.DataBind();

        GrdFText.Visible = true;
        grdMWire.Visible = true;

     }
    protected void btnAllFan_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "1";
        AllFanInfo();
    }

    

    protected void btnNew_Click(object sender, EventArgs e)
    {
        int i=0;
        do
        {
            CheckBoxList2.Items[i].Selected = false;
            i = i + 1;
        }
        while (CheckBoxList2.Items.Count != i);

        btnSave.Enabled = true;
        btnNew.Enabled = false;

    

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (CheckBoxList2.Items.Count != 0)
        {
            int i = 0;
            do
            {
                if (CheckBoxList2.Items[i].Selected == true)
                {
                    FaniFileDataTableAdapters.FaniFileTableAdapter ctF = new FaniFileDataTableAdapters.FaniFileTableAdapter();
                    FaniFileData.FaniFileDataTable cdt = ctF.GetData();
                    cdt.AddFaniFileRow(int.Parse(TextBox2.Text), int.Parse(ddlFaniTyp.SelectedValue), int.Parse(CheckBoxList2.Items[i].Value));
                    ctF.Update(cdt);
                }
                i = i + 1;
            }
            while (i != CheckBoxList2.Items.Count);
        }
        btnNew.Enabled = true;
        btnSave.Enabled = false;
    }

    protected void btnNew2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        btnNew2.Enabled = false;
        btnSave2.Enabled = true;

    }
    protected void btnSave2_Click(object sender, EventArgs e)
    {
        FaniTextDataTableAdapters.FaniTextTableAdapter cta = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        FaniTextData.FaniTextDataTable cdt = cta.GetData();
        cdt.AddFaniTextRow(int.Parse(TextBox2.Text), int.Parse(ddlFani2.SelectedValue), TextBox1.Text.ToString ());
        cta.Update(cdt);
        btnNew2.Enabled = true;
        btnSave2.Enabled = false;
    }

    protected void GrdFText_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GrdFText.EditIndex = e.NewEditIndex;

        if (TextBox4.Text == "1")
        {
            FaniTextDataTableAdapters.FaniTextTableAdapter ct1 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
            GrdFText.DataSource = ct1.GetDataByGrdText(int.Parse(TextBox2.Text));
            GrdFText.DataBind();
        }
        if (TextBox4.Text == "2")
        {
            FaniTextDataTableAdapters.FaniTextTableAdapter ct2 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
            GrdFText.DataSource = ct2.GetDataBySearch(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
            GrdFText.DataBind();
        }


    }
    protected void GrdFText_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string FanText;
        FanText = ((TextBox)GrdFText.Rows[GrdFText.EditIndex].Cells[1].FindControl("TextBox1")).Text;
        FaniTextDataTableAdapters.FaniTextTableAdapter cta = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        FaniTextDataTableAdapters.FaniTextTableAdapter ct1 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        if (TextBox4.Text == "1")
        {
            GrdFText.DataSource = ct1.GetDataByGrdText(int.Parse(TextBox2.Text));
        }
        if (TextBox4.Text == "2")
        {
            GrdFText.DataSource = ct1.GetDataBySearch(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
        }
        FaniTextData.FaniTextDataTable cdt = (FaniTextData.FaniTextDataTable)GrdFText.DataSource;
        cdt[e.RowIndex].FDescript  = FanText ;
        cta.Update(cdt[e.RowIndex]);
        GrdFText.EditIndex = -1;

        GrdFText.DataBind();
        GrdFText.Visible = true;
    }
    protected void GrdFText_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GrdFText.EditIndex = -1;
        FaniTextDataTableAdapters.FaniTextTableAdapter ct1 = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        GrdFText.DataSource = ct1.GetDataByGrdText(int.Parse(TextBox2.Text));
        GrdFText.DataBind();

    }

    protected void grdMWire_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {  
        FaniFileDataTableAdapters.FaniFileTableAdapter ct1 = new FaniFileDataTableAdapters.FaniFileTableAdapter();
        if (DropDownList1.SelectedValue =="1")
        {
        grdMWire.DataSource = ct1.GetDataByAll (int.Parse(TextBox2.Text.ToString()));
        }
        if (DropDownList1.SelectedValue != "1")
        {
           grdMWire.DataSource = ct1.GetDataByFilter(int.Parse(TextBox2.Text.ToString()),int.Parse (DropDownList1.SelectedValue ));
        }
        FaniFileData.FaniFileDataTable cdt = (FaniFileData.FaniFileDataTable)grdMWire.DataSource;
        cdt[e.RowIndex].Delete();
        FaniFileDataTableAdapters.FaniFileTableAdapter cta = new FaniFileDataTableAdapters.FaniFileTableAdapter();
        cta.Update(cdt);
        grdMWire.DataBind();
      
    }

    protected void GrdFText_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FaniTextDataTableAdapters.FaniTextTableAdapter ct1 = new FaniTextDataTableAdapters.FaniTextTableAdapter();

        if (TextBox4.Text == "1")
        {
            GrdFText.DataSource = ct1.GetDataByGrdText(int.Parse(TextBox2.Text));
        }
        if (TextBox4.Text == "2")
        {
            GrdFText.DataSource = ct1.GetDataBySearch(int.Parse(TextBox2.Text.ToString()), int.Parse(DropDownList1.SelectedValue));
        }

        FaniTextData.FaniTextDataTable cdt = (FaniTextData.FaniTextDataTable)GrdFText.DataSource;
        cdt[e.RowIndex].Delete();
        FaniTextDataTableAdapters.FaniTextTableAdapter cta = new FaniTextDataTableAdapters.FaniTextTableAdapter();
        cta.Update(cdt);
        GrdFText.DataBind();
    }

   
}
