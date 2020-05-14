<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Tarif_oner.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Gunun_yemegi" %>
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
            <td class="genel_baslik">Tarif Öner </td>
            
        </tr>
        <tr>
            <td class="genel_metin">Tarif Adı:</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="TxtTarifAd" runat="server" Height="20px" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif malzemeleri :</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TxtTarifMlazeme" runat="server" Height="50px" TextMode="MultiLine" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif Yapılışı :</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TxttarifYapilis" runat="server" Height="100px" Rows="50" TextMode="MultiLine" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif Sahini :</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TxtTarfiSahibi" runat="server" Height="20px" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif&nbsp; Sahibinin Maili :</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TxtTarifmail" runat="server" Height="20px" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">tarif Resim :</td>
            <td>
                <asp:FileUpload  ID="fl_resimEkle" runat="server" Height="20px" Width="255px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button CssClass="button" ID="Btn_Tarif_Gonder" runat="server" Text="Tarif Gönder" OnClick="Btn_Tarif_Gonder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
