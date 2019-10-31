<%@ Page Title="Register" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OMDSP.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
     <div class="form-group">
    <label for="inputUsername">Username</label>
     <asp:TextBox ID="username" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Font-Italic="true"  runat="server" ErrorMessage="Username is Required" ControlToValidate="username"></asp:RequiredFieldValidator>
  </div>
    <div class="form-row">
            <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
        <asp:TextBox ID="inputname" type="text" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Font-Italic="true" ControlToValidate="inputname" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
     </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
        <asp:TextBox ID="inputEmail" type="email" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" Font-Italic="true" ControlToValidate="inputEmail" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="MailRegularExpressionValidator1" runat="server" ForeColor="Red" ErrorMessage="Please enter valid email" ControlToValidate="inputEmail" ValidationExpression="([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6})*"></asp:RegularExpressionValidator></div>
  </div>
<div >
    <label for="inputGender">Gender</label><br />
    <asp:RadioButtonList CssClass="form-check form-check-inline" ID="inputGender" runat="server" RepeatDirection="Horizontal" CellPadding="1" CellSpacing="10" >
        <asp:ListItem  Selected="True">Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:RadioButtonList>
</div>

  <div class="form-row">
            <div class="form-group col-md-6">
      <label for="inputEmail4">Phone</label>
        <asp:TextBox ID="inputPhone" type="text" CssClass="form-control" runat="server" placeholder="Phone"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" Font-Italic="true" ControlToValidate="inputPhone" runat="server" ErrorMessage="Atleast 1 phone number isRequired"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Alternate No</label>
        <asp:TextBox ID="inputAltPhone" type="text" CssClass="form-control" runat="server" placeholder="Alternate"></asp:TextBox>
    </div>
  </div>

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputPassword">Password</label>
        <asp:TextBox ID="inputPassword" type="password" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" Font-Italic="true" ControlToValidate="inputPassword" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>

    </div>
    <div class="form-group col-md-6">
      <label for="inputCPassword">Confirm Password</label>
        <asp:TextBox ID="inputcpassword" type="password" CssClass="form-control" runat="server" placeholder="Confirm Password"></asp:TextBox>
    </div>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ControlToCompare="inputcpassword" ErrorMessage="CompareValidator" ControlToValidate="inputPassword"></asp:CompareValidator>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
     <asp:TextBox ID="inputaddress" CssClass="form-control" runat="server" placeholder="1234 Main St"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Font-Italic="true" ControlToValidate="inputaddress" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
        <asp:TextBox ID="inputCity" CssClass="form-control" type="text" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ForeColor="Red" Font-Italic="true" ControlToValidate="inputCity" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
        <asp:DropDownList ID="inputState" runat="server"  CssClass="form-control">
            <asp:ListItem Selected="True">Kerala</asp:ListItem>
            <asp:ListItem>Karnataka</asp:ListItem>
            <asp:ListItem>Tamil Nadu</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
       <asp:TextBox ID="inputZip" type="text" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="inputZip" runat="server" Font-Italic="true" ErrorMessage="ZipCode is Required"></asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <asp:CheckBox ID="ridCheck" CssClass="form-check-input" runat="server" />
      <label class="form-check-label" for="gridCheck">
        I agree to all terms
      </label>
        <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="CheckBoxRequired_ServerValidate" ErrorMessage="You should agree to all erms."></asp:CustomValidator>
    </div>
  </div>
  <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
</form>
</asp:Content>
