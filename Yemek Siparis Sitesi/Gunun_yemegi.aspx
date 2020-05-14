<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Gunun_yemegi.aspx.cs" Inherits="Yemek_Siparis_Sitesi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
        .auto-style3 {
            width: 182px;
        }
        .auto-style4 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label CssClass="icerik_label_baslik" ID="Label3" runat="server" Text='<%# Eval("yemekAD") %>'></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Malzemeler :<asp:Label CssClass="icerik_label" ID="Label4" runat="server" Text='<%# Eval("YemekMalzemes") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="icerik_label">Tarif :<asp:Label CssClass="icerik_label" ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="189px" ImageUrl='<%# Eval("YemekResim") %>' Width="445px" />
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style3">Puan :
                                <asp:Label ID="Label6" runat="server" CssClass="icerik_label" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </td>
                            <td style="text-align: right">Tarih :
                                <asp:Label ID="Label7" runat="server" CssClass="icerik_label" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

