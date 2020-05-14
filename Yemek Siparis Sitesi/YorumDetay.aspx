<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Siparis_Sitesi.YorumDetay" %>
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
            <td class="genel_metin">Yorum Ad SoyAd:</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="txt_Yorum_Ad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Yorum Mail</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="txt_yorum_mail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Yorum İçerik</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="txtx_yorum_icerik" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Yemek</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="txt_yemek_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button CssClass="button" ID="btn_guncelle" runat="server" Text="Güncelle" OnClick="btn_guncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
