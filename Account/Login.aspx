<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
            <section id="loginForm">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <p> User Name </p>
                        <asp:TextBox runat="server" AssociatedControlID="UserName" ID="UserName" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                    <div class="form-group">
                        <p> Password </p>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <asp:CheckBox runat="server" ID="RememberMe"/>
                            <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                    </div>
                    <div>
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                        if you don't have a local account.
                    </div>
            </section>

<style>

/*checkbox aligment fix*/
#MainContent_RememberMe{
    margin-left: 0;
}

</style>

</asp:Content>

