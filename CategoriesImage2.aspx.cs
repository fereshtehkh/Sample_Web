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
        LHomeDataTableAdapters.LHomeTableAdapter cta = new LHomeDataTableAdapters.LHomeTableAdapter();
        LHomeData.LHomeDataTable cdt = cta.GetDataBySearch(id);

        if (cdt.Count == 0)
            return;
        LHomeData.LHomeRow cr = cdt[0];
        if (cr.Lpic == null || cr.Lpic.Length == 0)
            return;
        Response.Clear();
        Response.ContentType = "image/jpeg";
        //MemoryStream ms = new MemoryStream(cr.Picture);
        try
        {
            Bitmap bmp = new Bitmap(new MemoryStream(cr.Lpic));
            bmp.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        }
        catch
        {
        }
    }
}
