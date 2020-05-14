<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Siparis_Sitesi.AnaSayfa" %>
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
            <td>
                <asp:DataList ID="DataList2" runat="server" Width="478px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="icerik_label_baslik_yemekler_td">
                                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"></a><asp:Label CssClass="icerik_label_baslik_yemekler" ID="Label3" runat="server" Text='<%# Eval("yemekAD") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr> 
                                <td>Malzemeler :<asp:Label CssClass="icerik_label" ID="Label4" runat="server" Text='<%# Eval("YemekMalzemes") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Tarif :<asp:Label CssClass="icerik_label" ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Eklenme Tarihi :<asp:Label CssClass="icerik_label" ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Puan :<asp:Label CssClass="icerik_label" ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="cizgi">
                                    <hr />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
