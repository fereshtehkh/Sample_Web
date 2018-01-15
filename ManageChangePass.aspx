<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="ManageChangePass.aspx.cs" Inherits="ManageChangePass" Title="تغيير رمز عبور مديريت" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/ManagePass.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 116px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="97px" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="245px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="username" HeaderText="نام کاربری" >
                            <HeaderStyle ForeColor="Purple" Width="60px" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Pass" HeaderText="رمز عبور" >
                            <HeaderStyle ForeColor="Purple" Width="60px" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="" EditText="تصحيح" InsertText=""
                            NewText="" SelectText="انتخاب" ShowDeleteButton="True" ShowEditButton="True"
                            UpdateText="دخيره" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                &nbsp; &nbsp;&nbsp;&nbsp;
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
                    Height="128px" TextMode="MultiLine" Width="244px">تصحيح: دکمه تصحيح را کليک نماييد سپس در قسمت  نام کاربری و رمز عبور می توانيد نام کاربری و رمز عبور را تغيير دهيد و سپس دکمه ذخيره  را کليک نماييد. نام کاربری يا رمز عبور شما به نام کاربری يا رمز جديد تغيير پيدا میکند.                                                                 انصراف: در صورت عدم تمايل به تغيير رمز يا نام کاربری دکمه انصراف را کليک نماييد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

