<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OMDSP.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
  <div class="form-group">
    <label for="login_uname">Username</label>
    <asp:TextBox ID="login_uname" type="type" CssClass="form-control" runat="server" aria-describedby="nameHelp" placeholder="Enter Username"></asp:TextBox>
      <small id="namelHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <asp:TextBox ID="login_password" type="password" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>

  </div>
        <asp:Button ID="LoginButton" OnClick="LoginButton_Click" CssClass="btn btn-primary" runat="server" Text="Sign In" />
</form>
</asp:Content>
