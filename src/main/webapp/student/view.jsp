<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/2/2024
  Time: 6:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View student</title>
</head>
<body>
<h1>Student information details</h1>
<p>
  <a href="/students">Back to student list</a>
</p>
<c:if test = "${requestScope.message != null}">
  <p>${requestScope.message}</p>
</c:if>
<table>
  <tr>
    <td>Name: </td>
    <td>${requestScope.student.name}</td>
  </tr>
  <tr>
    <td>Score: </td>
    <td>${requestScope.student.score}</td>
  </tr>
</table>
</body>
</html>
