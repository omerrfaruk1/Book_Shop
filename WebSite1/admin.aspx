<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" m-auto" style="width:30%!important;text-align:center;">

  
    
<main class="form-signin w-100 m-auto">
  <form>
    <img class="mb-4" src="/img/logo.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
        <asp:TextBox  placeholder="name@example.com" class="form-control m-0" style="margin-bottom:1rem!important" ID="TextBox1" runat="server" ValidationGroup="RequiredFieldValidator"></asp:TextBox>
      <label for="floatingInput">Kullanıcı Adı</label>
    </div>
    <div class="form-floating pb-3">
        <asp:TextBox class="form-control m-0"  placeholder="Şifre" ID="TextBox2" runat="server" TextMode="Password" ValidationGroup="RequiredFieldValidator"></asp:TextBox>
      <label for="floatingPassword">Şifre</label>
    </div>

    
    
    <asp:Button class="btn btn-secondary w-100  m-0" ID="Button1" runat="server" Text="Girş Yap" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı Veya Şifre Hatalı" Visible="False"></asp:Label>
     
  </form>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdbConnectionString %>" SelectCommand="SELECT * FROM [admin] WHERE (([Username] = @Username) AND ([password] = @password))" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
</main>
          </div>

    

</asp:Content>

