<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="MembSeeInfo.aspx.cs" Inherits="MembSeeInfo" Title="مشاهده اطلاعات نماينده جاری" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 300px; height: 22px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/MSI.gif" Width="178px" />
                <asp:TextBox ID="txtCatId" runat="server" Visible="False" Width="21px">0</asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 300px; height: 122px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" ForeColor="#333333"
                    GridLines="None" Height="300px"  
                     OnModeChanging="DetailsView1_ModeChanging"
                    Width="440px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="CategoryName" HeaderText="نام مسئول" ReadOnly="True" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="توضيحات">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small"
                                    ForeColor="#003399" Height="50px" Text='<%# Bind("Description") %>' TextMode="MultiLine"
                                    Width="409px" ReadOnly="True"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Tahoma"
                                    Font-Size="X-Small" ForeColor="#003399" Height="46px" ReadOnly="True" Text='<%# Bind("Description") %>'
                                    TextMode="MultiLine" Width="434px"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="300px" ForeColor="Navy" />
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="تصوير مسئول">
                            <EditItemTemplate>
                                <asp:FileUpload ID="fuPicture" runat="server" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("CategoryID","CategoriesImage.aspx?id={0}") %>' />&nbsp;
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="SrCode" HeaderText="کد سرويس مجاز" ReadOnly="True" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Phone" HeaderText="تلفن" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="آدرس">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Height="37px" Text='<%# Bind("Address") %>'
                                    TextMode="MultiLine" Width="365px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Text='<%# Bind("Address") %>'
                                    TextMode="MultiLine" Width="364px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="Chiller" HeaderText="سردکننده" >
                            <HeaderStyle ForeColor="Purple" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="DishWash" HeaderText="لباسشویی ظرفشويي" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="smalthing" HeaderText="لوازم کوچک" >
                            <ItemStyle ForeColor="Navy" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="Heater" HeaderText="اجاق گاز" >
                            <HeaderStyle ForeColor="Purple" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="AirCond" HeaderText="کولر" >
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:CheckBoxField>
                        <asp:TemplateField HeaderText="استان" SortExpression="StId">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSourceState"
                                    DataTextField="StateName" DataValueField="StId" SelectedValue='<%# Bind("StId") %>'
                                    Width="170px" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# GetStateName((int)Eval("StId")) %>'></asp:Label>
                            </ItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="شهر" SortExpression="CtId">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSourceCity" DataTextField="CityName"
                                    DataValueField="CtId" SelectedValue='<%# Bind("CtId") %>' Width="170px" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# GetCityName((int)Eval("CtId")) %>'></asp:Label>&nbsp;
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Purple" />
                            <ItemStyle ForeColor="Navy" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Font-Names="Tahoma" Font-Size="X-Small" Text="ورود اطلاعات"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Font-Names="Tahoma" Font-Size="X-Small" Text="انصراف"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                &nbsp; &nbsp;
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
        SelectCommand="SELECT [StId], [StateName] FROM [State]" ProviderName="<%$ ConnectionStrings:pasarga_dbConnectionString.ProviderName %>"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCity"
        DataTextField="CityName" DataValueField="CtId" Visible="False">
    </asp:DropDownList><br />
    <asp:SqlDataSource ID="SqlDataSourceCity" runat="server" ConnectionString="<%$ ConnectionStrings:pasarga_dbConnectionString %>"
        SelectCommand="SELECT [CtId], [CityName] FROM [City]" ProviderName="<%$ ConnectionStrings:pasarga_dbConnectionString.ProviderName %>"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceState"
        DataTextField="StateName" DataValueField="StId" Visible="False">
    </asp:DropDownList>
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
                    Height="92px" TextMode="MultiLine" Width="244px">اطلاعات مربوط به نماينده جاری مشاهده می شود. اگر تغييراتی در آدرس و تلفن يا موارد ديگر وجود دارد می توانيد از  طريق نامه به مديريت اطلاع دهيد تا تغييرات انجام شود.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

