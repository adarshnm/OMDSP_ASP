<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Donors.aspx.cs" Inherits="OMDSP.Donors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Donors</h1>
    <div class=" table-responsive">
        <asp:GridView ID="GridView1"  runat="server" CssClass="table table-light" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="DonorsDataSource">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="ngo" HeaderText="NGO" SortExpression="ngo" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="DonorsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [donors]"></asp:SqlDataSource>
    </div>
    </form>
</asp:Content>
