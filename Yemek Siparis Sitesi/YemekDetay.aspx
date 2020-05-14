<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Siparis_Sitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            font-size: 16px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            float: right;
            display: inline-block;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label CssClass="icerik_label_baslik" ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList2" runat="server" Width="482px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yorum Yapılış Tarihi :<asp:Label ID="Label6" runat="server" Text='<%# Eval("TorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="cizgi">
                    <hr />    
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="Yorumlar">
        <h4>Yorum Yap</h4>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td  class="genel_metin">Ad Soyad :</td>
                    <td>
                        <asp:TextBox CssClass="textbox" ID="txt_torum_Ad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="genel_metin">Mail :</td>
                    <td>
                        <asp:TextBox CssClass="textbox" ID="txt_yorum_mail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="genel_metin">Yorum :</td>
                    <td class="auto-style2">
                        <asp:TextBox CssClass="textbox" ID="txt_yorum_icerik" runat="server" Rows="5" TextMode="MultiLine" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button CssClass="button" ID="Button1" runat="server" Text="Yorum Yap" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
    </div>
</asp:Content>
