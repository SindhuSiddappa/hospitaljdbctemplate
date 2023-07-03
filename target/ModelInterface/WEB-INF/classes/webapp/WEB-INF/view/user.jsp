<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 13-06-2023
  Time: 02:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .but{
            text-align: center;
            font-family: sans-serif;
            font-size: larger;
        }
        body{
            background-image:url("data:image/jpeg;base64,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");
            background-size: cover; background-repeat: no-repeat;
        }
        .admin{
            margin-left: 550px;
            margin-top: 150px;
            font-size: 20px;
        }
        .head{font-size: 70px;
            margin-top: 50px;
        color: white}

        a{
            color: indigo;
            text-decoration: none;
        }
        .add{
            height: 50px;
            width: 150px;
            background-color: antiquewhite;
            color: black;
            align-items: center;
            font-family: Arial;
            margin-left: 600px;
        }
    </style>
</head>
<body>

<h1 align="center" class="head">Welcome User</h1>
<div class="admin">
    <a href="getAllPatients" class="but">GET ALL PATIENT DETAILS</a> <br><br><br>
    <a href="getId/"+id class="but">GET PATIENT BY ID</a> <br><br><br>
        <a href="editPatient/"+id class="but">EDIT PATIENT DETAILS</a> <br><br><br>
    <a href="deletePatient/"+id class="but">DELETE PATIENT DETAILS</a> <br><br><br>
    <%--<c:if hours <49
        <a href="deletePatient/"+id class="but">DELETE PATIENT DETAILS</a> <br><br><br>
    </c:if>--%>
</div>

<button class="add"><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
</body>
</html>
