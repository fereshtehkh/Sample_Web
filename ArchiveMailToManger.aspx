<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="ArchiveMailToManger.aspx.cs" Inherits="ArchiveMailToManger" Title="آرشيو نامه های نماينده جاری به مديريت" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td colspan="5" style="height: 33px">
                <asp:TextBox ID="txtCatId" runat="server" Visible="False" Width="23px">1</asp:TextBox>
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/AMM2.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 17px" valign="top">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Height="19px" Text="Label" Width="178px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:GridView ID="grdMails" runat="server" AutoGenerateColumns="False"
                    Height="83px" OnRowCommand="grdMails_RowCommand" Width="509px" CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="MMailId" HeaderText="کد" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mDate" HeaderText="تاريخ" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mTitle" HeaderText="موضوع" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="ViewDetails" Text="شرح جزئيات" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="Purple" HorizontalAlign="Center" />
                        </asp:ButtonField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False"
                    CellPadding="4" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="214px" Width="265px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="mDate" HeaderText="تاريخ" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mTitle" HeaderText="موضوع" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="متن نامه به مديريت">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="9pt"
                                    ForeColor="#003399" Height="157px" ReadOnly="True" Text='<%# Bind("mText") %>'
                                    TextMode="MultiLine" Width="455px"></asp:TextBox>&nbsp;
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="mcheck" Text="دريافت مديريت" />
                        <asp:TemplateField HeaderText="متن پاسخ مديريت">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtAnswer" runat="server" BorderWidth="0px" Font-Names="Tahoma"
                                    Font-Size="9pt" ForeColor="#003399" Height="157px" ReadOnly="True" Text='<%# Bind("mAnswer") %>'
                                    TextMode="MultiLine" Width="456px"></asp:TextBox>
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
    <br />
    <br />
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
                    Height="59px" TextMode="MultiLine" Width="244px">با انتخاب و کليک روی شرح جزئيات هر نامه ارسالی به مديريت، به متن و  پاسخ دسترسی پيدا می کنيد. </asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

