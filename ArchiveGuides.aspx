<%@ Page Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="ArchiveGuides.aspx.cs" Inherits="ArchiveGuides" Title="راهنما و مقالات" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 800px">
        <tr>
            <td align="right" colspan="5" dir="rtl" style="width: 466px; height: 33px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t5.gif" Width="234px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="2" style="width: 466px; height: 250px"
                valign="top">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="GId" Font-Bold="False"
                    Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                    Height="237px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="1"
                    Width="820px">
                    <EditItemTemplate>
                        <br />
                    </EditItemTemplate>
                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>
                    <SelectedItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                            Font-Size="9pt" ForeColor="Purple" Text='<%# Eval("GTitle") %>' Font-Underline="True"></asp:Label>&nbsp;<br />
                        &nbsp;&nbsp;<br />
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderColor="Transparent"
                            BorderWidth="0px" ForeColor="#003399" Height="142px" Text='<%# Eval("GText") %>'
                            TextMode="MultiLine" Width="791px" Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt"></asp:TextBox><br />
                        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Image ID="Image1" runat="server" BackColor="Transparent" BorderColor="Transparent"
                            BorderWidth="0px" EnableTheming="True" ImageUrl='<%# Eval("GId","CategoriesImage4.aspx?id={0}") %>' />
                    </SelectedItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Select" Font-Bold="True"
                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" Text='<%# Eval("GTitle") %>'></asp:LinkButton>
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

