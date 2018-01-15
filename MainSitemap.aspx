<%@ Page Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="MainSitemap.aspx.cs" Inherits="MainSitemap" Title="نقشه سايت"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 288px">
   
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="height: 21px; background-color: white"
                valign="top">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tSiteMap.gif"
                    Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="height: 21px; background-color: mistyrose;" valign="top">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" Font-Names="Tahoma"
                    Font-Size="Small" Height="376px" Width="822px" BackColor="LavenderBlush" BorderWidth="0px" ImageSet="BulletedList4">
                    <SelectedNodeStyle ForeColor="Indigo" />
                    <LeafNodeStyle Font-Bold="False" Font-Names="Tahoma" Font-Overline="False" Font-Size="Small"
                        Font-Strikeout="False" Font-Underline="False" ForeColor="DarkOrchid" NodeSpacing="6px" />
                    <HoverNodeStyle ForeColor="Indigo" />
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
    <a href="MainMap.sitemap"></a>
</asp:Content>

