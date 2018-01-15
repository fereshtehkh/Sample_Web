<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryNews.aspx.cs" Inherits="DEntryNews" Title="ورود اطلاعات اخبار" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td colspan="5" style="width: 241px; height: 33px" align="right" dir="rtl">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t4.gif" Width="238px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="5" rowspan="1" style="width: 241px" valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" NavigateUrl="DEntryNewsDetails.aspx?id=-1">ورود اطلاعات جديد</asp:HyperLink></td>
        </tr>
        <tr>
            <td colspan="5" rowspan="2" style="width: 241px" align="right">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Bold="False" Font-Names="Tahoma" Font-Size="9pt" Height="204px"
                    ShowHeader="False" Width="253px" OnPageIndexChanging="GridView2_PageIndexChanging">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="NId" DataNavigateUrlFormatString="DEntryNewsDetails.aspx?id={0}"
                            DataTextField="NewsT" ShowHeader="False">
                            <ItemStyle ForeColor="#C04000" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
                &nbsp;</td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="2" style="width: 241px; height: 18px"
                valign="top">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
                <br />
            </td>
        </tr>
        <tr>
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
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 164px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="LightSteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="100px" TextMode="MultiLine" Width="244px">تصحيح: اگر روی نام هر آيتم که در ليست مقابل وجود دارد کليک کنيد به صفحه تصحيح اطلاعات وارد میشويد.                                                            ورود اطلاعات جديد: واردصفحه ای می شويد که می توانيد اطلاعات جديد را وارد کنيد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

