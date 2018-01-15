<%@ Page Language="C#" MasterPageFile="~/mpage.master" AutoEventWireup="true" CodeFile="Mainfa.aspx.cs" Inherits="Mainfa" Title=" به سايت پاسارگاد خوش آمديد" Description="مرکز سرويس و خدمات پس از فروش پاسارگاد: نماينده انحصاری لوازم خانگی گورنيه، فاگور و ميدآ در ايران" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<script language="javascript" type="text/javascript">
// <!CDATA[

function HR1_onclick() {

}

// ]]>
</script>

    <table style="width: 246px; height: 141px; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;">
        <tr>
            <td style="width: 128px; height: 73px;" align="center" dir="ltr" valign="top">
                <span style="font-size: 8pt; color: #003399; text-decoration: underline"><strong dir="rtl" style="text-align: center">معرفی
                    آخرين محصولات
                    <br />
                </strong></span>
                <hr style="width: 481px" id="HR1" onclick="return HR1_onclick()" />
                <table style="width: 356px; height: 151px;">
                    <tr>
                        <td rowspan="3" valign="top" colspan="3" style="width: 493px">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="LId"
                                Height="129px"  RepeatColumns="1" Width="473px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <span style="font-size: 8pt; color: #660066"></span><span style="font-size: 8pt;
                                        color: #660066"></span>
                                    <br />
                                    <span style="font-size: 8pt; color: #660066"></span>
                                    <br />
                                    <span style="font-size: 8pt; color: #990066"></span>
                                </EditItemTemplate>
                                <SeparatorTemplate>
                                    <hr />
                                </SeparatorTemplate>
                                <SelectedItemTemplate>
                                    &nbsp;<br />
                                    &nbsp;<br />
                                    &nbsp;<br />
                                    &nbsp; &nbsp; &nbsp;
                                </SelectedItemTemplate>
                                <ItemTemplate>
                                    <table style="width: 477px">
                                        <tr>
                                            <td align="right" colspan="3" style="height: 14px" valign="top">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                        Font-Size="10pt" ForeColor="#990066" Text='<%# Eval("LHomeT") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="3" style="height: 15px" valign="top">
                                    <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" BorderColor="Transparent"
                                        BorderWidth="0px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003366" Height="174px"
                                        ReadOnly="True" Text='<%# Eval("Descript") %>' TextMode="MultiLine" Width="359px"></asp:TextBox>
                                                <asp:Image
                                            ID="Image1" runat="server" EnableTheming="True" ImageUrl='<%# Eval("LId","CategoriesImage2.aspx?id={0}") %>'
                                            Width="100px" BackColor="Transparent" BorderColor="Transparent" BorderWidth="0px" /></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <SelectedItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Left" />
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Center" />
                                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="Contentplaceholder2">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <table style="width: 97px; height: 106px; border-top-width: thin;  ">
        <tr>
            <td style="width: 111px; height: 31px;" align="right"><asp:Image ID="Image1" runat="server" Height="29px" ImageUrl="~/Images/t5.gif" Width="234px" BorderColor="Lavender" BorderStyle="Solid" BorderWidth="1px" /></td>
            <td style="height: 31px">
                <asp:Image ID="Image5" runat="server" Height="29px" ImageUrl="~/Images/t4.gif" Width="238px" BorderColor="Lavender" BorderStyle="Solid" BorderWidth="1px" /></td>
        </tr>
        <tr>
            <td style="width: 111px; height: 130px;" align="right" dir="rtl" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Snow"
                    Font-Names="Tahoma" Font-Size="9pt" ForeColor="White" Height="117px" ShowHeader="False"
                    Width="237px" BorderWidth="0px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="GId" DataNavigateUrlFormatString="GuideDetails.aspx?id={0}"
                            DataTextField="GTitle" ShowHeader="False">
                            <ItemStyle ForeColor="#C04000" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </td>
            <td style="HEIGHT: 130px" align="right" valign="top" >
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Font-Bold="False"
                    Font-Names="Tahoma" Font-Size="9pt" Height="121px" ShowHeader="False" Width="241px" BorderWidth="0px" AllowPaging="True" ForeColor="#003399" OnPageIndexChanging="GridView2_PageIndexChanging" PageSize="5">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="NId" DataNavigateUrlFormatString="NewsDetail.aspx?id={0}"
                            DataTextField="NewsT" ShowHeader="False">
                            <ItemStyle ForeColor="#C04000" />
                        </asp:HyperLinkField>
                    </Columns>
                    <PagerSettings Visible="False" />
                </asp:GridView>
                &nbsp; &nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
    </asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder4">
    <table style="width: 178px; height: 130px; border-right: lavender thin solid; border-top: lavender thin solid; border-left: lavender thin solid; border-bottom: lavender thin solid;">
        <tr>
            <td align="right" style="width: 1446px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
            <td align="right" style="width: 253px">
                <asp:Image ID="Image2" runat="server" Height="29px" ImageUrl="~/Images/t1.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="height: 36px" valign="top">
                <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="Small" Height="16px"
                    Text="سازمان خدمات پس از فروش  پاسارگاد در سال 1379 با هدف ارائه فصل نويني در ارائه تخصصی خدمات پس از فروش لوازم  خانگي  برق ، گاز، الكترونيك و كامپيوتر پايه گذاري شد"
                    Width="477px" ForeColor="#003399"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" style="width: 1446px; height: 14px">
                <asp:ImageButton ID="btnEnter" runat="server" ImageUrl="~/Images/btnEnter.gif" OnClick="btnEnter_Click" /></td>
            <td style="width: 253px; height: 14px">
            </td>
        </tr>
    </table>
</asp:Content>
