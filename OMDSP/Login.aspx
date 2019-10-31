<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OMDSP.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1"  runat="server">
  <center>
      <h2 class="text-center">Login</h2>
      <br />
        <div class="form-group col-md-4  ">
    <label for="login_uname">Username</label>
    <asp:TextBox ID="login_uname" type="type" CssClass="form-control text-center " runat="server" aria-describedby="nameHelp" placeholder="Enter Username"></asp:TextBox>
  </div>
  <div class="form-group col-md-4 text-center">
    <label for="password">Password</label>
    <asp:TextBox ID="login_password" type="password" CssClass="form-control text-center" runat="server" placeholder="Password"></asp:TextBox>

  </div>
  </center>
  <div class="text-center">
      <asp:Button ID="LoginButton" OnClick="LoginButton_Click" CssClass="btn btn-primary" runat="server" Text="Sign In" />
  </div>
</form>
</asp:Content>
