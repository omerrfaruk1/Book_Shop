<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="Default2" %>

<%-- SAYFANIN HEAD TARAFININ BAŞLANGICI --%>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="css/StyleSheet.css" media="all" rel="stylesheet"/>


    </asp:Content>
<%-- SAYFANIN HEAD TARAFININ SONU --%>



<%-- SAYFANIN CONTENT TARAFININ BAŞLANGICI --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<%-- SAYFANIN ANASAYFA TASARIMININ YAPILDIĞI YERİN BAŞLANGICI --%>
    <section class="py-3 text-center container">
        
   <div class="row max-height justify-content-center align-items-center img-content-place" >
        <div class="col-10 mx-auto banner text-center">
          <h1 class="text-capitalize text-light"><strong class="banner-title ">Kit'</strong>App Store</h1>

        </div>
      </div>
  </section>
<%-- SAYFANIN ANASAYFA TASARIMININ YAPILDIĞI YERİN SONU --%>




<%-- VERİ TABANI BAĞLANTISININ YAPILDIĞI YERİN BAŞLANGICI --%>
    <section id="kitaplar">
        <asp:SqlDataSource 
            ID="SqlDataSourcecards" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:testdbConnectionString3 %>" 
            SelectCommand="SELECT * FROM book_info">

        </asp:SqlDataSource>
    <asp:SqlDataSource 
            ID="SqlDataSourceroman" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:testdbConnectionString3 %>" 
            SelectCommand="SELECT * FROM book_info  WHERE kategori='Roman' ">

        </asp:SqlDataSource>
    <asp:SqlDataSource 
            ID="SqlDataSourceedebiyat" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:testdbConnectionString3 %>" 
            SelectCommand="SELECT * FROM book_info  where kategori='Edebiyat'">

        </asp:SqlDataSource>
    <asp:SqlDataSource 
            ID="SqlDataSourcehikaye" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:testdbConnectionString3 %>" 
            SelectCommand="SELECT * FROM book_info  where kategori='Hikaye'">

        </asp:SqlDataSource>
      <asp:SqlDataSource 
            ID="SqlDataSourcefelsefe" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:testdbConnectionString3 %>" 
            SelectCommand="SELECT * FROM book_info  where kategori='Felsefe'">

        </asp:SqlDataSource>
        <asp:SqlDataSource 
            ID="SqlDataSourcetarih" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:testdbConnectionString3 %>" 
            SelectCommand="SELECT * FROM book_info  where kategori='Tarih'">

        </asp:SqlDataSource>
  
        </section>
<%-- VERİ TABANI BAĞLANTISININ YAPILDIĞI YERİN SONU --%>



<%-- VERİTABANINDAN ÇEKİLEN BİLGİLERİN EKRANA YAZDILIMASININ BAŞLANGICI --%>
    <section id="kitap">

    
    <div class="album py-5 bg-body-tertiary">
    <div class="container">

     <asp:DataList  RepeatDirection="Vertical" RepeatColumns="3"  CssClass="container-fluid" ID="DataList1" runat="server" DataSourceID="SqlDataSourcecards">
        <ItemTemplate>
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <%--<div class="col">
          <div class="card shadow-sm">--%>

          <div class="card" style="width: 18rem;">
            
            <asp:Image ID="Image2" CssClass="align-self-center border-dark container-fluid "
ImageUrl='<%#Eval("img") %>' runat="server" ImageAlign="Bottom" />


              <div class="card-body">
    <h5 class="card-title"><%#Eval("kitap_adi") %></h5>
    <p class="card-text"><span style="font-size:small;"><%#Eval("yazari") %></span></p>
    <a href="detay.aspx?kitapid=<%#Eval("id") %>" class="btn btn-secondary">Kitap Ayrıntıları</a>
  </div>
</div>

                </div>
                
              </div>
            </div>
          </div>
        </div>
       
      </div>
    </ItemTemplate>

    </asp:DataList>
    </div>
  </div>

          <asp:Button class="btn btn-success mb-2"  ID="Button5" runat="server" Text="Tüm Kitapları" OnClick="Button5_Click"  />
    <asp:Button class="btn btn-success mb-2"  ID="Button1" runat="server" Text="Roman Kitapları" OnClick="Button1_Click"  />
    <asp:Button class="btn btn-success mb-2" ID="Button2" runat="server" Text="Edebiyat Kitapları" OnClick="Button2_Click"  />
    <asp:Button class="btn btn-success mb-2" ID="Button3" runat="server" Text="Hikaye Kitapları" OnClick="Button3_Click"  />
    <asp:Button class="btn btn-success mb-2" ID="Button4" runat="server" Text="Felsefe Kitapları" OnClick="Button4_Click"  />
    <asp:Button class="btn btn-success mb-2" ID="Button6" runat="server" Text="Tarih Kitapları" OnClick="Button6_Click"  />

        </section>
<%-- VERİTABANINDAN ÇEKİLEN BİLGİLERİN EKRANA YAZDILIMASININ SONU --%>




    <script>
        function getroman() {
            btn1 = document.getElementById("ContentPlaceHolder1_Button1");
            btn1.click();
        }
        function getedebiyat() {
            btn2 = document.getElementById("ContentPlaceHolder1_Button2");
            btn2.click();
        }
        function gethikaye() {
            btn3 = document.getElementById("ContentPlaceHolder1_Button3");
            btn3.click();
        }
        function gettarih() {
            btn1 = document.getElementById("ContentPlaceHolder1_Button6");
            btn1.click();
        }
        function getfelsefe() {
            btn4 = document.getElementById("ContentPlaceHolder1_Button4");
            btn4.click();
        }
    </script>
   
</asp:Content>

