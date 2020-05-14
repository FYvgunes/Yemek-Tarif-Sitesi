<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Siparis_Sitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="genel_metin">YemekAd</td>
            <td>
                <asp:TextBox CssClass="textbox" runat="server" ID="txt_ad"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Malzemeler</td>
            <td>
                <asp:TextBox CssClass="textbox" Height="75px"  ID="txt_malzemeler" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif</td>
            <td>
                <asp:TextBox CssClass="textbox" Height="75px"  ID="txt_tarif" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Kategori</td>
            <td>
                <asp:DropDownList CssClass="textbox"  ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Yemej Görüntü</td>
            <td>
                <asp:FileUpload CssClass="textbox" ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button CssClass="button1" ID="btn_guncelle" runat="server" Text="Güncelle" OnClick="Button1_Click" />
                <br />
                
                <asp:Button CssClass="button3" ID="Button1" runat="server" Text="Günün Yemeğini Seç" Width="215px" OnClick="Button1_Click1"/>
            </td>
        </tr>
    </table>
</asp:Content>
