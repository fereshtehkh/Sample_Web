<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="FaniInfoForMembers.aspx.cs" Inherits="FaniInfoForMembers" Title="مشاهده اطلاعات فنی" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 1px; height: 428px">
        <tr>
            <td colspan="5" style="height: 33px">
                <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="39px"></asp:TextBox>
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tFani.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td style="width: 7px; height: 15px">
                <asp:Button ID="btnSearchM" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="Purple" OnClick="btnSearchM_Click" Text="جستجو" Width="78px" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="Purple" OnClick="Button1_Click" Text="کل اطلاعات" /></td>
            <td align="right" dir="rtl" style="height: 15px">
                <asp:DropDownList ID="ddlSys" runat="server" AutoPostBack="True" CausesValidation="True"
                    DataSourceID="SqlDataSource2" DataTextField="SysType" DataValueField="SysTId"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Navy" 
                     Width="143px">
                </asp:DropDownList>
                &nbsp;&nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT [SysTId], [SysType] FROM [SystemType]"></asp:SqlDataSource>
            </td>
            <td style="height: 15px">
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    ForeColor="Purple" Text="نوع"></asp:Label></td>
            <td align="right" dir="rtl" style="color: #000000; height: 15px">
                <asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="MarkNam" DataValueField="MarkId" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="Navy" 
                     TabIndex="1" Width="146px">
                </asp:DropDownList>&nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT [MarkId], [MarkNam] FROM [Marks]"></asp:SqlDataSource>
            </td>
            <td style="width: 4px; height: 15px">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    ForeColor="Purple" Text="مارک"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 8px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3"
                    Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Small" OnRowCommand="GridView1_RowCommand" UseAccessibleHeader="False"
                    Width="497px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#000066" />
                    <Columns>
                        <asp:BoundField DataField="ModelId" HeaderText="کد">
                            <ItemStyle Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MarkNam" HeaderText="مارک">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SysType" HeaderText="نوع">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Model" HeaderText="مدل">
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MarkId" />
                        <asp:ButtonField CommandName="ViewDetails" Text="انتخاب">
                            <ItemStyle ForeColor="Purple" Width="50px" />
                        </asp:ButtonField>
                    </Columns>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                        ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 8px" valign="top">
                <table style="width: 470px">
                    <tr>
                        <td align="right" colspan="4" style="height: 15px" valign="top">
                            <asp:TextBox ID="txtNameM" runat="server" BackColor="Khaki" BorderWidth="0px" Font-Bold="True"
                                Font-Names="Tahoma" Font-Size="10pt" ForeColor="#CC0000" Visible="False" Width="495px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 1px; height: 24px" valign="top">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#C00000" Text="نوع اطلاعات فنی" Visible="False" Width="92px"></asp:Label>
                        </td>
                        <td style="width: 405px; height: 24px" dir="ltr">
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                                DataTextField="FaniType" DataValueField="FaniTId" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="Navy" TabIndex="1" Visible="False" Width="189px">
                            </asp:DropDownList></td>
                        <td style="width: 170px; height: 24px">
                            <asp:Button ID="btnFilterFani" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#CC3300" OnClick="btnFilterFani_Click" Text="جستجو"
                                Visible="False" Width="90px" /></td>
                        <td align="right" style="width: 5px; height: 24px" valign="top">
                            <asp:Button ID="btnAllFan" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#CC3300" Height="20px" OnClick="btnAllFan_Click" Text="کل اطلاعات"
                                Visible="False" Width="90px" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 1px; height: 24px" valign="top">
                        </td>
                        <td style="width: 405px; height: 24px">
                            &nbsp;
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                                SelectCommand="SELECT [FaniTId], [FaniType] FROM [FaniType]"></asp:SqlDataSource>
                        </td>
                        <td style="width: 170px; height: 24px">
                        </td>
                        <td align="right" style="width: 5px; height: 24px" valign="top">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 8px" valign="top">
                <table style="width: 236px">
                    <tr>
                        <td align="right" valign="top" style="width: 508px" colspan="3">
                            &nbsp; &nbsp;<asp:GridView ID="grdMWire" runat="server" AutoGenerateColumns="False"
                                CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" GridLines="None"
                                Height="91px"  Visible="False" Width="493px">
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="FInfoId" HeaderText="کد" Visible="False" />
                                    <asp:BoundField DataField="FaniType" HeaderText="نوع" />
                                    <asp:HyperLinkField DataNavigateUrlFields="FFileF" DataNavigateUrlFormatString="~/Fani/{0}"
                                        DataTextField="FFileF" HeaderText="فايل">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:HyperLinkField>
                                </Columns>
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 154px; width: 508px;">
                            <asp:GridView ID="GrdFText" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                                DataKeyNames="FTexId" Font-Names="Tahoma" Font-Size="8pt" Visible="False" Width="505px">
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <Columns>
                                    <asp:BoundField DataField="FaniType" HeaderText="نوع اطلاعات فنی" />
                                    <asp:TemplateField HeaderText="متن اطلاعات">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#003399"
                                                Height="81px" Text='<%# Bind("FDescript") %>' TextMode="MultiLine" Width="314px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("FDescript") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="300px" />
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 29px" valign="top">
            </td>
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
            <td align="right" colspan="3" dir="rtl" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="154px" TextMode="MultiLine" Width="244px">با انتخاب مارک و يا نوع  و کليک  بر روی دکمه جستجو می توانيد به مدلهای مختلف دسترسی پيدا کنيد. با کليک روی  دکمه انتخاب هر مدل به فايلهای مختلف  دسترسی پيدا می کنيد  البته  باز می توانيد نوع اطلاعات فنی را از ليست انتخاب  و بر حسب آيتم جستجو کنيد و يا کل اطلاعات را کليک کرده و همه را ببينيد اطلاعات  به صورت متنی يا فايل می باشد. با کليک روی نام هر فايل می توانيد فايل را باز کنيد يا در محل مشخص از درايوتان ذخيره کنيد.</asp:TextBox></td>
        </tr>
        </table>
</asp:Content>

