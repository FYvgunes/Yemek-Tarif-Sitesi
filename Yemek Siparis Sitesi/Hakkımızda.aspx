<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="auto-style1">
        <tr>
            <td class="genel_baslik">HAKKIMIZDA</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" Width="255px">
                    <ItemTemplate>
                        <asp:Label CssClass="genel_metin" ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="200px" Width="478px" ImageUrl="~/img/indir.jpg" />
            </td>
        </tr>
    </table>

</asp:Content>

