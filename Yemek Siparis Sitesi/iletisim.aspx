<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Siparis_Sitesi.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class=""><span class="genel_baslik"><strong>İletişim</strong></span><table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            </table>
                            <table class="auto-style1">
                                <tr>
                                    <td class="genel_metin">Ad Soyad:</td>
                                    <td>
                                        <asp:TextBox CssClass="textbox" ID="txt_mesaj_gonderen" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="genel_metin">Mail Adresiniz: </td>
                                    <td>
                                        <asp:TextBox CssClass="textbox" ID="txt_mesaj_adres" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="genel_metin">Konu : </td>
                                    <td>
                                        <asp:TextBox  CssClass="textbox" ID="txt_mesaj_konu" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="genel_metin">Mesaj</td>
                                    <td>
                                        <asp:TextBox CssClass="textbox" ID="txt_mesaj_mesaj" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button CssClass="button" ID="Button1" runat="server" Text="Mesaj Gönder" OnClick="Button1_Click"  />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

