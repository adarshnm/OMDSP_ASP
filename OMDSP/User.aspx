<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="OMDSP.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hi <%= name %></h1>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Donate.aspx" runat="server">Donate</asp:HyperLink>
</asp:Content>
