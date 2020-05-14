<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifDetay.aspx.cs" Inherits="Yemek_Siparis_Sitesi.TarifDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
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
            <td class="genel_metin">TarifAd:</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif Malzeme: </td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Yapılış :</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarif Resim :</td>
            <td>
                <asp:FileUpload  CssClass="textbox" ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Tarfi Öneren :</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Öneren Mail</td>
            <td>
                <asp:TextBox  CssClass="textbox" ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="genel_metin">Kategoriler</td>
            <td class="auto-style2">
                <asp:DropDownList CssClass="textbox" ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button  CssClass="button1" ID="Button1" runat="server" Text="Onayla" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
