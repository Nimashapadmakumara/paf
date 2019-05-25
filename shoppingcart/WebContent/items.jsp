<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%
	com.RiWA.Model.Item item = new com.RiWA.Model.Item();
	String itemsGrid = item.getItems();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items</title>
<script type="text/javascript" src="Controllers/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="Controllers/controllerMain.js"></script>

</head>
<body>
 	<%@ page import="com.RiWA.Model.Item" %>
	<%@ page import="javax.sql.*" %> 

	<form id="formItems" action="items.jsp" method="post">
		<input type="hidden" id="hidItemID" name="hidItemID" value="0">
		 Item Name: <input type="text" id="txtItemName" name="txtItemName"> <br>
		 Item Description: <input type="text" id="txtItemDesc" name="txtItemDesc">
		<br><br>
		<input type="button" id="btnSave" name="btnSave" value="Save">
		<input type="button" id="btnRefresh" name="btnRefresh" value="Refresh">
		<input type="button" id="btnsubmit" name="btnsubmit" value="submit">
		 <br><br>
		
		<div id="divStsMsgItem"></div>
		<div id="divItemsTable"><% out.println(itemsGrid); %></div>
	 </form>

</body>
</html>