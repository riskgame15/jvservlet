<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/2/2024
  Time: 6:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit student</title>
</head>
<body>
<h1>Edit student</h1>
<p>
  <c:if test='${requestScope.message != null}'>
    <span class="message">${requestScope.message}</span>
  </c:if>
</p>
<p>
  <a href="/students">Back to student list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Student information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope.student.name}"></td>
      </tr>
      <tr>
        <td>Score: </td>
        <td><input type="text" name="score" id="score" value="${requestScope.student.score}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update student"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
