<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="OMDSP.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%if (NGOs.Count == 0)
            {%>
        <h3>No NGOs are currently available.</h3>
        <%}
    else
    { %>
        <form id="form1" runat="server">
            <h1 class="text-center">Donate Now</h1>
        <div class="form-group">
            <label for="DropDownList1">Choose NGO</label>
          <asp:DropDownList ID="DropDownList1" CssClass="form-control col-md-4" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [NGO_Details]"></asp:SqlDataSource>
        </div>
        <div class="form-group align-content-md-end">
            <div class="text-right">
                <asp:Button ID="AddField" CssClass="btn btn-success col-md-1" OnClick="AddField_Click" runat="server" Text="Confirm" />
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <asp:Label ID="Label1" runat="server"  Text="Tablets"></asp:Label>
            </div>
            <div class="form-group col-md-2">
                <asp:TextBox ID="Quantity1" CssClass="form-control" runat="server" TextMode="Number" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <asp:Label ID="Label2" runat="server"  Text="Syrups"></asp:Label>
            </div>
            <div class="form-group col-md-2">
                <asp:TextBox ID="Quantity2" CssClass="form-control" runat="server" TextMode="Number" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <asp:Label ID="Label3" runat="server"  Text="Sanitary Pads"></asp:Label>
            </div>
            <div class="form-group col-md-2">
                <asp:TextBox ID="Quantity3" CssClass="form-control" runat="server" TextMode="Number" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <asp:Label ID="Label4" runat="server"  Text="Others"></asp:Label>
            </div>
            <div class="form-group col-md-2">
                <asp:TextBox ID="Quantity4" CssClass="form-control" runat="server" TextMode="Number" Text="0"></asp:TextBox>
            </div>
        </div>
       </form>
     <% }%>


</asp:Content>
