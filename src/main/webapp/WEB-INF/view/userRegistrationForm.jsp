<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 08-06-2023
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#e6e6fa">
<center>

<h1>Registration Form</h1>
<form modelAttribute="user" action="getRole" method="post">
    <table align="center">
        <tr>
            <td>USERNAME:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>PASSWORD:</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>ROLE</td>
            <td>
                <select id="role" name="role"> <option>ROLE_ADMIN</option>
                    <option>ROLE_USER</option>
                <option>ROLE_DOCTOR</option>
                    <option>ROLE_OTHER</option></select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="submit" name="submit"></td>
            <td><input type="reset" value="reset" name="submit"></td>
        </tr>

    </table>
</form>
    </center>

</body>
</html>
