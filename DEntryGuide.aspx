﻿<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryGuide.aspx.cs" Inherits="DEntryGuide" Title="ورود اطلاعات راهنما" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td colspan="5" style="width: 241px; height: 33px" align="right" dir="rtl">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t5.gif" Width="234px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="5" rowspan="1" style="width: 241px" valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" NavigateUrl="DEntryGuideDetails.aspx?id=-1">ورود اطلاعات جديد</asp:HyperLink><br />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" rowspan="2" style="width: 241px; height: 215px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    Font-Names="Tahoma" Font-Size="9pt" Height="201px" PageSize="5" ShowHeader="False"
                    Width="272px" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="GId" DataNavigateUrlFormatString="DEntryGuideDetails.aspx?id={0}"
                            DataTextField="GTitle" ShowHeader="False">
                            <ItemStyle ForeColor="#C04000" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
                &nbsp;</td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="2" style="width: 241px; height: 11px"
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

