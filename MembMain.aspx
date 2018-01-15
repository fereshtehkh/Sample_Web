<%@ Page Language="C#" MasterPageFile="~/mpageMemb.master" AutoEventWireup="true" CodeFile="MembMain.aspx.cs" Inherits="MembMain" Title="ورود به بخش اعضاء" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<SCRIPT LANGUAGE="JavaScript"><!--
imgsrc=new Array();
imgsrc[1]="a_Help1.gif";
imgsrc[2]="p_Help1.gif";

img =new Array();
for (i=0; i< imgsrc.length; i++) {
  img[i]=new Image();
  img[i].src=imgsrc[i];
}
function change(number, picture) {
  {
    document[picture].src=img[number].src;
  }
}
// -->
</SCRIPT>
    &nbsp;<table style="width: 31px">
        <tr>
            <td style="height: 26px">
    <asp:TextBox ID="txtCode" runat="server" Visible="False" Width="140px"></asp:TextBox></td>
            <td style="height: 26px">
    <asp:TextBox ID="txtName" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#003399" Width="183px" BorderWidth="0px"></asp:TextBox></td>
            <td style="height: 26px">
    <asp:TextBox ID="txtSrCode" runat="server" Visible="False" Width="156px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 15px">
                <span style="font-size: 8pt; color: #cc0000">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma"
                        Font-Size="8pt" ForeColor="#990000" NavigateUrl="~/MembRecieveMail.aspx">ورود</asp:HyperLink>
                    <asp:Label ID="lblMail" runat="server" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#FF3333" Width="450px"></asp:Label></span></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 15px">
             <TR><TD align="Center" height="0"><A ID="" HREF="help.html"  TARGET="mycontent"  ONMOUSEOVER="change('1','m1')" ONMOUSEOUT= "change('2','m1')" name="m1">
      <IMG NAME="m1" SRC="p_Help1.gif" BORDER="0" vspace="0" hspace="0" width="140" height="50"></A></TD></TR>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="rtl">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                    DataKeyNames="BId" Font-Names="Tahoma" Font-Size="8pt" 
                      Width="505px">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <Columns>
                        <asp:TemplateField HeaderText="متن بخشنامه">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="9pt"
                                    Height="292px" Text='<%# Bind("BDescript") %>' TextMode="MultiLine" Width="480px" BorderWidth="0px"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
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
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;
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
                    Height="136px" TextMode="MultiLine" Width="244px">در صورتی که نامه ارسالی از مديريت داشته باشيد که هنوز تيک مشاهده آن را نزده ايد يعنی هنوز مشاهده نشده ، پيغام مبنی بر آن را روی صفحه می بينيد، و می توانيد با دکمه ورود به آن صفحه وارد شويد.                                                          بخشنامه های مهم نيز که توسط مديريت انتخاب شده در اين بخش مشاهده می کنيد، لطفا مطالعه بفرماييد.</asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

