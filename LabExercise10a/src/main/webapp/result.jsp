<%@ page language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>

<h2>User Details</h2>

<%
    String name = (String) request.getAttribute("username");
    String email = (String) request.getAttribute("email");
    String desig = (String) request.getAttribute("designation");
%>

<p><b>Username:</b> <%= name %></p>
<p><b>Email:</b> <%= email %></p>
<p><b>Designation:</b> <%= desig %></p>

<br>
<a href="index.jsp">Go Back</a>

</body>
</html>