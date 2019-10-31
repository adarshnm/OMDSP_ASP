<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OMDSP.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="res/css/home_style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="jumbotron">
               <img class="img-fluid float-right" src="res/images/people.jpg" />
  <h1 class="display-4 heading">Save Lives</h1>

    <br />
     <div >

  </div>
  <p class="lead">Donate Medicines – Support the less privileged.</p>
 
    <hr class="my-4">

  <p>With your kind generosity, we are able to treat thousands of underprivileged children from basic illness to severe medical condition with special emphasis on vitamin deficiencies and malnutrition that effects of every illness.</p>
    <asp:HyperLink ID="HyperLink1"  runat="server" CssClass="btn btn-danger btn-lg" NavigateUrl="~/Register.aspx"><span class="text-light">Donate Now!</span></asp:HyperLink>
</div>
</asp:Content>
