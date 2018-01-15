<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryIso.aspx.cs" Inherits="DEntryIso" Title="ورود اطلاعات ايزو" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 1px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 766px; height: 26px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/iso.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 766px; height: 114px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="300px" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="510px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:TemplateField HeaderText="متن ايزو">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="X-Small" ForeColor="Navy" Height="292px" Text='<%# Bind("IsoText") %>'
                                    TextMode="MultiLine" Width="454px"></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Navy" Height="292px" ReadOnly="True"
                                    Text='<%# Bind("IsoText") %>' TextMode="MultiLine" Width="453px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#FF6600" Text="ذخيره"></asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#FF6600" Text="انصراف"></asp:LinkButton>&nbsp;
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="" EditText="تصحيح" InsertText=""
                            NewText="" SelectText="انتخاب" ShowDeleteButton="True" ShowEditButton="True"
                            UpdateText="ذخيره" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 251px; height: 165px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 11px"
                valign="top">
                <span style="font-size: 9pt; color: #ff0000"><strong style="background-color: #ffff66">
                    راهنما</strong></span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="LightYellow" BorderColor="AliceBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="62px" TextMode="MultiLine" Width="244px">تصحيح: دکمه تصحيح را کليک کنيد، سپس آيتم متن ايزو را تغيير دهيد و سپس دکمه ذخيره را کليک کنيد.                                                           </asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

