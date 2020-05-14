<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Kategori_detay.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Kategori_detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="icerik_label_baslik_yemekler_td">
                        <asp:Label CssClass="icerik_label_baslik" ID="Label3" runat="server" Text='<%# Eval("yemekAD") %>'></asp:Label>
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
                    <td>Ekleme Tarihi :<asp:Label CssClass="icerik_label" ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Puan :<asp:Label CssClass="icerik_label" ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
