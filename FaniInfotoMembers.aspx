<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="FaniInfotoMembers.aspx.cs" Inherits="FaniInfotoMembers" Title="ورود اطلاعات فنی مربوط به هر مدل" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 1px; height: 428px">
        <tr>
            <td colspan="5" style="height: 33px">
                <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="57px">1</asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Width="39px" Visible="False"></asp:TextBox>
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/tFaniModel.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td style="width: 7px; height: 15px">
                <asp:Button ID="btnSearchM" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="Purple" OnClick="btnSearchM_Click" Text="جستجو" Width="78px" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="Purple" OnClick="Button1_Click" Text="کل اطلاعات" /></td>
            <td align="right" dir="rtl" style="height: 15px">
                <asp:DropDownList ID="ddlSys" runat="server" AutoPostBack="True" CausesValidation="True"
                    DataSourceID="SqlDataSource2" DataTextField="SysType" DataValueField="SysTId"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Navy" 
                     Width="143px">
                </asp:DropDownList>
                &nbsp;&nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT [SysTId], [SysType] FROM [SystemType]"></asp:SqlDataSource>
            </td>
            <td style="height: 15px">
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    ForeColor="Purple" Text="نوع"></asp:Label></td>
            <td align="right" dir="rtl" style="height: 15px">
                <asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="MarkNam" DataValueField="MarkId" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="Navy" 
                     TabIndex="1" Width="146px">
                </asp:DropDownList>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT [MarkId], [MarkNam] FROM [Marks]"></asp:SqlDataSource>
            </td>
            <td style="width: 4px; height: 15px">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    ForeColor="Purple" Text="مارک"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 8px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3"
                    Font-Bold="False" Font-Names="Tahoma" Font-Size="9pt" UseAccessibleHeader="False" Width="497px" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#000066" />
                    <Columns>
                        <asp:BoundField DataField="ModelId" HeaderText="کد">
                            <ItemStyle Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MarkNam" HeaderText="مارک">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SysType" HeaderText="نوع">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Model" HeaderText="مدل">
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MarkId" />
                        <asp:ButtonField CommandName="ViewDetails" Text="انتخاب" >
                            <ItemStyle ForeColor="Purple" Font-Names="Tahoma" Font-Size="X-Small" Width="50px" />
                        </asp:ButtonField>
                    </Columns>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                        ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 8px" valign="top">
                <table style="width: 470px">
                    <tr>
                        <td align="right" colspan="4" style="height: 15px" valign="top">
                            <asp:TextBox ID="txtNameM" runat="server" BackColor="Khaki" BorderWidth="0px" Font-Bold="True"
                                Font-Names="Tahoma" Font-Size="10pt" ForeColor="#CC0000" Visible="False" Width="495px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 1px; height: 24px" valign="top">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#C00000" Text="نوع اطلاعات فنی" Visible="False" Width="92px"></asp:Label>
                        </td>
                        <td style="width: 405px; height: 24px" dir="ltr">
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                                DataTextField="FaniType" DataValueField="FaniTId" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="Navy" TabIndex="1" Visible="False" Width="189px">
                            </asp:DropDownList></td>
                        <td style="width: 170px; height: 24px">
                            <asp:Button ID="btnFilterFani" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#CC3300" OnClick="btnFilterFani_Click" Text="جستجو"
                                Visible="False" Width="90px" /></td>
                        <td align="right" style="width: 5px; height: 24px" valign="top">
                            <asp:Button ID="btnAllFan" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#CC3300" Height="20px" OnClick="btnAllFan_Click" Text="کل اطلاعات"
                                Visible="False" Width="90px" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 1px; height: 24px" valign="top">
                        </td>
                        <td style="width: 405px; height: 24px">
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                                            SelectCommand="SELECT [FaniTId], [FaniType] FROM [FaniType]"></asp:SqlDataSource>
                        </td>
                        <td style="width: 170px; height: 24px">
                        </td>
                        <td align="right" style="width: 5px; height: 24px" valign="top">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 8px" valign="top">
                <table style="width: 236px">
                    <tr>
                        <td align="right" valign="top" colspan="3">
                            &nbsp; &nbsp;<asp:GridView ID="grdMWire" runat="server" AutoGenerateColumns="False"
                                CellPadding="4" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" GridLines="None"
                                Height="91px" OnRowDeleting="grdMWire_RowDeleting" Visible="False" Width="493px">
                                <Columns>
                                    <asp:BoundField DataField="FInfoId" HeaderText="کد" Visible="False" />
                                    <asp:BoundField DataField="FaniType" HeaderText="نوع" />
                                    <asp:HyperLinkField DataNavigateUrlFields="FFileF" DataNavigateUrlFormatString="~/Fani/{0}"
                                        DataTextField="FFileF" HeaderText="فايل">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:HyperLinkField>
                                    <asp:CommandField DeleteText="حذف" InsertVisible="False" ShowCancelButton="False"
                                        ShowDeleteButton="True">
                                        <ItemStyle ForeColor="Red" Width="60px" />
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
                        <td colspan="3">
                            <asp:GridView ID="GrdFText" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                                DataKeyNames="FTexId" Font-Names="Tahoma" Font-Size="8pt" 
                                 Width="500px" OnRowCancelingEdit="GrdFText_RowCancelingEdit" OnRowEditing="GrdFText_RowEditing" OnRowUpdating="GrdFText_RowUpdating" OnRowDeleting="GrdFText_RowDeleting">
                                <Columns>
                                    <asp:BoundField HeaderText="نوع اطلاعات فنی" DataField="FaniType" ReadOnly="True" >
                                        <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="متن اطلاعات">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#003399"
                                                Height="81px" Text='<%# Bind("FDescript") %>' TextMode="MultiLine" Width="314px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="FloralWhite" BorderColor="LemonChiffon"
                                                BorderWidth="0px" Font-Names="Tahoma" Font-Size="9pt" ForeColor="#003399" Height="72px"
                                                Text='<%# Bind("FDescript") %>' TextMode="MultiLine" Width="314px"></asp:TextBox>
                                        </ItemTemplate>
                                        <ItemStyle Width="200px" />
                                    </asp:TemplateField>
                                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح اطلاعات" InsertText=""
                                        NewText="" ShowEditButton="True" UpdateText="ذخيره اطلاعات" ShowDeleteButton="True">
                                        <ItemStyle ForeColor="#004000" Width="100px" />
                                    </asp:CommandField>
                                </Columns>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <hr />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 29px" valign="top">
                <table style="width: 501px; height: 147px">
                    <tr>
                        <td align="right" colspan="2" style="width: 497px; height: 10px; text-align: center; "
                            valign="top">
                            <strong><span style="font-size: 10pt; color: #ff0000"><em>ورود اطلاعات فنی فايلی و متنی
                            </em></span></strong>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2" style="height: 89px; width: 497px;" valign="top">
                            <table style="width: 478px">
                                <tr>
                                    <td colspan="3">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#990000" Text="ورود اطلاعات فنی متنی" Width="182px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="height: 20px" dir="ltr">
                                        <span style="font-size: 8pt; color: #003399"> &nbsp;&nbsp; </span>
                                        <asp:DropDownList ID="ddlFani2" runat="server" AutoPostBack="True"
                    DataTextField="FaniType" DataValueField="FaniTId" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="Navy" 
                     TabIndex="1" Width="180px">
                                        </asp:DropDownList><span style="font-size: 8pt; color: #003399">نوع اطلاعات &nbsp;</span></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                            <asp:TextBox ID="TextBox1" runat="server" Height="121px" TextMode="MultiLine" Width="456px"></asp:TextBox><br />
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="height: 22px;" colspan="3">
                            <asp:Button ID="btnNew2" runat="server" Font-Bold="False" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#003399" OnClick="btnNew2_Click" Text="جديد" Enabled="False" /><asp:Button ID="btnSave2" runat="server" Font-Bold="False" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#003399" OnClick="btnSave2_Click" Text="ذخيره" Enabled="False" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 22px">
                                    </td>
                                    <td style="width: 55px; height: 22px">
                                        &nbsp;<asp:SqlDataSource ID="SqlDataFani2" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                                            SelectCommand="SELECT [FaniTId], [FaniType] FROM [FaniType]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2" valign="top" style="height: 14px; width: 497px;">
                        <table style="width: 481px">
                                <tr>
                                    <td colspan="3" style="height: 25px">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#990000" Text="ورود اطلاعات فنی فايلی" Width="177px"></asp:Label></td>
                                    <td colspan="1" style="width: 397px; border-top-width: thin; border-left-width: thin;  border-bottom-width: thin;  height: 25px; border-right-width: thin;">
                                        &nbsp; &nbsp; &nbsp;
                                    </td>
                                </tr>
                            <tr>
                                <td colspan="3" style="height: 24px">
                                </td>
                            </tr>
                                <tr>
                                    <td colspan="4" style="height: 25px">
                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSFile" DataTextField="FFileF"
                                DataValueField="FpFanId" Height="25px" Width="50px" RepeatColumns="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="7pt" ForeColor="#003399">
                            </asp:CheckBoxList>
                                        &nbsp;</td>
                                </tr>
                            <tr>
                                <td colspan="3" style="height: 25px">
                                    <table style="width: 242px">
                                        <tr>
                                            <td style="width: 71px">
                                                <span style="font-size: 8pt; color: #003399">نوع اطلاعات:</span>&nbsp;</td>
                                            <td colspan="2" dir="ltr">
                                                <asp:DropDownList ID="ddlFaniTyp" runat="server" AutoPostBack="True"
                    DataTextField="FaniType" DataValueField="FaniTId" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="8pt" ForeColor="Navy" 
                     TabIndex="1" Width="166px">
                                        </asp:DropDownList></td>
                                        </tr>
                                    </table>
                                </td>
                                <td colspan="1" style="border-top-width: thin; border-left-width: thin; border-bottom-width: thin;
                                    width: 397px; height: 25px; border-right-width: thin">
                                </td>
                            </tr>
                                <tr>
                                    <td style="height: 5px" colspan="4">
                            <asp:Button ID="btnNew" runat="server" Font-Bold="False" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#003399" OnClick="btnNew_Click" Text="جديد" Enabled="False" />
                                        &nbsp;
                            <asp:Button ID="btnSave" runat="server" Font-Bold="False" Font-Names="Tahoma"
                                Font-Size="8pt" ForeColor="#003399" OnClick="btnSave_Click" Text="ذخيره" Enabled="False" /></td>
                                </tr>
                            </table>
                            <asp:SqlDataSource ID="SqlDataSFile" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>" SelectCommand="SELECT [FpFanId], [FpathF], [FFileF] FROM [FilePathFani]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="sqlDataFaniTyp" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>" SelectCommand="SELECT [FaniTId], [FaniType] FROM [FaniType]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" rowspan="1" style="height: 29px" valign="top">
                                        <asp:Button ID="btnUpload" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Purple"
                                             Text="Upload  دريافت فايل  " Visible="False" />
                                        <asp:FileUpload ID="FileUpload1" runat="server" Width="231px" Visible="False" /></td>
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
            <td align="right" colspan="3" dir="rtl" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="443px" TextMode="MultiLine" Width="244px"> ورود اطلاعات فنی متنی يا فايلی: برای اين منظور روی دکمه انتخاب از هر مدل منتخب کليک نماييد.سپس می توانيد نوع اطلاعات متنی را از ليست انتخاب کنيد و متن را تايپ و دکمه ذخيره را بفشاريد و يا مجددا دکمه جديد را کليک کنيد و اطلاعات جديد وارد و سپس ذکمه ذخيره را کليک نماييد. برای اطلاعات فنی فايلی نيز پس از انتخاب نوع اطلاعات فايلهای منتخب را تيک بزنيد اگر در ليست شما موجود نيست پس بايد فايل را از طريق بروز و انتقال فايل به سايت منتقل نماييد تا در ليست سمت راست مشاهده شود  تا تيک بزنيد و سپس دکمه ذخيره را کليک نماييد . این عمليات می تواند به دفعات زياد تکرار شود که در واقع اطلاعات فنی فايلی و متنی هر مدل میباشد.                                                                    با انتخاب مارک و يا نوع  و کليک بر روی دکمه جستجو می توانيد به مدلهای مختلف دسترسی پيدا کنيد. با کليک روی فايلهای مربوطه هر مدل به فايلهای مختلف شامل نقشه اتصالات، نقشه سيم کشی، نقشه انفجاری ، راهنمای سرويسکاران ، راهنمای استفاده کنندگان و بولتن های آموزشی دسترسی پيدا می کنيد که به صورت متنی يا فايل می باشد. با کليک روی نام هر فايل می توانيد فايل را باز کنيد يا در محل مشخص از درايوتان ذخيره کنيد.                                                                    حذف: با کليک بر روی دکمه حذف هر آيتم می توان فايل يا مطلب را حذف کرد.                                                              تصحيح اطلاعات برای تصحيح بخش متنی اطلاعات فنی روی آن کليک کنيد و پس از تغيير دکمه ذخيره را بفشاريد.     انصراف: جهت برگشت به حال اوليه  و عدم ذخير سازی اين دکمه را کليک کنيد.</asp:TextBox></td>
        </tr>
        </table>
</asp:Content>

