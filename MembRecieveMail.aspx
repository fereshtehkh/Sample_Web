<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="MembRecieveMail.aspx.cs" Inherits="MembRecieveMail" Title="نامه های دريافتی نماينده از مديريت" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td colspan="6" style="height: 33px">
                <asp:TextBox ID="txtSmId" runat="server" Width="32px" Visible="False">1</asp:TextBox>
                <asp:TextBox ID="txtCatId" runat="server" Width="33px" Visible="False">1</asp:TextBox>
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/MRM.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="1" dir="rtl" rowspan="1" style="width: 365px; height: 105px"
                valign="top">
                <asp:GridView ID="grdFile" runat="server" AutoGenerateColumns="False" Height="70px"
                    Width="127px" CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="SMId" HeaderText="کد" Visible="False" />
                        <asp:BoundField DataField="FilePath" HeaderText="مسيرفايل" Visible="False" />
                        <asp:BoundField DataField="FileName" HeaderText="نام فايل" Visible="False" >
                            <ItemStyle Width="60px" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="FileName" DataNavigateUrlFormatString="~/Uploads/{0}"
                            DataTextField="FileName" HeaderText="فايلهای ارسالی" >
                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                            <HeaderStyle ForeColor="White" HorizontalAlign="Center" />
                        </asp:HyperLinkField>
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
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:GridView ID="grdMails" runat="server" AutoGenerateColumns="False"
                    Height="45px" OnRowCommand="grdMails_RowCommand" Width="374px" PageSize="3" CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="SMId" HeaderText="کد" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SmDate" HeaderText="تاريخ" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SmSubject" HeaderText="موضوع" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="sChkR" HeaderText="مشاهده شد">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CheckBoxField>
                        <asp:ButtonField CommandName="ViewDetails" Text="شرح جزئيات" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="Purple" HorizontalAlign="Center" Width="70px" />
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
            <td align="right" colspan="6" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False"
                    CellPadding="4" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="132px" Width="279px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="SmDate" HeaderText="تاريخ" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SmSubject" HeaderText="موضوع" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="متن">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="9pt"
                                    ForeColor="#003399" Height="133px" ReadOnly="True" Text='<%# Bind("SmText") %>'
                                    TextMode="MultiLine" Width="453px"></asp:TextBox>&nbsp;
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="6" dir="rtl" rowspan="1" style="height: 17px" valign="top">
                <asp:Button ID="btnAnswer" runat="server" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#804040"
                    OnClick="btnAnswer_Click" Text="مشاهده و پاسخ به نامه مديريت" Visible="False" BackColor="BlanchedAlmond" Font-Bold="False" Font-Italic="False" Font-Underline="False" /></td>
        </tr>
        <tr>
            <td align="right" colspan="6" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SMDId"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                    Width="505px" Font-Names="Tahoma" Font-Size="8pt" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:CheckBoxField DataField="sChkR" HeaderText="مشاهده شد" />
                        <asp:TemplateField HeaderText="متن پاسخ">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="81px" Text='<%# Bind("SAnswer") %>'
                                    TextMode="MultiLine" Width="314px" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#003399"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("SAnswer") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>
                        <asp:CommandField DeleteText="" EditText="تصحيح" InsertText="" NewText="" ShowEditButton="True"
                            UpdateText="ذخيره" CancelText="انصراف">
                            <ItemStyle Width="55px" ForeColor="#004000" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <br />
                <br />
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
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="177px" TextMode="MultiLine" Width="244px">نامه های ارسالی مديريت به نماينده: با کليک روی شرح جزئيات هر آيتم از ليست می توانيد به متن و فايلهای ارسالی دسترسی پيدا کنيد. در صورت وجود فايل ارسالی، روی هريک کليک نماييد تا آن را مشاهده يا ذخيره کنيد.                                                                مشاهده: روی دکمه تصحيح کليک کنيد و در صورت مشاهده نامه مزبور تيک مشاهده شد را بزنيد. اگر می خواهيد پاسخ به مديريت نيز بدهيد متن را یادداشت کنيد و دکمه ذخيره را حتما بزنيد.                                                                     انصراف: عدم تمايل به ذخيره سازی مطلب است.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

