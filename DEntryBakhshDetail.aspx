<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryBakhshDetail.aspx.cs" Inherits="DEntryBakhshDetail" Title="ورود اطلاعات بخشنامه ها" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 1px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 766px; height: 26px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t6.gif" Width="300px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 766px; height: 114px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="300px" OnItemDeleting="DetailsView1_ItemDeleting" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="510px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:TemplateField HeaderText="عنوان ">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True" Font-Italic="True"
                                    Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True" ForeColor="#993300"
                                    Height="40px" Text='<%# Bind("BTitle") %>' TextMode="MultiLine" Width="453px"></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True" Font-Italic="True"
                                    Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True" ForeColor="#993300"
                                    Height="40px" Text='<%# Bind("BTitle") %>' TextMode="MultiLine" Width="453px"></asp:TextBox>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Italic="True" Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True"
                                    ForeColor="#993300" Height="40px" ReadOnly="True" Text='<%# Bind("BTitle") %>'
                                    TextMode="MultiLine" Width="453px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="بخشنامه">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="X-Small" ForeColor="Navy" Height="292px" Text='<%# Bind("BDescript") %>'
                                    TextMode="MultiLine" Width="454px"></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="X-Small" ForeColor="Navy" Height="292px" Text='<%# Bind("BDescript") %>'
                                    TextMode="MultiLine" Width="455px"></asp:TextBox>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Navy" Height="292px" ReadOnly="True"
                                    Text='<%# Bind("BDescript") %>' TextMode="MultiLine" Width="453px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="chkImp" Text="مهم برای مشاهده نماينده" />
                        <asp:TemplateField>
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="ذخيره" ForeColor="#FFFF00"></asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="انصراف" ForeColor="#FFFF00"></asp:LinkButton>&nbsp;
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح" InsertText="ورود اطلاعات"
                            NewText="جديد" SelectText="انتخاب" ShowDeleteButton="True" ShowEditButton="True"
                            UpdateText="ذخيره" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DEntryBakhsh.aspx" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#CC3300">برگشت به لیست</asp:HyperLink><br />
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
                    ForeColor="#003399" Height="130px" TextMode="MultiLine" Width="244px" BackColor="Cornsilk" BorderColor="SteelBlue" BorderWidth="1px">تصحيح: دکمه تصحيح را کليک کنيد، سپس هر آيتمی که می خواهيد تغيير دهيد و سپس دکمه ذخيره را کليک کنيد.                                            حذف:با کليک دکمه حذف اطلاعات آيتم منتخب حذف می شود.                                                    ورود اطلاعات جديد: کل اطلاعات را وارد کنيد و دکمه ذخيره را کليک نماييد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

