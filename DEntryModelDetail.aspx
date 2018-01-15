<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryModelDetail.aspx.cs" Inherits="DEntryModelDetail" Title="ورود اطلاعات مدل" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tModel.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 122px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="100px" OnItemDeleting="DetailsView1_ItemDeleting" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="504px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:TemplateField HeaderText="مارک" SortExpression="MarkId">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlMark" runat="server" DataSourceID="SqlDataSource1" DataTextField="MarkNam"
                                    DataValueField="MarkId" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                    SelectedValue='<%# Bind("MarkId") %>' Width="170px">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlMark" runat="server" DataSourceID="SqlDataSource1" DataTextField="MarkNam"
                                    DataValueField="MarkId" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                    SelectedValue='<%# Bind("MarkId") %>' Width="170px">
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# GetMarkName((int)Eval("MarkId")) %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="100px" />
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="نوع سيستم" SortExpression="SysTId">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlSys" runat="server" DataSourceID="SqlDataSource2" DataTextField="SysType"
                                    DataValueField="SysTId" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                    SelectedValue='<%# Bind("SysTId") %>' Width="170px">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlSys" runat="server" DataSourceID="SqlDataSource2" DataTextField="SysType"
                                    DataValueField="SysTId" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                    SelectedValue='<%# Bind("SysTId") %>' Width="170px">
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# GetSysName((int)Eval("SysTId")) %>'></asp:Label>&nbsp;
                            </ItemTemplate>
                            <HeaderStyle Width="100px" />
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Model" HeaderText="مدل">
                            <HeaderStyle Width="100px" />
                            <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="ذخيره" ForeColor="#FFFF00"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="انصراف" ForeColor="#FFFF00"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                            </ItemTemplate>
                            <HeaderStyle Width="100px" />
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح" InsertText="ورود اطلاعات"
                            NewText="جديد" SelectText="انتخاب" ShowDeleteButton="True" ShowEditButton="True"
                            UpdateText="دخيره">
                            <HeaderStyle Width="100px" />
                            <ItemStyle Width="300px" />
                        </asp:CommandField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DEntryModel.aspx" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#CC3300">برگشت به لیست</asp:HyperLink><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
        SelectCommand="SELECT [SysTId], [SysType] FROM [SystemType]"></asp:SqlDataSource>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
        SelectCommand="SELECT [MarkId], [MarkNam] FROM [Marks]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
        DataTextField="SysType" DataValueField="SysTId" Visible="False">
    </asp:DropDownList><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="MarkNam" DataValueField="MarkId" Visible="False">
    </asp:DropDownList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 251px; height: 165px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 11px"
                valign="top">
                <span style="font-size: 9pt; color: #ff0000"><strong style="background-color: #ffff99">راهنما</strong></span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Height="130px" TextMode="MultiLine" Width="244px" BackColor="Cornsilk" BorderColor="SteelBlue" BorderWidth="1px">تصحيح: دکمه تصحيح را کليک کنيد، سپس هر آيتمی که می خواهيد تغيير دهيد و سپس دکمه ذخيره را کليک کنيد.                                    حذف:با کليک دکمه حذف اطلاعات آيتم منتخب حذف می شود.                                                    ورود اطلاعات جديد: کل اطلاعات را وارد کنيد و دکمه ذخيره را کليک کنيد.                                                           انصراف: صرفنظر از انجام عمليات می باشد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

