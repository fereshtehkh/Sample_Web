<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="MembSiteMap.aspx.cs" Inherits="MembSiteMap" Title="نقشه سايت نمايندگان پاسارگاد" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="border-top-width: thin; border-left-width: thin; border-left-color: pink;
        border-bottom-width: thin; border-bottom-color: pink; width: 72px; border-top-color: pink;
        height: 157px; border-right-width: thin; border-right-color: pink">
        <tr>
            <td colspan="3" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; border-bottom: mistyrose thin dotted; height: 6px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tSiteMapMb.gif"
                    Width="178px" /></td>
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
            <td align="right" dir="rtl" style="border-right: pink thin dotted; border-top: pink thin dotted;
                border-left: pink thin dotted; width: 79px; border-bottom: pink thin dotted;
                height: 6px" valign="top">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="97px">نامه های مديريت</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <span dir="rtl" style="font-size: 8pt; color: #003399">&nbsp;<asp:TextBox ID="TextBox2"
                    runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Width="328px">فايل و مطالب ارسالی از مديريت به نماينده در اين بخش مشاهده می گردد.                          </asp:TextBox>
                    &nbsp;&nbsp;</span></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/MembRecieveMail.aspx"
                    Width="60px">فايل و مطلب</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox7" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="81px">مراسلات نماينده</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox8" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Width="328px">در اين بخش نماينده می توانيد نامه به مديريت نوشته و ارسال کند.                                  </asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="MailToManager.aspx?id=-1"
                    Width="60px">ارسال نامه</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox11" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="95px">اطلاعات فنی</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox12" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="73px" TextMode="MultiLine" Width="328px">اطلاعات فنی در مورد مدل لوازم خانگی که شامل: نقشه سيم کشی ، نقشه اتصالات ، نقشه انفجاری ، راهنمای سرويسکاران و راهنمای استفاده کنندگاخ و بولت های آموزشی مربوط به مدل منتخب می باشد در اين بخش مشاهده می شود و امکان جستجو مدل بر حسب مارک و نوع وجود دارد.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink9" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/FaniInfoForMembers.aspx"
                    Width="60px">مطالب فنی</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox17" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="102px">اطلاعات نماينده</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox18" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="25px" Width="328px">مشخصات نماينده شامل تلفن، آدرس و.... مشاهده می شود.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/MembSeeInfo.aspx" Width="60px">مشخصات</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox19" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="93px">درخواست قطعه</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox20" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="49px" TextMode="MultiLine" Width="328px">در اين بخش درخواست قطعه شامل مشخصات سرويسکار و مشترک و مشخصات دستگاه همراه با قطعات درخواستی به مديريت ارسال می شود.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="RequestPart.aspx?id=-1" Width="60px">درخواست ها</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox21" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="46px">آرشيو</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox22" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="19px" Width="328px">کل بخشنامه های عمومی در اين قسمت مشاهده می شود.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink15" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ArchiveBakhshnameh.aspx"
                    Width="60px">بخشنامه</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ArchiveMailToManger.aspx"
                    Width="60px">نامه نماينده</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/ArchiveReqPart.aspx"
                    Width="60px">درخواست قطعه</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
                <asp:TextBox ID="TextBox25" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#FF0066" Width="46px">رمز عبور</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 114px; border-bottom: mistyrose thin dotted;
                height: 6px" valign="top">
                <asp:TextBox ID="TextBox26" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#003399" Height="17px" Width="328px">ويرايش رمز عبور نماينده.</asp:TextBox></td>
            <td style="border-right: mistyrose thin dotted; border-top: mistyrose thin dotted;
                border-left: mistyrose thin dotted; width: 3px; border-bottom: mistyrose thin dotted;
                height: 6px">
                <asp:HyperLink ID="HyperLink18" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    Font-Underline="True" ForeColor="#CC0099" NavigateUrl="~/MembChangePass.aspx"
                    Width="60px">تصحيح</asp:HyperLink></td>
            <td style="border-right: pink thin dotted; border-top: pink thin dotted; border-left: pink thin dotted;
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                width: 79px; border-bottom: pink thin dotted; height: 6px">
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
                    Height="70px" TextMode="MultiLine" Width="244px">در اين بخش نقشه سايت نمايندگان، با توضيحات مشاهده می شود و می توانيد روی هر لينک کليک کنيد و وارد صفحه مربوطه شويد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

