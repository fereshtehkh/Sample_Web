<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryLHomeDetails.aspx.cs" Inherits="DEntryLHomeDetails" Title="ورود اطلاعات لوازم" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image7" runat="server" Height="29px" ImageUrl="~/Images/t7.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 122px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="300px"  OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="504px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="LHomeT" HeaderText="عنوان لوازم" />
                        <asp:TemplateField HeaderText="توضيحات">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="157px" Text='<%# Bind("Descript") %>'
                                    TextMode="MultiLine" Width="458px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003399"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="157px" ReadOnly="True" Text='<%# Bind("Descript") %>'
                                    TextMode="MultiLine" Width="458px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003399"></asp:TextBox>&nbsp;
                            </ItemTemplate>
                            <ItemStyle Width="300px" HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="تصوير ">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="fuPicture" runat="server" Width="365px" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="LFinal" HeaderText="آخرين محصول" />
                        <asp:TemplateField HeaderText="نوع لوازم" SortExpression="LtId">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;<asp:DropDownList ID="ddlType" runat="server" DataSourceID="SqlDataSLtypes"
                                    DataTextField="Ltype" DataValueField="LtId" SelectedValue='<%# Bind("LtId") %>'
                                    Width="190px" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399">
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# GetLTypeName((int)Eval("LtId")) %>' Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#660000"></asp:Label>&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="ذخيره" ForeColor="#FFFF00"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="انصراف" ForeColor="#FFFF00"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح" InsertText="ورود اطلاعات"
                            NewText="جديد" SelectText="انتخاب" UpdateText="دخيره" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DEntryLHome.aspx" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#CC3300">برگشت به لیست</asp:HyperLink><br />
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
<asp:DropDownList ID="ddlType1" runat="server" DataSourceID="SqlDataSLtypes" DataTextField="Ltype"
                                    DataValueField="LtId" SelectedValue='<%# Bind("LtId") %>' Width="201px" Visible="False">
                                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSLtypes" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
    SelectCommand="SELECT [LtId], [Ltype] FROM [LType]" ProviderName="<%$ ConnectionStrings:pasarga_dbConnectionString.ProviderName %>"></asp:SqlDataSource>
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
                    ForeColor="#003399" Height="130px" TextMode="MultiLine" Width="244px" BackColor="Cornsilk" BorderColor="SteelBlue" BorderWidth="1px">ورود اطلاعات جديد: کل اطلاعات را وارد کنيد و دکمه ذخيره را کليک کنيد.                                                         انصراف: صرفنظر از انجام عمليات می باشد</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

