<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="ManagerMain.aspx.cs" Inherits="ManagerMain" Title="ورود به بخش مديريت" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 60px">
        <tr>
            <td align="right" colspan="1">
            </td>
            <td align="right" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="right" colspan="1">
            </td>
            <td align="right" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="right" colspan="1" style="height: 5px">
                &nbsp; &nbsp; &nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True"
                    Font-Names="Tahoma" Font-Size="8pt" ForeColor="#990000" NavigateUrl="~/SendMailToManager.aspx" Visible="False">ورود</asp:HyperLink>
                &nbsp; &nbsp;&nbsp;
            </td>
            <td align="right" colspan="3" style="height: 5px">
                &nbsp;<asp:Label ID="lblMail" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#FF3333" Width="450px"></asp:Label>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 3px">
            </td>
            <td style="width: 3px">
            </td>
            <td>
            </td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td align="right" colspan="1">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="#990000" NavigateUrl="~/SendReqPartToManager.aspx" Visible="False">ورود</asp:HyperLink></td>
            <td colspan="3">
                <asp:Label ID="lblMail2" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#FF3333"
                    Width="450px"></asp:Label></td>
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
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="136px" TextMode="MultiLine" Width="244px">در صورتی که نامه ارسالی از نماينده داشته باشيد که هنوز تيک مشاهده آن را نزده ايد يعنی هنوز مشاهده نشده ، پيغام مبنی بر آن را روی صفحه می بينيد، و می توانيد با دکمه ورود به آن صفحه وارد شويد.                                                         در صورتی که درخواست قطعه از نماينده داشته باشيد که هنوز تيک مشاهده شد آن را نزده ايد ، پيغامی خواهيد داشت که با کليک روی ورود می توانيد وارد صفحه شويد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
    &nbsp;
</asp:Content>

