<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CreateChar.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <asp:ValidationSummary runat="server" CssClass="text-danger" />
    <div class="form-group">
        <p> Nick </p>
        <asp:TextBox runat="server" AssociatedControlID="Nick" ID="Nick" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Nick" CssClass="text-danger"  ErrorMessage="The nick field is required."/>
    </div>
    <div class="form-group">
        <p> Class </p>
        <asp:TextBox runat="server" AssociatedControlID="Class" ID="Class"/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Class" CssClass="text-danger" ErrorMessage="The class field is required." />
    </div>
    <div class="form-group">
            <asp:Button runat="server" OnClick="CreateChar" Text="Create Character" CssClass="btn btn-default" />
    </div>
</asp:Content>

