﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="cards">
        
        <%= CharCards %>

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
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
    padding-top: 150%;
    position: absolute;     
    z-index: 1;
    font-size: 22px;
    font-weight: 200;
    letter-spacing: 0.66em; 
}

.card .card-bg {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    border-radius: 20px;
    overflow: hidden;
}

.card .card-bg img {
    width: 100%;
    height: auto;
    border-radius: 14px;
    -webkit-filter: blur(2.6px); /* Safari 6.0 - 9.0 */
    filter: blur(2.6px);
}

.card:hover {
    border: 2px solid transparent; /*onhover slightly shrink effect*/
}
</style>

</asp:Content>
