using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Globalization;

/// <summary>
/// Summary description for DateConversion
/// </summary>
public class DateConversion
{
    public static string GD2JD(DateTime Gregorian)
    {
        PersianCalendar pc = new PersianCalendar();
        int y, m, d;
        y = pc.GetYear(Gregorian);
        m = pc.GetMonth(Gregorian);
        d = pc.GetDayOfMonth(Gregorian);
        string ans = string.Format("{0}/{1:d2}/{2:d2}", y, m, d);
        //if (m < 10)
        //    ans = string.Format("{0}/0{1}", ans, m);
        //else
        //    ans = string.Format("{0}/{1}", ans, m);
        return ans;
    }

    public static DateTime JD2GD(string Jalali)
    {
        int y, m, d;
        y = int.Parse(Jalali.Substring(0, 4));
        m = int.Parse(Jalali.Substring(5, 2));
        d = int.Parse(Jalali.Substring(8, 2));
        PersianCalendar pc = new PersianCalendar();
        DateTime ans = new DateTime(y, m, d, pc);
        return ans;
    }

    public static string GetLocalizedDate(DateTime dt)
    {
        switch (System.Threading.Thread.CurrentThread.CurrentUICulture.Name)
        {
            case "en":
                return dt.ToString("yyyy/MM/dd");
            case "fa":
                return GD2JD(dt);
            default:
                return "";
        }
    }
}
