<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2{
            color:white;
            font-size:18px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-weight:700;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">

        <asp:Button CssClass="button2" ID="Button1" runat="server" Text="+" OnClick="Button1_Click" />
        <asp:Button CssClass="button2" ID="Button2" runat="server" Text="-" OnClick="Button2_Click" />
        <span class="icerik_label_baslik"><strong>MESAJ LİSTESİ</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="490px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label CssClass="auto-style2" ID="Label1" runat="server" Text='<%# Eval("Mesajgonderen") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="MesajDetay.aspx?Mesajid=<%# Eval("Mesajid") %>"><asp:Image CssClass="image" ID="Image2" runat="server" ImageUrl="~/img/icon/editt.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
