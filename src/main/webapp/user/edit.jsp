<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/3/2024
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>User Management Application</title>
</head>
<style>
  div {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  table {
    border-collapse: collapse;
    box-shadow:  0 0 5px 2px rgba(0,0,0,0.3);
  }

  th {
    border: 1px solid black;
    padding: 5px;
  }

  td {
    border: 1px solid black;
    padding: 5px;
    text-align: left;
  }

  a {
    text-decoration: none;
    collapse: black;
  }

  a:hover {
    text-decoration: underline;
  }

  span {
    font-weight: bold;
  }

  h1, h2 {
    text-align: center;
  }
</style>
<body>

<h1>User Management</h1>
<h2>
  <a href="users?action=users">List All Users</a>
</h2>

<div>
  <form method="post">
    <table>
      <caption>
        <h2>
          Edit User
        </h2>
      </caption>
      <c:if test="${user != null}">
        <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>
      </c:if>
      <tr>
        <th>User Name:</th>
        <td>
          <input type="text" name="name" size="45"
                 value="<c:out value='${user.name}' />"
          />
        </td>
      </tr>
      <tr>
        <th>User Email:</th>
        <td>
          <input type="text" name="email" size="45"
                 value="<c:out value='${user.email}' />"
          />
        </td>
      </tr>
      <tr>
        <th>Country:</th>
        <td>
          <input type="text" name="country" size="15"
                 value="<c:out value='${user.country}' />"
          />
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