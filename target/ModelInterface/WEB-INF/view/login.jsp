<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 05-06-2023
  Time: 05:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        button{
            color: black;
            background-color: darkgray;
            height: 40px;
            width:100px;
            background-color: white;
            margin-top: 50px;
        }
        a{
            text-decoration: none;
        }
        button:hover{
            background-color: goldenrod;
            color: black;
        }
    </style>
</head>
<body bgcolor=#b0c4de>
<center>
<h1>Welcome To Login Page</h1>
<form  action="${pageContext.request.contextPath}/login"  method="post">
    <table>
        <tr>
            <td>USERNAME:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>PASSWORD:</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="submit" name="submit"></td>
            <td><input type="reset" value="reset" name="reset"></td>
        </tr>

    </table>
    <button><a href="register">SIGN UP</a></button>
    <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/">HOME</a></button>
</form>
</center>
</body>
</html>
