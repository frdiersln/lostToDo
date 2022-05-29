<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CreateChar.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="form-container">
        <div class="form-group">
            <p> Nick </p>
            <asp:TextBox runat="server" AssociatedControlID="Nick" ID="Nick" />
            <br />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Nick" CssClass="text-danger"  ErrorMessage="The nick field is required."/>
        </div>
        <div class="space"></div>
        <div class="form-group">
            <p> Class </p>
            <asp:DropDownList runat="server" AssociatedControlID="Class" ID="Class">
                <asp:ListItem Value="sorceress">Sorceress</asp:ListItem>
                <asp:ListItem Value="bard">Bard</asp:ListItem>
                <asp:ListItem Value="gunslinger">Gunslinger</asp:ListItem>
                <asp:ListItem Value="artillerist">Artillerist</asp:ListItem>
                <asp:ListItem Value="deadeye">Deadeye</asp:ListItem>
                <asp:ListItem Value="sharpshooter">Sharpshooter</asp:ListItem>
                <asp:ListItem Value="shadowhunter">Shadowhunter</asp:ListItem>
                <asp:ListItem Value="deathblade">Deathblade</asp:ListItem>
                <asp:ListItem Value="berserker">Berserker</asp:ListItem>
                <asp:ListItem Value="paladin">Paladin</asp:ListItem>
                <asp:ListItem Value="warlord">Gunlancer (Warlord)</asp:ListItem>
                <asp:ListItem Value="striker">Striker</asp:ListItem>
                <asp:ListItem Value="wardrancer">Wardrancer</asp:ListItem>
                <asp:ListItem Value="scrapper"></asp:ListItem>
                <asp:ListItem Value="soulfist">Soulfist</asp:ListItem>
                <asp:ListItem Value="glaivier">Glaivier</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="space"></div>
        <div class="form-group">
                <asp:Button runat="server" OnClick="CreateChar" Text="Create Character" CssClass="btn btn-default" />
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
    .form-container {
        width: 69%;
    }
}

.form-group{
    width: fit-content;
    margin: auto;
}

.space{
    height: 66px;
}

</style>

</asp:Content>

