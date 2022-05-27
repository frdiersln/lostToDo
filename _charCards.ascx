<%@ Control Language="C#"  AutoEventWireup="true" CodeFile="_charCards.ascx.cs" Inherits="_charCards" %>

<asp:Literal runat="server" ID="Literal1" Text="<%# FieldValueString %>" />

<% foreach (Character chr in Characters){ %>
    <div class="card">
        <a href="To-Do?id=<%: chr.Id %>"><span class="clickable"></span></a> <!-- href for to-do page -->
        <div class="card-content">
            <%: chr.Nick %>
        </div>
        <div class="card-bg"><img src="imgs/<%: chr.Class %>.jpg" alt="Sorceress" /></div>
    </div>
<% } %>

<style>

.clickable {
  height: 100%;
  width: 100%;
  left: 0;
  top: 0;
  position: absolute;     
  z-index: 2;
}

</style>
