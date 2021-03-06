﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcMusicStore.Models.Album>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete Confirmation</h2>

    <p>
        Are you sure you want to delete the album titles
        <strong><%: Model.Title %></strong> ?
    </p>

    <div>
    <% using (Html.BeginForm()) { %>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    <% } %>
    </div>


<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Album</legend>

    <div class="display-label">GenreId</div>
    <div class="display-field"><%: Model.GenreId %></div>

    <div class="display-label">ArtistId</div>
    <div class="display-field"><%: Model.ArtistId %></div>

    <div class="display-label">Title</div>
    <div class="display-field"><%: Model.Title %></div>

    <div class="display-label">Price</div>
    <div class="display-field"><%: String.Format("{0:F}", Model.Price) %></div>

    <div class="display-label">AlbumArtUrl</div>
    <div class="display-field"><%: Model.AlbumArtUrl %></div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

