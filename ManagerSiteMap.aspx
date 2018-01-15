<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="ManagerSiteMap.aspx.cs" Inherits="ManagerSiteMap" Title="نقشه سايت مديريت پاسارگاد" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 72px; height: 157px; border-top-width: thin; border-left-width: thin; border-left-color: pink; border-bottom-width: thin; border-bottom-color: pink; border-top-color: pink; border-right-width: thin; border-right-color: pink;" >
        <tr>
            <td colspan="3" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted; height: 6px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tSiteMapMg.gif"
                    Width="178px" /></td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
                </td>
            <td align="right" dir="rtl" style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;" valign="top">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="81px">ورود اطلاعات</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="width: 114px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted; height: 6px;" valign="top">
                <span dir="rtl" style="font-size: 8pt; color: #003399">&nbsp;<asp:TextBox ID="TextBox2"
                    runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Width="328px">شامل: تصحيح، ورود اطلاعات ، حذف نماينده با کليه مشخصات میباشد.                                                      </asp:TextBox>
                    &nbsp;&nbsp;</span></td>
            <td style="width: 3px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted; height: 6px;">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#CC0099" Font-Underline="True" NavigateUrl="~/DataEntryNamayandeh.aspx" Width="60px">نمايندگان</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;" align="right" dir="rtl" valign="top">
                <asp:TextBox ID="TextBox3" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">شامل: تصحيح، ورود اطلاعات ، حذف اخبار با کليه مشخصات میباشد.                                                      </asp:TextBox></td>
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;" align="right" dir="rtl" valign="top">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/DEntryNews.aspx" Width="60px">اخبار</asp:HyperLink></td>
            <td style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;">
            </td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;" align="right" dir="rtl" valign="top">
                <asp:TextBox ID="TextBox4" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">شامل: تصحيح، ورود اطلاعات ، حذف راهنما با کليه مشخصات میباشد.                                                      </asp:TextBox></td>
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/DEntryGuide.aspx" Width="60px">راهنما</asp:HyperLink></td>
            <td style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;">
            </td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;" align="right" dir="rtl" valign="top">
                <asp:TextBox ID="TextBox5" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">شامل: تصحيح، ورود اطلاعات ، حذف بخشنامه با کليه مشخصات میباشد.                                                      </asp:TextBox></td>
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/DEntryBakhsh.aspx" Width="60px">بخشنامه</asp:HyperLink></td>
            <td style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;">
            </td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;" align="right" dir="rtl" valign="top">
                <asp:TextBox ID="TextBox6" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">شامل: تصحيح، ورود اطلاعات ، حذف لوازم با کليه مشخصات میباشد.                                                      </asp:TextBox></td>
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/DEntryLHome.aspx" Width="60px">لوازم خانگی</asp:HyperLink></td>
            <td style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;">
            </td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
            </td>
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
            </td>
            <td style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;">
                <asp:TextBox ID="TextBox7" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="81px">اطلاعات فنی</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 114px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;" align="right" dir="rtl" valign="top">
                <asp:TextBox ID="TextBox8" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">مارک يا نوع جديد لوازم خانگی فقط با نام وارد سيستم شما می شود.                                           </asp:TextBox></td>
            <td style="width: 3px; height: 6px; border-right: mistyrose thin dotted; border-top: mistyrose thin dotted; border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted;">
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/DataEntryMarks.aspx"
                    Width="60px">مارک و نوع</asp:HyperLink></td>
            <td style="height: 6px; border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted; width: 80px; border-bottom: pink thin dotted;">
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;" valign="top">
                <asp:TextBox ID="TextBox9" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">مدل بر حسب مارک و نوع وارد می شود و امکان ويرايش نيز وجود دارد.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;">
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/DEntryModel.aspx" Width="60px">مدل</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted;">
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox10" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="46px" TextMode="MultiLine" Width="328px">نقشه سيم کشی، اتصالات، انفجاری و راهنمای سرويشکار و استفاده کننده همراه با بولتن های آموزشی مدل وارد سيستم می شودکه به دوصورت فايلی و متنی می باشد.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink8" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/FaniInfotoMembers.aspx"
                    Width="60px">فنی مدل</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox11" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="95px">مشاهده اطلاعات</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox12" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="29px" TextMode="MultiLine" Width="328px">پيشنهادات و انتقادات مشتريان توسط مديريت در اين بخش مشاهده می شود.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink9" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ObsSuggest.aspx" Width="60px">پيشنهادات</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox13" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="29px" TextMode="MultiLine" Width="328px">درخواست خدماتی مشتری که توسط فرم پر شده در اين بخش توسط مديريت قابل مشاهده است.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink10" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ObsCustomer.aspx" Width="60px">مشتری</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox14" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="81px">ارسال مطالب </asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox15" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="48px" TextMode="MultiLine" Width="328px">ارسال فايل و مطالب به گروهی از نمايندگان توسط قسمت مديريت که شامل مطالب متنی و فايل می باشد و عمليات ارسال به گروهی از نمايندگان صورت می گيرد.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink11" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/SendFileToMemb.aspx?id=-1"
                    Width="60px">ارسال فايل</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox16" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="29px" TextMode="MultiLine" Width="328px">جستجو بر حسب نمايندگان هر استان و مشاهده مراسلات مديريت به آنها.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/SearchMailtoMemb.aspx"
                    Width="60px">جستجو</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox17" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="102px">مراسلات نمايندگان</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox18" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="25px" Width="328px">نامه های نمايندگان به مديريت به صورت متنی مشاهده می شود.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/SendMailToManager.aspx"
                    Width="60px">نامه نماينده</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox19" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="93px">درخواست قطعه</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox20" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="49px" TextMode="MultiLine" Width="328px">در اين بخش درخواست قطعه شامل مشخصات سرويسکار و مشترک و مشخصات دستگاه همراه با قطعات درخواستی به مديريت ارسال شده و امکان پاسخگويي گذاشته شده است.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/SendReqPartToManager.aspx"
                    Width="60px">درخواست ها</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox21" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="46px">آرشيو</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox22" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="32px" TextMode="MultiLine" Width="328px">آرشيو مطالب ارسالی از مديريت به نماينده که شامل فايل يا متن می باشد.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink15" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ArchiveMailFile.aspx"
                    Width="60px">نامه مدير</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox23" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="17px" Width="328px">آرشيو مراسلات نماينده به مديريت .</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink16" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ArchiveMMailToManager.aspx"
                    Width="60px">نامه نماينده</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox24" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="17px" Width="328px">آرشيو درخواستهای قطعه نمايندگان از مديريت.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink17" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ArchiveMReqPart.aspx"
                    Width="60px">درخواست قطعه</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox25" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="46px">رمز عبور</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox26" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="17px" Width="328px">ويرايش رمز عبور مديريت.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink18" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="ManageChangePass.aspx?id=1"
                    Width="60px">تصحيح</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
        <tr>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
            </td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 80px; border-bottom: pink thin dotted; height: 6px">
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 251px; height: 165px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 11px"
                valign="top">
                <span style="font-size: 9pt; color: #ff0000"><strong style="background-color: #ffff99">
                    راهنما</strong></span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox27" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="70px" TextMode="MultiLine" Width="244px">در اين بخش نقشه سايت مديريت با توضيحات مشاهده می شود و می توانيد روی هر لينک کليک کنيد و وارد صفحه مربوطه شويد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

