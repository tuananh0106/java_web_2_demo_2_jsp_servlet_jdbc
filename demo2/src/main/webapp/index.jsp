<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<%! int a = 100, b =2; %>
<%! java.util.Date myDate = new java.util.Date(); %>
<p>The date is <%=myDate%></p>
<p>The caculate <%=a/b%></p>
<% for (int i=0; i<11; i++) { %>
<br>
<%= i %>
<% }//end for loop %>
</body>
</html>