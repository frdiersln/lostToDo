<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="To-Do.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="top-bar">
        <%: Class %> | <%: Nick %>
        <asp:Button ID="BtnSave" CssClass="hiddenBtn" Text="Save" runat="server" AutoPostBack="true" OnClick="BtnSave_Click" />
    </div>
    <hr />
    <div class="formContainer">
        <!-- 
            daily tasks,
            weekly tasks,
            merchant ships, 
            chaos(daily-2), guardian raid(daily-2), abbysal dungeon, 
            cube, boss rush,
            rapports,
        -->
        <div id="row1" class="rows"> 
            <div class="headClmn"> Daily Tasks </div>
            <div class="clmns"> <asp:CheckBox ID="daily1" runat="server" AutoPostBack="true" OnCheckedChanged="daily1_CheckedChanged" /> </div>
            <div class="clmns"> <asp:CheckBox ID="daily2" runat="server" AutoPostBack="true" OnCheckedChanged="daily2_CheckedChanged" /> </div>
            <div class="clmns"> <asp:CheckBox ID="daily3" runat="server" AutoPostBack="true" OnCheckedChanged="daily3_CheckedChanged" /> </div>
        </div>
        <div class="space"></div>
        <div id="row2" class="rows"> 
            <div class="headClmn"> Weekly Tasks </div>
            <div class="clmns"> <asp:CheckBox ID="weekly1" runat="server" AutoPostBack="true" OnCheckedChanged="weekly1_CheckedChanged" /> </div>
            <div class="clmns"> <asp:CheckBox ID="weekly2" runat="server" AutoPostBack="true" OnCheckedChanged="weekly2_CheckedChanged" /> </div>
            <div class="clmns"> <asp:CheckBox ID="weekly3" runat="server" AutoPostBack="true" OnCheckedChanged="weekly3_CheckedChanged" /> </div>
        </div>
        <div class="space"></div>
        <div id="row3" class="rows"> 
            <div class="clmns"> Chaos <asp:CheckBox ID="chaos1" runat="server" AutoPostBack="true" OnCheckedChanged="chaos1_CheckedChanged"  /> <asp:CheckBox ID="chaos2" runat="server" AutoPostBack="true" OnCheckedChanged="chaos2_CheckedChanged"  /> </div>
            <div class="clmns"> Guardian Raid <asp:CheckBox ID="guardian1" runat="server" AutoPostBack="true" OnCheckedChanged="guardian1_CheckedChanged"  /> <asp:CheckBox ID="guardian2" runat="server" AutoPostBack="true" OnCheckedChanged="guardian2_CheckedChanged" /> </div>
            <div class="clmns"> Abbysal Dungeon <asp:CheckBox ID="abbysal" runat="server" AutoPostBack="true" OnCheckedChanged="abbysal_CheckedChanged" /> </div>
        </div>
        <div class="space"></div>
        <div id="row4" class="rows"> 
            <div class="clmns"> Cube <asp:CheckBox ID="cube" runat="server" AutoPostBack="true" OnCheckedChanged="cube_CheckedChanged" /> </div>
            <div class="clmns"> Boss Rush <asp:CheckBox ID="bossRush" runat="server" AutoPostBack="true" OnCheckedChanged="bossRush_CheckedChanged" /> </div>
            <div class="clmns"> Mystic Raid <asp:CheckBox ID="mysticRaid" runat="server" AutoPostBack="true" OnCheckedChanged="mysticRaid_CheckedChanged"  /> </div>
        </div>
        <div class="space"></div>
        <div id="row5" class="rows"> 
            <div class="clmns"> <img style="width:auto;height:80px" src="imgs/Icons/ship.png" alt="ship" /> <br> Merchant Ships  <asp:CheckBox ID="MerchantShips" runat="server" AutoPostBack="true" OnCheckedChanged="MerchantShips_CheckedChanged" /> </div>
        </div>
        <div class="space"></div>
        <div id="row6" class="rows"> 
            <div class="headClmn"> Rapports </div>
            <div class="clmns"> <asp:CheckBox ID="rapport1" runat="server" AutoPostBack="true" OnCheckedChanged="rapport1_CheckedChanged" /> </div>
            <div class="clmns"> <asp:CheckBox ID="rapport2" runat="server" AutoPostBack="true" OnCheckedChanged="rapport2_CheckedChanged" /> </div>
            <div class="clmns"> <asp:CheckBox ID="rapport3" runat="server" AutoPostBack="true" OnCheckedChanged="rapport3_CheckedChanged" /> </div>
        </div>
    </div>
<style>

.hiddenBtn{
    width: 0;
    height: 0;
    visibility: hidden;
}

.top-bar{
    font-size: 26px;
    text-align: center;
}

hr{
    width: 96.6%;
    opacity: 0.41;
}

.formContainer{
    background-color: #242433;
    border-radius: 14px;
    padding: 66px 41px;
    color: white;
}

.space{
    height: 126px;
}
.rows{
    display: grid;
}

#row1, #row2, #row6{
    grid-template-columns: 25% 25% 25% 25%;
}

#row4, #row3{
    grid-template-columns: 33% 33% 33%;
}

.clmns{
    text-align: center;
}

</style>
</asp:Content>