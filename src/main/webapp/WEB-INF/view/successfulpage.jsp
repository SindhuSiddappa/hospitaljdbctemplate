<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 16-05-2023
  Time: 03:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RegistrationSuccessful</title>
    <style>a{

        text-decoration: none;
    }
    button:hover{
        background-color: goldenrod;
        color: black;
    }</style>
</head>
<body>
<center>
 <h1>${msg}</h1>

 <button><a href="form">REGISTER</a></button>
 <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
 <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/login">LOGIN</a></button>
</center>
</body>
</html>
