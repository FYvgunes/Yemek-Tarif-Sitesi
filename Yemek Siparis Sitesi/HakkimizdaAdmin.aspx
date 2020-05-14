<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Siparis_Sitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <asp:Panel ID="Panel3" runat="server">

        <asp:Button CssClass="button2" ID="Button3" runat="server" Text="+" OnClick="Button3_Click"  />
        <asp:Button CssClass="button2" ID="Button4" runat="server" Text="-" OnClick="Button4_Click"  />
        <span class="icerik_label_baslik"><strong> HAKKIMIZDA</strong></span>
    </asp:Panel>
    <asp:TextBox ID="TextBox1" runat="server" Width="481px" Height="350px" TextMode="MultiLine"></asp:TextBox>
    <asp:Button CssClass="button5"  ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />
</asp:Content>
