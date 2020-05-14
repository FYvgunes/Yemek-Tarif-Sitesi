<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Siparis_Sitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 467px;
        }
        .auto-style2 {
            width: 407px;
            height: 24px;
        }
        .auto-style3 {
            height: 24px;
            width:200px;
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
        <span class="icerik_label_baslik"><strong>YEMEK LİSTESİ</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="490px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("yemekAD") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                           <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("yemekid") %>"> <asp:Image CssClass="image" ID="Image2" runat="server" ImageUrl="~/img/icon/172-1724146_graphic-freeuse-stock-computer-icons-check-mark-checkbox.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
