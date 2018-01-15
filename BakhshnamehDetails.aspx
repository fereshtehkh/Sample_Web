<%@ Page Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="BakhshnamehDetails.aspx.cs" Inherits="BakhshnamehDetails" Title="بخشنامه" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 68px; height: 158px">
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="1" style="width: 822px; height: 26px">
                <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/Images/t6.gif" Width="300px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl" rowspan="3" style="width: 822px; height: 114px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderWidth="0px"
                    Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Small" Height="300px" OnItemDeleting="DetailsView1_ItemDeleting"
                    OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating"
                    OnModeChanging="DetailsView1_ModeChanging" Width="825px">
                    <Fields>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox2" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Italic="True" Font-Names="Tahoma" Font-Size="10pt" Font-Underline="True"
                                    ForeColor="#993300" Height="40px" ReadOnly="True" Text='<%# Bind("BTitle") %>'
                                    TextMode="MultiLine" Width="798px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderWidth="0px" Font-Bold="True"
                                    Font-Names="Tahoma" Font-Size="X-Small" ForeColor="Navy" Height="565px" ReadOnly="True"
                                    Text='<%# Bind("BDescript") %>' TextMode="MultiLine" Width="798px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Mainfa.aspx">برگشت به لیست</asp:HyperLink><br />
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

