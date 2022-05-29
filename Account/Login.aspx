<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
            <section id="loginForm">
                    <div class="form-group">
                        <p> User Name </p>
                        <asp:TextBox runat="server" AssociatedControlID="UserName" ID="UserName" />
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
                    <div class="form-group">
                        <div class="checkbox">
                            <asp:CheckBox runat="server" ID="RememberMe"/>
                            <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>
                    </div>
                    <div class="space"></div>
                    <div class="form-group">
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                        if you don't have a local account.
                    </div>
            </section>

<style>
#loginForm{
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


/*checkbox aligment fix*/
#MainContent_RememberMe{
    margin-left: 0;
}

</style>

</asp:Content>

