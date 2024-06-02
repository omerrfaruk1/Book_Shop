<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Detay.aspx.cs" Inherits="Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">
<div class="text" style="font-family: COCOGOOSE; font-size: medium">
Kitap Ayrıntıları<br />
</div>
<div class="container">
<asp:Image ID="imgProfil" runat="server" Height="270px" ImageUrl="ImageUrl"
Width="193px" 
 style="float: left" ImageAlign="AbsMiddle"/>
<table style="border-collapse:inherit;margin-left:15rem!important;border:none" cellspacing="20" class="alert-light" frame="box" >
<tr>
<td class="w-25 text-success"><strong>Kitap Adı</strong></td>
<td class="style1">
<asp:Label ID="lblkitap_adi" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25 text-success"><strong class="align-content-lg-between">Açıklama</strong></td>
<td class="style1">
<asp:Label ID="lblkitap_aciklama" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="style4 text-success"><b>Eklenme Tarihi</b></td>
<td class="style5">
<asp:Label ID="lblekleme_tarihi" runat="server" Text="text" />
</td>
</tr>
    <tr>
<td class="w-25 text-success"><b>Yayın Yılı</b></td>
<td class="style1">
<asp:Label ID="lblyayin_yili" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25 text-success"><b>Yazar</b></td>
<td class="style1">
<asp:Label ID="lblyazari" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25 text-success"><b>Kategori</b></td>
<td class="style1">
<asp:Label ID="lblkategori" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25 text-success"><b>ISBN</b></td>
<td class="style1">
<asp:Label ID="lblisbn_no" runat="server" Text="text" />
</td>
</tr>
</table>

</div>
<br />
</div>
</asp:Content>

