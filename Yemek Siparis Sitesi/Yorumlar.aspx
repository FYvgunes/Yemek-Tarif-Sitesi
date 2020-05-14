<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 384px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">

        <asp:Button CssClass="button2" ID="Button1" runat="server" Text="+" OnClick="Button1_Click" />
        <asp:Button CssClass="button2" ID="Button2" runat="server" Text="-" OnClick="Button2_Click"  />
        <span class="icerik_label_baslik"><strong>ONAYLANAN YORUM LİSTESİ</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="490px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl="~/img/icon/delete.png" />
                        </td>
                        <td>
                           <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" CssClass="image" ImageUrl="~/img/icon/uptade.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server">

        <asp:Button CssClass="button2" ID="Button3" runat="server" Text="+" OnClick="Button3_Click"  />
        <asp:Button CssClass="button2" ID="Button4" runat="server" Text="-" OnClick="Button4_Click"   />
        <span class="icerik_label_baslik"><strong>ONAYLANMAYAN YORUM LİSTESİ</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="490px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl="~/img/icon/delete.png" />
                        </td>
                        <td>
                           <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" CssClass="image" ImageUrl="~/img/icon/uptade.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
