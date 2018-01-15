<%@ Page Language="C#" MasterPageFile="~/mpageManager.master" AutoEventWireup="true" CodeFile="DEntryNamayandehDetail.aspx.cs" Inherits="DEntryNamayandehDetail" Title="ورود اطلاعات نمايندگان" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t11.gif" Width="178px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 122px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="300px" OnItemDeleting="DetailsView1_ItemDeleting" OnItemInserting="DetailsView1_ItemInserting"
                    OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging"
                    Width="504px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام مسئول" />
                        <asp:TemplateField HeaderText="توضيحات">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine"
                                    Width="461px" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Navy" Height="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine"
                                    Width="458px" Height="43px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine"
                                    Width="458px" Height="46px" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Navy" ReadOnly="True"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="تصوير مسئول">
                            <EditItemTemplate>
                                <asp:FileUpload ID="fuPicture" runat="server" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="fuPicture" runat="server" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("CategoryID","CategoriesImage.aspx?id={0}") %>' />&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SrCode" HeaderText="کد سرويس مجاز" />
                        <asp:BoundField DataField="Phone" HeaderText="تلفن" />
                        <asp:BoundField DataField="Address" HeaderText="آدرس" />
                        <asp:CheckBoxField DataField="Chiller" HeaderText="سردکننده" />
                        <asp:CheckBoxField DataField="DishWash" HeaderText="لباسشویی ظرفشويي" />
                        <asp:CheckBoxField DataField="smalthing" HeaderText="لوازم کوچک" />
                        <asp:CheckBoxField DataField="Heater" HeaderText="اجاق گاز" />
                        <asp:CheckBoxField DataField="AirCond" HeaderText="کولر" />
                        <asp:TemplateField HeaderText="استان" SortExpression="StId">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSourceState"
        DataTextField="StateName" DataValueField="StId" Width="170px"  SelectedValue='<%# Bind("StId") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# GetStateName((int)Eval("StId")) %>'></asp:Label>
                            </ItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSourceState"
        DataTextField="StateName" DataValueField="StId" Width="170px"  SelectedValue='<%# Bind("StId") %>'>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="شهر" SortExpression="CtId">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSourceCity"
                                    DataTextField="CityName" DataValueField="CtId" SelectedValue='<%# Bind("CtId") %>'
                                    Width="170px">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSourceCity"
                                    DataTextField="CityName" DataValueField="CtId" SelectedValue='<%# Bind("CtId") %>'
                                    Width="170px">
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# GetCityName((int)Eval("CtId")) %>'></asp:Label>&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Fax" HeaderText="فکس" />
                        <asp:BoundField DataField="Password" HeaderText="رمز عبور" />
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="ذخيره" ForeColor="#FFFF00"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Font-Names="Tahoma" Font-Size="8pt" Text="انصراف" ForeColor="#FFFF00"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="تصحيح" InsertText="ورود اطلاعات"
                            NewText="جديد" SelectText="انتخاب" ShowDeleteButton="True" ShowEditButton="True"
                            UpdateText="دخيره" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DataEntryNamayandeh.aspx" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#CC3300">برگشت به لیست</asp:HyperLink><br />
                <br />
                <br />
                <br />
                <br />
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
    <asp:SqlDataSource ID="SqlDataSourceState" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
        SelectCommand="SELECT [StId], [StateName] FROM [State]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCity"
        DataTextField="CityName" DataValueField="CtId" Visible="False">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSourceCity" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
        SelectCommand="SELECT [CtId], [CityName] FROM [City]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceState"
        DataTextField="StateName" DataValueField="StId" Visible="False">
    </asp:DropDownList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 251px; height: 165px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 253px; height: 11px"
                valign="top">
                <span style="font-size: 9pt; color: #ff0000"><strong style="background-color: #ffff99">راهنما</strong></span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 253px; height: 165px"
                valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt"
                    ForeColor="#003399" Height="130px" TextMode="MultiLine" Width="244px" BackColor="Cornsilk" BorderColor="SteelBlue" BorderWidth="1px">تصحيح: دکمه تصحيح را کليک کنيد، سپس هر آيتمی که می خواهيد تغيير دهيد يا فايل عکس جديد را انتخاب بکنيد و سپس دکمه ذخيره را کليک کنيد.                                                              حذف:با کليک دکمه حذف اطلاعات آيتم منتخب حذف می شود.                                                    ورود اطلاعات جديد: کل اطلاعات را وارد کنيد و دکمه ذخيره را کليک نماييد.                           انصراف: صرف نظر از انجام عمليات می باشد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

