<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DataEntryNamayandeh.aspx.cs" Inherits="DataEntryNamayandeh" Title="ورود اطلاعات نمايندگان" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <script language="javascript" type="text/javascript">
        function EditCategory(categoryID)
        {
            window.showModalDialog("DialogContainer.aspx?url=DEntryNamayandehDetail.aspx.aspx?cid="+categoryID+"~~~p=5","","dialogWidth:400Px;dialogHeight:400Px");
            window.location=window.location;
        }
        function AddCategory()
        {
            window.showModalDialog("DialogContainer.aspx?url=DEntryNamayandehDetail.aspx?cid=-1","","dialogWidth:400Px;dialogHeight:400Px");
            window.location=window.location;
        }
    </script>
    <table style="width: 1px; height: 428px">
        <tr>
            <td colspan="5" style="height: 33px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t11.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td style="width: 7px; height: 43px">
                <asp:Button ID="btnSearch" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="Purple" Height="21px" OnClick="btnSearch_Click" Text="جستجو" Width="79px" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="کل اطلاعات" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Purple" Height="22px" /></td>
            <td align="right" dir="rtl" style="height: 43px">
                <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" CausesValidation="True"
                    DataTextField="CityName" DataValueField="CtId" Font-Names="Tahoma" Font-Size="X-Small"
                     Width="143px" Font-Bold="True" ForeColor="Navy">
                </asp:DropDownList>
                &nbsp;&nbsp;
            </td>
            <td style="height: 43px">
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    Text="شهر" ForeColor="Purple"></asp:Label></td>
            <td align="right" dir="rtl" style="height: 43px">
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" DataSourceID="SqlDataSState"
                    DataTextField="StateName" DataValueField="StId" Font-Names="Tahoma"
                    Font-Size="X-Small"  
                    TabIndex="1" Width="146px" Font-Bold="True" ForeColor="Navy" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSState" runat="server" ConnectionString="<%$ ConnectionStrings:pasargad880927ConnectionString %>"
                    SelectCommand="SELECT StId, StCode, StateName FROM dbo.State ORDER BY StId">
                </asp:SqlDataSource>
            </td>
            <td style="width: 4px; height: 43px">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma (Arabic)" Font-Size="10pt"
                    Text="استان" ForeColor="Purple"></asp:Label></td>
        </tr>
        <tr>
            <td style="height: 5px" colspan="5">
                <table style="height: 47px">
                    <tr>
                        <td align="right" colspan="4" rowspan="2" valign="middle">
                            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                                ForeColor="Purple" OnClick="Button2_Click" Text="جستجو با فيلتر" /></td>
                        <td align="right" style="height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                            &nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#003399" Text="لوازم کوچک" Width="100px" /></td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                            <asp:CheckBox ID="CheckBox4" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                Height="23px" Text="اجاق گاز" Width="100px" /></td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                            <asp:CheckBox ID="CheckBox5" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                Height="24px" Text="کولر گازی" Width="100px" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                            <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                Text="سردکننده" Width="80px" /></td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                        </td>
                        <td align="right" style="width: 3px; height: 22px" valign="middle">
                            <asp:CheckBox ID="CheckBox2" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                                Height="26px" Text="لباسشويي - ظرفشويي" Width="150px" /></td>
                    </tr>
                </table>
                <hr />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="5" dir="rtl" rowspan="1" style="height: 10px" valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" NavigateUrl="DEntryNamayandehDetail.aspx?id=-1">ورود اطلاعات جديد</asp:HyperLink><br />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" dir="rtl" style="height: 95px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3"
                    Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Small" Width="497px" UseAccessibleHeader="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#000066" />
                    <Columns>
                        <asp:BoundField DataField="SrCode" HeaderText="کد سرويس مجاز">
                            <ItemStyle Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام مسئول">
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Phone" HeaderText="تلفن">
                            <ItemStyle Width="70px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Address" HeaderText="آدرس">
                            <ItemStyle Width="300px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="Chiller" HeaderText="سردکننده" Visible="False">
                            <ItemStyle Width="15px" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="DishWash" HeaderText="لباسشويي-ظرفشویی" Visible="False">
                            <ItemStyle Width="15px" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="smalthing" HeaderText="لوازم کوچک" Visible="False">
                            <ItemStyle Width="15px" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="Heater" HeaderText="اجاق گاز" Visible="False">
                            <ItemStyle Width="15px" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="AirCond" HeaderText="کولر" Visible="False">
                            <ItemStyle Width="15px" />
                        </asp:CheckBoxField>
                        <asp:HyperLinkField DataNavigateUrlFields="CategoryID" DataNavigateUrlFormatString="DEntryNamayandehDetail.aspx?id={0}"
                            Text="تصحيح">
                            <ItemStyle Width="50px" Font-Names="Tahoma" Font-Size="Small" />
                        </asp:HyperLinkField>
                    </Columns>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                        ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<br />
                <br />
                <br />
                <br />
                <br />
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
                <span style="font-size: 9pt; color: #ff0000"><strong style="background-color: #ffff99">راهنما</strong></span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Height="127px" TextMode="MultiLine" Width="244px" BackColor="Cornsilk" BorderColor="SteelBlue" BorderWidth="1px">جستجو: می توان از ليست استان يا شهر انتخاب کنيد و دکمه جستجو را کليک نماييد تا ليست فيلتر شود.                                                                کل اطلاعات: کل ليست نمایان می شود.         تصحيح : وارد صفحه تصحيح اطلاعات میشويد.                                                             ورود اطلاعات جديد: واردصفحه ای می شويد که می توانيد آيتم جديد را وارد کنيد.</asp:TextBox></td>
        </tr>
        </table>
</asp:Content>

