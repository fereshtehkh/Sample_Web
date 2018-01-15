<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="ChangePassMemb.aspx.cs" Inherits="ChangePassMemb" Title="تغيير رمز عبور نماينده" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 45px">
        <tr>
            <td colspan="3">
                <asp:TextBox ID="txtCatId" runat="server" Visible="False" Width="20px">0</asp:TextBox>
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/MembPass.gif"
                    Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="CategoryID" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating" Width="505px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام مسئول" ReadOnly="True">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" ForeColor="Blue" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SrCode" HeaderText=" نام کاربری" ReadOnly="True">
                            <ItemStyle Width="50px" Font-Names="Tahoma" Font-Size="Small" ForeColor="Blue" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Password" HeaderText="رمز عبور">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:CommandField CancelText="انصراف" DeleteText="" EditText="تغيير رمز" InsertText=""
                            NewText="" ShowEditButton="True" UpdateText="ذخيره رمز">
                            <ItemStyle Width="55px" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF8000" />
                        </asp:CommandField>
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
            <td>
            </td>
            <td>
            </td>
            <td>
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
                    Height="116px" TextMode="MultiLine" Width="244px">تغيير رمز: دکمه تغيير رمز را کليک نماييد سپس در قسمت رمز عبور می توانيد رمز عبور را تغيير دهيد و سپس دکمه ذخيره رمز را کليک نماييد. رمز عبور شما به رمز جديد تغيير پيدا میکند.                                                                 انصراف: از انجام تغيير رمز منصرف شده ايد پس انصراف را کليک نماييد تا رمز به رمز جديد تغيير پيدا نکند.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

