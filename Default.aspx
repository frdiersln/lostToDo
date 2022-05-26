<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="cards">

        <div class="card"  runat="server" id="PlusCard">
            <div class="card-content">
            </div>
            <div class="card-bg"><img src="imgs/addChar.jpg" alt="Add New Character" /></div>
        </div>

    </div>
<style>

.cards{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(253.13px, 389px));
    gap: 66px 40px;
    justify-content:center;
}

.card{
    width: 100%;
    height: 662px;
    position: relative;
    text-align: center;
    cursor: pointer;
}

.card .card-content {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.card .card-bg {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    border-radius: 20px;
    overflow: hidden;
    z-index: 0;
}
.card .bg-img {
    height: 100%;
    object-fit: cover;
    vertical-align: middle;
}

.card img {
    width: 100%;
    height: auto;
    border-radius: 14px;
}
</style>

</asp:Content>
