<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 19-05-2023
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
    <style>
        a{
            text-decoration: none;
        }
        button:hover{
            background-color: goldenrod;
            color: black;
        }
    </style>
</head>
<body>
<center>
<h1>patient deatials has been deleted successfully</h1>
<button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/getAllPatients">Back</a></button>
<button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
</center>
</body>
</html>
