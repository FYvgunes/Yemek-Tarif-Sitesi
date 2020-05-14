<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenleaspx.aspx.cs" Inherits="Yemek_Siparis_Sitesi.KategoriDuzenleaspx" %>
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
            <td class="genel_baslik">KATEGORİ DÜZENLE</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1" >
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="genel_metin">KATEGORİ AD :</td>
                        <td>
                            <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="genel_metin">ADET :</td>
                        <td>
                            <asp:TextBox CssClass="textbox"  ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="genel_metin">KATEGORİ RESİM</td>
                        <td>
                            <asp:FileUpload CssClass="textbox"  ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button CssClass="button" ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
