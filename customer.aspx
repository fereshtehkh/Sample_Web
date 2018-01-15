<%@ Page Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="customer" Title="درخواست مشتری" Description="درخواست خدماتی مشتريان جهت خدمات لوازم خانگی" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 800px; height: 83px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/customer.gif"
                    Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 122px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="300px" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="785px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="CuName" HeaderText="نام" >
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                            <ItemStyle ForeColor="Navy" Width="70px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CuPhone" HeaderText="تلفن" >
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                            <ItemStyle ForeColor="Navy" Width="70px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="آدرس">
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CuAddress") %>' Width="610px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("CuAddress") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                            <ItemStyle ForeColor="Navy" Width="70px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="CuSysType" HeaderText="نوع دستگاه">
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                            <ItemStyle ForeColor="Navy" Width="70px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="نوع درخواست">
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                                    ForeColor="#003399" SelectedValue='<%# Bind("CuReqType") %>' Width="161px">
                                    <asp:ListItem Selected="True">تعمير</asp:ListItem>
                                    <asp:ListItem>نصب</asp:ListItem>
                                    <asp:ListItem>موارد ديگر</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("CuReqType") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                            <ItemStyle ForeColor="Navy" Width="70px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="توضيحات">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003399"
                                    Height="157px" Text='<%# Bind("CuDescript") %>' TextMode="MultiLine" Width="758px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003399"
                                    Height="157px" ReadOnly="True" Text='<%# Bind("CuDescript") %>' TextMode="MultiLine"
                                    Width="762px" BorderWidth="0px"></asp:TextBox>&nbsp;
                            </ItemTemplate>
                            <ItemStyle Width="300px" ForeColor="Navy" />
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="تاريخ">
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" ReadOnly="True" Text='<%# Bind("CuDate") %>'
                                    Visible="False"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("CuDate") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" Width="250px" />
                            <ItemStyle ForeColor="Navy" Width="70px" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#FFFF66" Text="ارسال"></asp:LinkButton>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                            </ItemTemplate>
                            <HeaderStyle Width="250px" />
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح" InsertText="ورود اطلاعات"
                            NewText="جديد" SelectText="انتخاب" UpdateText="دخيره" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                &nbsp; &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                    ForeColor="#FF3300"></asp:Label><br />
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

