<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br />
    <p>
    </p>



    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#198754" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="kitap_adi" HeaderText="kitap_adi" SortExpression="kitap_adi" />
            <asp:BoundField DataField="yazari" HeaderText="yazari" SortExpression="yazari" />
            <asp:BoundField DataField="sayfa_sayisi" HeaderText="sayfa_sayisi" SortExpression="sayfa_sayisi" />
            <asp:BoundField DataField="fiyat" HeaderText="fiyat" SortExpression="fiyat" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
            <asp:BoundField DataField="kategori" HeaderText="kategori" SortExpression="kategori" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#198754" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#198754" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#198754" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdbConnectionString %>" DeleteCommand="DELETE FROM [book_info] WHERE [id] = @id" InsertCommand="INSERT INTO [book_info] ([kitap_adi], [yazari], [sayfa_sayisi], [fiyat], [img], [kategori]) VALUES (@kitap_adi, @yazari, @sayfa_sayisi, @fiyat, @img, @kategori)" SelectCommand="SELECT * FROM [book_info]" UpdateCommand="UPDATE [book_info] SET [kitap_adi] = @kitap_adi, [yazari] = @yazari, [sayfa_sayisi] = @sayfa_sayisi, [fiyat] = @fiyat, [img] = @img, [kategori] = @kategori WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kitap_adi" Type="String" />
            <asp:Parameter Name="yazari" Type="String" />
            <asp:Parameter Name="sayfa_sayisi" Type="Int32" />
            <asp:Parameter Name="fiyat" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="kategori" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kitap_adi" Type="String" />
            <asp:Parameter Name="yazari" Type="String" />
            <asp:Parameter Name="sayfa_sayisi" Type="Int32" />
            <asp:Parameter Name="fiyat" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="kategori" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

