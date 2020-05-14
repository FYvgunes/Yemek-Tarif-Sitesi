<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Yemek_Siparis_Sitesi.MesajDetay" %>
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
            <td class="genel_metin">Mesaj Gönderen :</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Başlık :</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Mail Adresi :</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Mesaj İçerik</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="TextBox4" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
