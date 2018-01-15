<%@ Page Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="ArchiveNews.aspx.cs" Inherits="ArchiveNews" Title="اخبار" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 800px">
        <tr>
            <td align="right" colspan="5" dir="rtl" style="width: 466px; height: 33px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t4.gif" Width="238px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="5" rowspan="2" style="width: 466px; height: 250px;" dir="rtl" valign="top">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="NId"  OnSelectedIndexChanged="DataList1_SelectedIndexChanged"
                     RepeatColumns="1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Height="237px" Width="820px">
                    <EditItemTemplate>
                        <br />
                    </EditItemTemplate>
                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>
                    <SelectedItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("NewsT") %>' Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt" ForeColor="Purple" Font-Underline="True"></asp:Label><br />
                        &nbsp;&nbsp;<br />
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderColor="Transparent"
                            BorderWidth="0px" ForeColor="#003399" Height="123px" Text='<%# Eval("News") %>' TextMode="MultiLine"
                            Width="791px" Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt"></asp:TextBox><br />
                        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
                        <asp:Image ID="Image1" runat="server" BackColor="Transparent" BorderColor="Transparent"
                            BorderWidth="0px" EnableTheming="True" ImageUrl='<%# Eval("NId","CategoriesImage3.aspx?id={0}") %>' />
                    </SelectedItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Select" Text='<%# Eval("NewsT") %>' Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>&nbsp;</td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="2" style="width: 466px; height: 18px"
                valign="top">
                &nbsp; &nbsp; &nbsp; &nbsp;<br />
                <br />
            </td>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

