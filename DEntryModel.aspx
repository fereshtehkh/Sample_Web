<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryModel.aspx.cs" Inherits="DEntryModel" Title="ورود اطلاعات مدل" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 1px; height: 428px">
        <tr>
            <td colspan="5" style="height: 33px">
                <table>
                    <tr>
                        <td align="right" colspan="3" style="height: 31px">
                            <asp:Image ID="Image1" runat="server" Height="29px" ImageUrl="~/Images/tMarkType.gif"
                                Width="178px" /></td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" style="width: 15px; height: 123px" valign="top">
                            &nbsp; &nbsp;
                        </td>
                        <td align="right" dir="rtl" style="width: 427px; height: 123px" valign="top">
                            &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#CC3300" Text="نوع"></asp:Label>
                            &nbsp;
                            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False"
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                                DataKeyNames="SysTId" DataSourceID="SqlDataSource3" EmptyDataText='No records available. Click the "Back to list" link to view the list of products.'
                                Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" GridLines="None" Height="58px"
                                Width="143px">
                                <FooterStyle BackColor="Tan" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <Fields>
                                    <asp:BoundField DataField="SysTId" HeaderText="کد" InsertVisible="False" ReadOnly="True"
                                        SortExpression="SysTId" />
                                    <asp:BoundField DataField="SysType" HeaderText="نوع سيستم" SortExpression="SysType" />
                                    <asp:CommandField CancelText="انصراف" InsertText="ذخيره" NewText="جديد" ShowInsertButton="True"
                                        UpdateText="ذخيره" />
                                </Fields>
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            </asp:DetailsView>
                        </td>
                        <td align="right" dir="rtl" style="width: 246px; height: 123px" valign="top">
                            &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#CC3300" Text="مارک"></asp:Label>
                            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                                DataKeyNames="MarkId" DataSourceID="SqlDataSource4" EmptyDataText='No records available. Click the "Back to list" link to view the list of products.'
                                Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" GridLines="None" Height="93px"
                                Width="134px">
                                <FooterStyle BackColor="Tan" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <Fields>
                                    <asp:BoundField DataField="MarkId" HeaderText="کد" InsertVisible="False" ReadOnly="True"
                                        SortExpression="MarkId">
                                        <HeaderStyle Width="50px" />
                                        <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MarkNam" HeaderText="نام مارک" SortExpression="MarkNam">
                                        <HeaderStyle Width="50px" />
                                        <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح" InsertText="ذخيره"
                                        NewText="جديد" SelectText="انتخاب" ShowInsertButton="True" UpdateText="ذخيره" />
                                </Fields>
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            </asp:DetailsView>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" style="width: 15px; height: 14px" valign="top">
                        </td>
                        <td align="right" dir="rtl" style="width: 427px; height: 14px" valign="top">
                        </td>
                        <td align="right" dir="rtl" style="width: 246px; height: 14px" valign="top">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                                DeleteCommand="DELETE FROM [SystemType] WHERE [SysTId] = @SysTId" InsertCommand="INSERT INTO [SystemType] ([SysType]) VALUES (@SysType)"
                                SelectCommand="SELECT [SysTId], [SysType] FROM [SystemType]" UpdateCommand="UPDATE [SystemType] SET [SysType] = @SysType WHERE [SysTId] = @SysTId">
                                <DeleteParameters>
                                    <asp:Parameter Name="SysTId" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="SysType" Type="String" />
                                    <asp:Parameter Name="SysTId" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="SysType" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                                DeleteCommand="DELETE FROM [Marks] WHERE [MarkId] = @MarkId" InsertCommand="INSERT INTO [Marks] ([MarkNam]) VALUES (@MarkNam)"
                                SelectCommand="SELECT [MarkId], [MarkNam] FROM [Marks]" UpdateCommand="UPDATE [Marks] SET [MarkNam] = @MarkNam WHERE [MarkId] = @MarkId">
                                <DeleteParameters>
                                    <asp:Parameter Name="MarkId" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="MarkNam" Type="String" />
                                    <asp:Parameter Name="MarkId" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="MarkNam" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 33px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tModel.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td style="width: 7px; height: 43px">
                &nbsp;<asp:Button ID="btnSearchM" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" ForeColor="Purple" OnClick="btnSearchM_Click" Text="جستجو"
                    Width="78px" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="Purple" OnClick="Button1_Click" Text="کل اطلاعات" /></td>
            <td align="right" dir="rtl" style="height: 43px">
                <asp:DropDownList ID="ddlSys" runat="server" AutoPostBack="True" CausesValidation="True"
                    DataSourceID="SqlDataSource2" DataTextField="SysType" DataValueField="SysTId"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Navy"
                    Width="143px">
                </asp:DropDownList>
                &nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT [SysTId], [SysType] FROM [SystemType]"></asp:SqlDataSource>
            </td>
            <td style="height: 43px">
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    ForeColor="Purple" Text="نوع"></asp:Label></td>
            <td align="right" dir="rtl" style="height: 43px">
                <asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="MarkNam" DataValueField="MarkId" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="Navy" 
                     TabIndex="1" Width="146px">
                </asp:DropDownList>&nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT [MarkId], [MarkNam] FROM [Marks]"></asp:SqlDataSource>
            </td>
            <td style="width: 4px; height: 43px">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    ForeColor="Purple" Text="مارک"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="5" style="height: 5px">
                <hr />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="5" dir="rtl" rowspan="1" style="height: 10px" valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" NavigateUrl="DEntryModelDetail.aspx?id=-1">ورود اطلاعات جديد</asp:HyperLink><br />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 95px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3"
                    Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Small"  UseAccessibleHeader="False"
                    Width="497px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
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
                        <asp:HyperLinkField DataNavigateUrlFields="ModelId" DataNavigateUrlFormatString="DEntryModelDetail.aspx?id={0}"
                            Text="تصحيح">
                            <ItemStyle Width="50px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:HyperLinkField>
                    </Columns>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                        ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 95px" valign="top">
                <table style="width: 478px">
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#990000" Text="ورود اطلاعات مربوط به مارک" Width="182px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <span style="font-size: 8pt; color: #003399">مارک: &nbsp; &nbsp; "font-size: 8pt; color: #003399">مارک: &nbsp; &nbsp; </span>
                            <asp:DropDownList ID="ddlFani2" runat="server" AutoPostBack="True" DataSourceID="SqlDataFani2"
                                DataTextField="MarkNam" DataValueField="MarkId" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="Navy" TabIndex="1" Width="158px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 41px">
                            <asp:TextBox ID="TextBox3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Height="19px"
                                Width="374px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 22px">
                            <asp:Button ID="btnNew2" runat="server" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#003399" OnClick="btnNew2_Click" Text="جديد" /><asp:Button ID="btnSave2"
                                    runat="server" Enabled="False" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt"
                                    ForeColor="#003399" OnClick="btnSave2_Click" Text="ذخيره" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 22px">
                        </td>
                        <td style="width: 55px; height: 22px">
                            &nbsp;<asp:SqlDataSource ID="SqlDataFani2" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                                SelectCommand="SELECT [MarkId], [MarkNam] FROM [Marks]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
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
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 11px"
                valign="top">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="77px" TextMode="MultiLine" Width="244px">جديد: آيتم جديد از مارک يا نوع را کليک کنيد اطلاعات مارک يا نوع جديد را وارد نماييد و دکمه ذخيره را کليک نماييد.آيتم جديد از مارک يا نوع به ليست شما اضافه می شود.                           انصراف: صرف نظر از انجام عمليات می باشد.</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 100px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="100px" TextMode="MultiLine" Width="244px">جستجو: می توان از ليست مارک يا نوع را انتخاب کنيد تا ليست فيلتر شود.                                  کل اطلاعات: کل ليست نمایان می شود.         تصحيح : وارد صفحه تصحيح اطلاعات میشويد.                                                             ورود اطلاعات جديد: واردصفحه ای می شويد که می توانيد آيتم جديد را وارد کنيد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="73px" TextMode="MultiLine" Width="244px">می توانيد برای اطلاعات ليستی برای هر مارک ، دکمه جديد را کليک نماييد سپس مارک را از ليست انتخاب کنيد و عنوان مربوطه را نيز وارد نماييد  و سپس دکمه ذخيره را کليک کنيد .</asp:TextBox></td>
        </tr>
    </table>
</asp:Content>

