<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="ArchiveMailFile.aspx.cs" Inherits="ArchiveMailFile" Title="آرشيو مطالب ارسالی از مديريت به نمايندگان" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td align="right" colspan="2" dir="rtl" style="height: 201px" valign="top">
                &nbsp;<asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/AMF.gif"
                    Width="178px" />
                <asp:GridView ID="grdMails" runat="server" AutoGenerateColumns="False" Height="175px" Width="504px" OnRowCommand="grdMails_RowCommand" CellPadding="4" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" GridLines="None" OnRowDeleting="grdMails_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="SMId" HeaderText="کد" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="#0000C0" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SmDate" HeaderText="تاريخ" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="#0000C0" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SmSubject" HeaderText="موضوع" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="#0000C0" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ButtonField Text="شرح جزئيات" CommandName="ViewDetails" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle ForeColor="Purple" HorizontalAlign="Center" />
                        </asp:ButtonField>
                        <asp:CommandField CancelText="" DeleteText="حذف" EditText="" InsertText="" InsertVisible="False"
                            NewText="" SelectText="" ShowCancelButton="False" ShowDeleteButton="True" UpdateText="">
                            <ItemStyle ForeColor="#C00000" Width="40px" />
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
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" valign="top">
                <asp:GridView ID="grdFile" runat="server" AutoGenerateColumns="False" Width="118px" Height="21px" CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="SMId" HeaderText="کد" Visible="False" />
                        <asp:BoundField DataField="FilePath" HeaderText="مسيرفايل" Visible="False" />
                        <asp:BoundField DataField="FileName" HeaderText="نام فايل" Visible="False" />
                        <asp:HyperLinkField DataNavigateUrlFields="FileName" DataNavigateUrlFormatString="~/Uploads/{0}"
                            DataTextField="FileName" HeaderText="فايل الصاقی" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:HyperLinkField>
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
            <td dir="rtl" style="width: 3px">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False"
                    CellPadding="4" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="214px" 
                    Width="265px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="SmDate" HeaderText="تاريخ" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="#0000C0" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SmSubject" HeaderText="موضوع" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="MediumBlue" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="متن">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Names="Tahoma" Font-Size="9pt"
                                    ForeColor="#003399" Height="157px" ReadOnly="True" Text='<%# Bind("SmText") %>'
                                    TextMode="MultiLine" Width="328px"></asp:TextBox>&nbsp;
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" dir="rtl" style="height: 112px" valign="top">
                <asp:GridView ID="grdEmp" runat="server" AutoGenerateColumns="False" 
                    Width="502px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Font-Names="Tahoma" Font-Size="8pt">
                    <Columns>
                        <asp:BoundField DataField="SMId" HeaderText="کد" ReadOnly="True" Visible="False" >
                            <ItemStyle Width="1px" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CategoryID" HeaderText="شماره کارمند" ReadOnly="True" Visible="False" >
                            <ItemStyle Width="20px" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام نماينده" >
                            <ItemStyle Width="60px" />
                            <HeaderStyle ForeColor="Yellow" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SrCode" HeaderText="کد سرويس">
                            <HeaderStyle ForeColor="Yellow" />
                            <ItemStyle Width="20px" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="sChkR" HeaderText="دريافت نامه">
                            <ItemStyle Width="10px" />
                            <HeaderStyle ForeColor="Yellow" />
                        </asp:CheckBoxField>
                        <asp:BoundField DataField="SAnswer" HeaderText="پاسخ">
                            <ItemStyle Width="180px" />
                            <HeaderStyle ForeColor="Yellow" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle VerticalAlign="Top" BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <br />
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
                    Height="103px" TextMode="MultiLine" Width="244px">با انتخاب و کليک روی شرح جزئيات هر نامه ارسالی از مديريت به متن ، فايلهای ارسالی و پاسخ دسترسی پيدا می کنيد.                                                                      با کليک روی هر فايل الصاقی مقابل می توانيد فايل را مشاهده يا ذخيره کنيد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

