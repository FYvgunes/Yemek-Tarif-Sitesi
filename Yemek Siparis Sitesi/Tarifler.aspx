<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Siparis_Sitesi.Tarifler" %>
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
        <asp:Button CssClass="button2" ID="Button2" runat="server" Text="-" OnClick="Button2_Click"  />
        <span class="icerik_label_baslik"><strong>ONAYSIZ TARİF LİSTESİ</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="490px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label CssClass="auto-style2" ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td>
                          <a href="TarifDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image CssClass="image" ID="Image2" runat="server" ImageUrl="~/img/icon/proposal-icon-png-2.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
     <asp:Panel ID="Panel3" runat="server">

        <asp:Button CssClass="button2" ID="Button3" runat="server" Text="+" OnClick="Button3_Click"  />
        <asp:Button CssClass="button2" ID="Button4" runat="server" Text="-" OnClick="Button4_Click"   />
        <span class="icerik_label_baslik"><strong> ONAYLI TARİF LİSTESİ</strong></span>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="490px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label CssClass="auto-style2" ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td>
                          <a href="TarifDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image CssClass="image" ID="Image2" runat="server" ImageUrl="~/img/icon/proposal-icon-png-2.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
