<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryBakhsh.aspx.cs" Inherits="DEntryBakhsh" Title="ورود اطلاعات بخشنامه ها" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="width: 241px; height: 33px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t6.gif" Width="300px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="5" rowspan="1" style="width: 241px" valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" NavigateUrl="DEntryBakhshDetail.aspx?id=-1">ورود اطلاعات جديد</asp:HyperLink><br />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" rowspan="2" style="width: 241px">
                &nbsp;&nbsp;<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    Font-Names="Tahoma" Font-Size="9pt" Height="190px" ShowHeader="False" Width="300px" OnPageIndexChanging="GridView3_PageIndexChanging" PageSize="5">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="BId" DataNavigateUrlFormatString="DEntryBakhshDetail.aspx?id={0}"
                            DataTextField="BTitle" ShowHeader="False">
                            <ItemStyle ForeColor="#C04000" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="2" style="width: 241px; height: 12px"
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
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
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

