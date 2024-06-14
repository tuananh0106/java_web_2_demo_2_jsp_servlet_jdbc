<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <%--    <h2>--%>
    <%--        <a href="new">Add New Employee</a>--%>
    <%--        &nbsp;&nbsp;&nbsp;--%>
    <%--        <a href="list">List All Employee</a>--%>

    <%--    </h2>--%>
</center>
<div align="center">
<%--    <c:if test="${employee != null}">--%>
<%--    <form action="update" method="post">--%>
<%--        </c:if>--%>
<%--        <c:if test="${employee == null}">--%>
        <form action="user/insert" method="post">
<%--            </c:if>--%>
            <table border="1" cellpadding="5">
                <caption>
                    <%--                    <h2>--%>
                    <%--                        <c:if test="${employee != null}">--%>
                    <%--                            Edit Employee--%>
                    <%--                        </c:if>--%>
                    <%--                        <c:if test="${employee == null}">--%>
                    <%--                            Add New Employee--%>
                    <%--                        </c:if>--%>
                    <%--                    </h2>--%>
                </caption>
<%--                <c:if test="${employee != null}">--%>
<%--                    <input type="hidden" name="id" value="<c:out value='${employee.id}' />"/>--%>
<%--                </c:if>--%>
                <tr>
                    <th>Username:</th>
                    <td>
                        <input type="text" name="name" size="45"/>
                    </td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td>
                        <input type="password" name="password" size="45"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save"/>
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>
