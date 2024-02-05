<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Veritabanıİşlemleri.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:cornflowerblue">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ürün kodu"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="BoxUrunKodu" runat="server" Height="29px"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Ürün Adı"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="BoxUrunAdi" runat="server" Height="32px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Stok Miktarı"></asp:Label>
&nbsp;
        <asp:TextBox ID="BoxStokMiktari" runat="server" Height="30px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Birim Fiyat"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="BoxBirimFiyat" runat="server" Height="28px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Ürün Açıklama"></asp:Label>
        <br />
        <asp:TextBox ID="BoxUrunAciklama" runat="server" Height="74px" Width="279px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Sonuç:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelSonuc" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Ürün Ekle" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDelete" runat="server" Text="Ürün Sil" OnClick="BtnDelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnUpdate" runat="server" Text="Ürün Güncelle" OnClick="BtnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnList" runat="server" OnClick="BtnList_Click" Text="Ürün Listele" />
        <br />
        <br />
        <asp:GridView ID="GridView1" BackColor="White" runat="server" Width="1046px">
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
