<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Kategori" %>

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
        <asp:Button CssClass="button2" ID="Button2" runat="server" Text="-" OnClick="Button2_Click" />
        <span class="icerik_label_baslik"><strong>Kategori Listesi</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="490px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="Kategori.aspx?Kategoriid=<%# Eval("Kategoriid")%> &islem=sil"><asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl="~/img/icon/delete.png" /></a>
                        </td>
                        <td>
                           <a href="KategoriDuzenleaspx.aspx?Kategoriid=<%# Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" CssClass="image" ImageUrl="~/img/icon/uptade.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel CssClass="panel" ID="Panel3" runat="server">
      
            <asp:Button CssClass="button2" ID="Button3" runat="server" Text="+" OnClick="Button3_Click"/>
            <asp:Button CssClass="button2" ID="Button4" runat="server" Text="-" OnClick="Button4_Click" />
            <span  class="icerik_label_baslik"><strong>Kategori </strong>Ekleme</span>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class="genel_metin">KATEGORİ AD:</td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="genel_metin">KATEGORİ İCON</td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button CssClass="button" ID="Button5" runat="server" Text="EKLE" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
        
    </asp:Panel>
</asp:Content>
