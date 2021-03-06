﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
	<% if (ViewData["Message"] != null) { %>
	<div style="border: solid 1px red">
		<%= Html.Encode(ViewData["Message"].ToString())%>
	</div>
	<% } %>
	<p>You must log in before entering the Members Area: </p>
	<form action="Authenticate?ReturnUrl=<%=HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]) %>" method="post">
	<label for="openid_identifier">OpenID: </label>
	<input id="openid_identifier" name="openid_identifier" size="40" />
	<input type="submit" value="Login" />
	</form>
    <ul>
        <li>Sample: <a id="sampleLink" href="#">http://localhost:4864/user/bob</a></li>
    </ul>
	<script type="text/javascript">
	    document.getElementById("openid_identifier").focus();
	    $(document).ready(function() {
	        $('#sampleLink').click(function(e) {
	            e.stopPropagation();
	            $('#openid_identifier').val("http://localhost:4864/user/bob");
	        });
	    });
	</script>

</asp:Content>
