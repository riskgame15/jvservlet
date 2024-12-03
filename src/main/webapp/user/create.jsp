<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/3/2024
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <h2>Add New User</h2>
      </caption>
      <tr>
        <th>User Name:</th>
        <td>
          <input type="text" name="name" id="name" size="45"/>
        </td>
      </tr>
      <tr>
        <th>User Email:</th>
        <td>
          <input type="text" name="email" id="email" size="45"/>
        </td>
      </tr>
      <tr>
        <th>Country:</th>
        <td>
          <input type="text" name="country" id="country" size="15"/>
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
