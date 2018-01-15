<%@ Page Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="LHomeDetails.aspx.cs" Inherits="LHomeDetails" Title="لوازم خانگی" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    &nbsp;<table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px; height: 26px">
                <asp:Image ID="Image7" runat="server" Height="29px" ImageUrl="~/Images/t7.gif" Width="178px" />
                <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="66px">1</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px; height: 26px">
                <table style="width: 800px; height: 1px;">
                    <tr>
                        <td style="width: 56px; height: 32px;" align="right" valign="top">
                            <span style="font-size: 8pt; color: #660066">انواع لوازم:</span></td>
                        <td style="width: 450px; height: 32px" align="right" valign="top">
                            <asp:DropDownList ID="ddlLType" runat="server" AutoPostBack="True" DataSourceID="SqlDataLType"
                                DataTextField="Ltype" DataValueField="LtId" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="X-Small" ForeColor="Navy"  TabIndex="1" Width="198px" OnSelectedIndexChanged="ddlLType_SelectedIndexChanged">
                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataLType" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                                SelectCommand="SELECT [LtId], [Ltype] FROM [LType]"></asp:SqlDataSource>
                        </td>
                        <td style="width: 4px; height: 32px;" align="right" valign="top">
                            <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Tahoma"
                                Font-Size="10pt" Font-Underline="True" ForeColor="#CC0066" BackColor="#FFFFFF" Width="268px"></asp:Label></td>
                        <td style="width: 4px; height: 32px;" align="right" valign="top">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltl" style="width: 822px; height: 114px"
                valign="top">
                &nbsp;<asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="LId"
                    ForeColor="#333333"  
                     OnSelectedIndexChanged="DataList1_SelectedIndexChanged"
                     RepeatColumns="1" Width="823px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" OnItemCommand="DataList1_ItemCommand"  >
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" />
                    <EditItemTemplate>
                        <span style="font-size: 8pt; color: #660066"></span>
                        <br />
                        <span style="font-size: 8pt; color: #660066"><strong dir="rtl">&nbsp;&nbsp; &nbsp;</strong></span><br />
                        <span style="font-size: 8pt; color: #660066"></span>
                        <br />
                        &nbsp; &nbsp;
                    </EditItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Font-Italic="False" Font-Names="Tahoma" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Top" />
                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>
                    <HeaderTemplate>
                        ليست لوازم خانگی
                    </HeaderTemplate>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" />
                    <SelectedItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("LHomeT") %>' Font-Bold="True" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#990066"></asp:Label><br />
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Descript") %>' BackColor="Transparent" BorderColor="Transparent" BorderWidth="0px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003366" Height="288px" TextMode="MultiLine" Width="778px" ReadOnly="True"></asp:TextBox>&nbsp;<br />
                        &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("LId","CategoriesImage2.aspx?id={0}") %>' EnableTheming="True" /><br />
                        &nbsp; &nbsp; &nbsp;
                    </SelectedItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Select" Font-Bold="True"
                            Font-Names="Tahoma" Font-Size="10pt" ForeColor="#990066" Text='<%# Eval("LHomeT") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                &nbsp; &nbsp; 
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        </table>
</asp:Content>

