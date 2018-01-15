<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="ArchiveBakhshnameh.aspx.cs" Inherits="ArchiveBakhshnameh" Title="بخشنامه ها" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 266px">
        <tr>
            <td align="right" colspan="5" dir="rtl" style="width: 466px; height: 33px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t6.gif" Width="300px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="2" style="width: 220px; height: 250px"
                valign="top">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="BId" Font-Bold="False"
                    Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                    Height="237px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="1"
                    Width="490px">
                    <EditItemTemplate>
                        <br />
                    </EditItemTemplate>
                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>
                    <SelectedItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                            Font-Size="9pt" ForeColor="Purple" Text='<%# Eval("BTitle") %>' Font-Underline="True"></asp:Label>&nbsp;<br />
                        &nbsp;&nbsp;<br />
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderColor="Transparent"
                            BorderWidth="0px" ForeColor="#003399" Height="269px" Text='<%# Eval("BDescript") %>'
                            TextMode="MultiLine" Width="435px" Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt"></asp:TextBox><br />
                        &nbsp;&nbsp;
                    </SelectedItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Select" Font-Bold="True"
                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" Text='<%# Eval("BTitle") %>'></asp:LinkButton>
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
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
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
                    Height="44px" TextMode="MultiLine" Width="244px">با انتخاب و کليک روی هر آيتم بخشنامه ، اطلاعات متنی آن مشاهده می شود.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

