<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="ArchiveMReqPart.aspx.cs" Inherits="ArchiveMReqPart" Title="آرشيو درخواست قطعه نمايندگان از مديريت" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td colspan="5" style="height: 33px">
                <asp:TextBox ID="txtSmId" runat="server" Width="30px" Visible="False">1</asp:TextBox>
                <asp:TextBox ID="txtCatId" runat="server" Width="27px" Visible="False">1</asp:TextBox>
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/AMRP.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:GridView ID="grdMails" runat="server" AutoGenerateColumns="False" Height="21px"
                    OnRowCommand="grdMails_RowCommand" PageSize="3" Width="507px" CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" GridLines="None" OnRowDeleting="grdMails_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="ReqPId" HeaderText="کد" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ReqDate" HeaderText="تاريخ درخواست" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام نماينده" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StateName" HeaderText="استان" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CityName" HeaderText="شهر" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="chkRec" HeaderText="مشاهده شد">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CheckBoxField>
                        <asp:ButtonField CommandName="ViewDetails" Text="شرح جزئيات" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="Purple" HorizontalAlign="Center" />
                        </asp:ButtonField>
                        <asp:CommandField CancelText="" DeleteText="حذف" EditText="" InsertText="" InsertVisible="False"
                            NewText="" SelectText="" ShowCancelButton="False" ShowDeleteButton="True" UpdateText="">
                            <ItemStyle ForeColor="#C00000" Width="20px" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                &nbsp;<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False"
                    CellPadding="4" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="190px" Width="493px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="ReqDate" HeaderText="تاريخ درخواست">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblNam" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                    ForeColor="#CC0000" Text="مشخصات سرويس مجاز" Width="197px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="StateName" HeaderText="استان">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CityName" HeaderText="شهر">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SrCode" HeaderText="کد سرويس مجاز">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام نماينده">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblMoshtarak" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="8pt" ForeColor="#CC0000" Text="مشخصات مشترک" Width="226px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CuName" HeaderText="نام و نام خانوادگی">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CuPhone" HeaderText="شماره تماس">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CuAddress" HeaderText="آدرس">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblSystem" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                    ForeColor="#CC0000" Text="مشخصات دستگاه" Width="203px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="RSysType" HeaderText="نوع دستگاه">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RMark" HeaderText="مارک">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RModel" HeaderText="مدل">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SysSerial" HeaderText="شماره سريال دستگاه">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RSDate" HeaderText="تاريخ نصب دستگاه">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ZemantNo" HeaderText="شماره ضمانت نامه">
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" valign="top">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#CC3300" Text="قطعات درخواستی" Visible="False" Width="160px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 105px" valign="top">
                <asp:GridView ID="grdDetail" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" GridLines="None" Height="45px"
                    OnRowCommand="grdMails_RowCommand" PageSize="3" Visible="False" Width="496px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="RpDId" HeaderText="کد" Visible="False">
                            <ItemStyle Width="0px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PartName" HeaderText="نام قطعه/شرح کالا">
                            <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PNo" HeaderText="تعداد">
                            <ItemStyle Width="40px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PSerial" HeaderText="سريال دستگاه">
                            <ItemStyle Width="80px" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="Garanti" HeaderText="گارانتی">
                            <ItemStyle Width="20px" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="NoGaranti" HeaderText="غيرگارانتی">
                            <ItemStyle Width="20px" />
                        </asp:CheckBoxField>
                        <asp:BoundField DataField="ReqPId" HeaderText="شماره درخواست" Visible="False">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
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
                    Height="75px" TextMode="MultiLine" Width="244px">با انتخاب و کليک روی شرح جزئيات هر درخواست قطعه نماينده  به مديريت، به فرم درخواست قطعه و قطعات ارسالی، همراه با مشخصات دسترسی پيدا می کنيد. </asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

