<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryNewsDetails.aspx.cs" Inherits="DEntryNewsDetails" Title="ورود اطلاعات اخبار" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 1px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 766px; height: 26px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t4.gif" Width="238px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 766px; height: 114px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" Height="300px" OnItemDeleting="DetailsView1_ItemDeleting"
                    OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating"
                    OnModeChanging="DetailsView1_ModeChanging" Width="510px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <Fields>
                        <asp:TemplateField HeaderText="عنوان">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True" Font-Italic="True"
                                    Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True" ForeColor="#993300"
                                    Height="40px" Text='<%# Bind("NewsT") %>' TextMode="MultiLine"
                                    Width="453px"></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True" Font-Italic="True"
                                    Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True" ForeColor="#993300"
                                    Height="40px" Text='<%# Bind("NewsT") %>' TextMode="MultiLine"
                                    Width="453px"></asp:TextBox>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Italic="True" Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True"
                                    ForeColor="#993300" Height="40px" ReadOnly="True" Text='<%# Bind("NewsT") %>'
                                    TextMode="MultiLine" Width="453px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="خبر">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="X-Small" ForeColor="Navy" Height="292px" Text='<%# Bind("News") %>'
                                    TextMode="MultiLine" Width="454px"></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="X-Small" ForeColor="Navy" Height="292px" Text='<%# Bind("News") %>'
                                    TextMode="MultiLine" Width="455px"></asp:TextBox>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Navy" Height="292px" ReadOnly="True"
                                    Text='<%# Bind("News") %>' TextMode="MultiLine" Width="453px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="تصوير">
                            <EditItemTemplate>
                                <asp:FileUpload ID="fuPicture" runat="server" Width="393px" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="fuPicture" runat="server" Width="393px" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("NId","CategoriesImage3.aspx?id={0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DEntryNews.aspx" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#CC3300">برگشت به لیست</asp:HyperLink><br />
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
                <span style="font-size: 9pt; color: #ff0000"><strong style="background-color: #ffff99">
                    راهنما</strong></span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="130px" TextMode="MultiLine" Width="244px">تصحيح: دکمه تصحيح را کليک کنيد، سپس هر آيتمی که می خواهيد تغيير دهيد و سپس دکمه ذخيره را کليک کنيد.                                    حذف:با کليک دکمه حذف اطلاعات آيتم منتخب حذف می شود.                                                    ورود اطلاعات جديد: کل اطلاعات را وارد کنيد و دکمه ذخيره را کليک کنيد.                                                           انصراف: صرفنظر از انجام عمليات می باشد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

