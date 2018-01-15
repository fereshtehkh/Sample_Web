<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryLHome.aspx.cs" Inherits="DEntryLHome" Title="ورود اطلاعات لوازم منزل" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px; height: 26px">
                <table>
                    <tr>
                        <td align="right" colspan="2">
                            <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/images/tLhomeType.gif"
                                Width="178px" /></td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" style="width: 15px; height: 14px" valign="top">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                ForeColor="#CC3300" Text="نوع لوازم خانگی" Width="115px"></asp:Label>
                        </td>
                        <td align="right" dir="rtl" style="width: 427px; height: 14px" valign="top">
                            &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" style="width: 15px" valign="top">
                            <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False"
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                                DataKeyNames="LtId" DataSourceID="SqlDataSource3" EmptyDataText='No records available. Click the "Back to list" link to view the list of products.'
                                Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" GridLines="None" Height="58px"
                                Width="143px">
                                <FooterStyle BackColor="Tan" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <Fields>
                                    <asp:BoundField DataField="LtId" HeaderText="کد" InsertVisible="False" ReadOnly="True"
                                        SortExpression="LtId" />
                                    <asp:BoundField DataField="Ltype" HeaderText="نوع لوازم" SortExpression="Ltype" />
                                    <asp:CommandField CancelText="انصراف" InsertText="ذخيره" NewText="جديد" ShowInsertButton="True"
                                        UpdateText="ذخيره" />
                                </Fields>
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            </asp:DetailsView>
                        </td>
                        <td align="right" dir="rtl" style="width: 427px" valign="top">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                                DeleteCommand="DELETE FROM [LType] WHERE [LtId] = @LtId" InsertCommand="INSERT INTO [LType] ([Ltype]) VALUES (@Ltype)"
                                SelectCommand="SELECT [LtId], [Ltype] FROM [LType]" UpdateCommand="UPDATE [LType] SET [Ltype] = @Ltype WHERE [LtId] = @LtId">
                                <DeleteParameters>
                                    <asp:Parameter Name="LtId" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Ltype" Type="String" />
                                    <asp:Parameter Name="LtId" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Ltype" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px; height: 26px">
                <asp:Image ID="Image7" runat="server" Height="29px" ImageUrl="~/Images/t7.gif" Width="178px" />
                <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="43px">1</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px; height: 26px">
                <table style="width: 436px; height: 1px">
                    <tr>
                        <td align="right" style="width: 56px; height: 26px" valign="top">
                            <span style="font-size: 8pt; color: #660066">انواع لوازم:</span></td>
                        <td align="right" style="width: 81px; height: 26px" valign="top">
                            <asp:DropDownList ID="ddlLType" runat="server" AutoPostBack="True" DataSourceID="SqlDataLType"
                                DataTextField="Ltype" DataValueField="LtId" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="X-Small" ForeColor="Navy" OnSelectedIndexChanged="ddlLType_SelectedIndexChanged"
                                TabIndex="1" Width="198px">
                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataLType" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                                SelectCommand="SELECT [LtId], [Ltype] FROM [LType]" ProviderName="<%$ ConnectionStrings:pasarga_dbConnectionString.ProviderName %>"></asp:SqlDataSource>
                        </td>
                        <td align="right" style="width: 3px; height: 26px" valign="top">
                            <asp:Label ID="lblType" runat="server" BackColor="White" Font-Bold="True" Font-Italic="False"
                                Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True" ForeColor="#CC0066"
                                Width="237px"></asp:Label></td>
                    </tr>
                </table>
                <hr />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" rowspan="1" style="width: 822px; height: 5px"
                valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                    Font-Size="X-Small" NavigateUrl="DEntryLHomeDetails.aspx?id=-1">ورود اطلاعات جديد</asp:HyperLink><br />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr"  rowspan="3" style="width: 822px; height: 107px"
                valign="top">
                &nbsp;<asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="LId"
                    ForeColor="#333333" OnCancelCommand="DataList1_CancelCommand" OnDeleteCommand="DataList1_DeleteCommand"
                    OnEditCommand="DataList1_EditCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"
                    OnUpdateCommand="DataList1_UpdateCommand" RepeatColumns="1" Width="473px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" OnItemCommand="DataList1_ItemCommand">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" />
                    <EditItemTemplate>
                        <span style="font-size: 8pt; color: #660066"><strong>نام لوازم :</strong></span>
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                            Font-Size="9pt" ForeColor="#660066" Text='<%# Bind("LHomeT") %>' Width="412px"></asp:TextBox><br />
                        <span style="font-size: 8pt; color: #660066"><strong dir="rtl">توضيحات:&nbsp; &nbsp;</strong></span><asp:TextBox
                            ID="TextBox2" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#000099"
                            Height="204px" Text='<%# Bind("Descript") %>' TextMode="MultiLine" Width="412px"></asp:TextBox><br />
                        <span style="font-size: 8pt; color: #660066"><strong>تصوير:</strong></span>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="358px" /><br />
                        <span style="font-size: 8pt; color: #990066"><strong>نوع لوازم:</strong></span><asp:DropDownList
                            ID="ddlLType" runat="server" DataSourceID="SqlDataSLTyp" DataTextField="Ltype"
                            DataValueField="LtId" SelectedValue='<%# Bind("LtId") %>' Width="313px">
                        </asp:DropDownList>&nbsp;<span style="font-size: 8pt; color: #cc00ff"> آخرين محصول معرفی</span><asp:CheckBox
                            ID="chkFinal" runat="server" Checked='<%# Bind("LFinal") %>' />
                        <asp:SqlDataSource ID="SqlDataSLTyp" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
                            SelectCommand="SELECT [LtId], [Ltype] FROM [LType]"></asp:SqlDataSource>
                        <br />
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" Font-Bold="False"
                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#000099">انصراف</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Update" Font-Bold="False"
                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#000099">ذخيره</asp:LinkButton>
                    </EditItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Top" />
                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>
                    <HeaderTemplate>
                        ليست لوازم خانگی
                    </HeaderTemplate>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" />
                    <SelectedItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                            Font-Size="10pt" ForeColor="#990066" Text='<%# Eval("LHomeT") %>'></asp:Label><br />
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" BorderColor="Transparent"
                            BorderWidth="0px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#003366" Height="288px"
                            ReadOnly="True" Text='<%# Eval("Descript") %>' TextMode="MultiLine" Width="473px"></asp:TextBox>&nbsp;<br />
                        &nbsp;<asp:Image ID="Image1" runat="server" EnableTheming="True" ImageUrl='<%# Eval("LId","CategoriesImage2.aspx?id={0}") %>' /><br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Cancel">انصراف</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">تصحيح</asp:LinkButton>&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" OnClientClick='return window.confirm("Are you sure?")'>حذف</asp:LinkButton>
                    </SelectedItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Select" Font-Bold="True"
                            Font-Names="Tahoma" Font-Size="10pt" ForeColor="#990066" Text='<%# Eval("LHomeT") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                &nbsp; &nbsp;
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px" valign="top">
                </td>
        </tr>
    </table>
    <br />
    <br />
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
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 7px"
                valign="top">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="79px" TextMode="MultiLine" Width="244px">جديد: آيتم جديد از نوع لوازم خانگی را کليک کنيد اطلاعات مارک يا نوع جديد را وارد نماييد و دکمه ذخيره را کليک نماييد.آيتم جديد از مارک يا نوع به ليست شما اضافه می شود.                           انصراف: صرف نظر از انجام عمليات می باشد.</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 169px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cornsilk" BorderColor="SteelBlue"
                    BorderWidth="1px" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"
                    Height="227px" TextMode="MultiLine" Width="244px">جستجو: با انتخاب هر يک از لوازم داخل ليست انواع لوازم می توانيد آيتم های ليست زيرين لوازم خانگی را فيلتر کنيد.                                                               تصحيح:اگر روی هر آيتم ليست مقابل کليک نماييد کل مشخصات همراه با جزئيات و تصوير لوازم را خواهيد ديد اگر دکمه تصحيح را کليک کنيد، سپس هر آيتمی که می خواهيد تغيير دهيد يا فايل عکس جديد را انتخاب بکنيد و سپس دکمه ذخيره را کليک کنيد اطلاعات مزبور ويرايش میشود.                                                              حذف:با کليک دکمه حذف اطلاعات آيتم منتخب حذف می شود.                                                    ورود اطلاعات جديد: وارد صفحه ورود اطلاعات لوازم جديد می شويد.                                  انصراف: صرف نظر از انجام عمليات می باشد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

