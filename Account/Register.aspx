<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="form-container">
        <div class="form-group">
            <p> User Name </p>
            <asp:TextBox runat="server" ID="UserName"/>
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="Cant Blank!" />
        </div>
        <div class="space"></div>
        <div class="form-group">
            <p> Password </p>
            <asp:TextBox runat="server" ID="Password" TextMode="Password"/>
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="Cant Blank!" />
        </div>
        <div class="space"></div>
        <div class="form-group">
            <p> Confirm Password </p>
            <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"/>
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="Cant Blank!" />
            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="Do not match." />
        </div>
        <div class="space"></div> <div class="space"></div>
        <div class="form-group">
            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register"/>
        </div>
        <div class="form-group">
            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
        </div>
    </div>

<style>
.form-container{
    width: 66%;
    min-width: 241px;
    margin: auto;
    background-color: #242433;
    border-radius: 14px;
    padding: 66px 0px;
}

p{
    width: 141px;
}

@media screen and (max-width: 768px) {
    #loginForm {
        width: 69%;
    }
}

.form-group{
    width: fit-content;
    margin: auto;
}

.form-group span{
    width: 141px!important;
}

.space{
    height: 26px;
}

</style>


</asp:Content>

