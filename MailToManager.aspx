<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="MailToManager.aspx.cs" Inherits="MailToManager" Title="ارسال نامه از نماينده به مديريت" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 500px; height: 83px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/MTM.gif"
                    Width="178px" />
                <asp:TextBox ID="txtCatId" runat="server" Visible="False" Width="19px">0</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 19px;
                text-align: center">
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Height="19px" Text="Label" Width="178px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 122px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="210px" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="500px">
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
                        <asp:TemplateField HeaderText="متن نامه">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003399"
                                    Height="157px" Text='<%# Bind("mText") %>' TextMode="MultiLine" Width="444px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="9pt"
                                    ForeColor="#003399" Height="157px" ReadOnly="True" Text='<%# Bind("mText") %>'
                                    TextMode="MultiLine" Width="451px"></asp:TextBox>&nbsp;
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#FFFF66" Text="ارسال"></asp:LinkButton>&nbsp;
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
                &nbsp; &nbsp;&nbsp;
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
                    Height="71px" TextMode="MultiLine" Width="244px">برای ارسال نامه از نماينده به مديريت : تاريخ ، موضوع و متن را وارد کنيد و تايپ نماييد و دکمه ارسال را کليک نماييد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

