<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <asp:ValidationSummary runat="server" CssClass="text-danger" />
    <div class="form-group">
        <p> User Name </p>
        <asp:TextBox runat="server" ID="UserName"/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." />
    </div>
    <div class="form-group">
        <p> Password </p>
        <asp:TextBox runat="server" ID="Password" TextMode="Password"/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
    </div>
    <div class="form-group">
        <p> Confirm Password </p>
        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
    </div>
    <div class="form-group">
        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register"/>
    </div>
</asp:Content>

