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
using System.Drawing;
using System.IO;

public partial class CategoriesImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
            return;
        int id = int.Parse(Request.QueryString["id"]);
        CategoriesDataTableAdapters.CategoriesTableAdapter cta = new CategoriesDataTableAdapters.CategoriesTableAdapter();
        CategoriesData.CategoriesDataTable cdt = cta.GetDataByCategoryID (id);
        if (cdt.Count == 0)
            return;
        CategoriesData.CategoriesRow cr = cdt[0];
        if (cr.Picture == null || cr.Picture.Length==0)
            return;
        Response.Clear();
        Response.ContentType = "image/jpeg";
        //MemoryStream ms = new MemoryStream(cr.Picture);
        try
        {
            Bitmap bmp = new Bitmap(new MemoryStream(cr.Picture));
            bmp.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        }
        catch
        {
        }
    }
}
