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
    background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEfv4ib-Mm15jAsSH1B3wf_xiaf1LscvQflw&usqp=CAU");
    background-size: cover; background-repeat: no-repeat;
}
        .admin{
            margin-left: 450px;
            margin-top: 150px;
        }
        .head{font-size: 80px;
        margin-top: 50px}
        a{
            color: navy;
            text-decoration: none;
        }
        button:hover{
            background-color: goldenrod;
            color: black;
        }
        .add{
            height: 50px;
            width: 150px;
            background-color: antiquewhite;
            color: black;
            align-items: center;
            font-family: Arial;
            margin-left: 450px;
        }
    </style>
</head>
<body>

<h1 align="center" class="head">Welcome admin</h1>
<div class="admin">
    <a href="getAllPatients" class="but">GET ALL PATIENT DETAILS</a> <br><br><br>
    <a href="getId/"+id class="but">GET PATIENT BY ID</a> <br><br><br>
    <a href="editPatient/"+id class="but">EDIT PATIENT DETAILS</a> <br><br><br>
        <a href="deletePatient/"+id class="but">DELETE PATIENT DETAILS</a> <br><br><br>
</div>

<button class="add"><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
</body>
</html>
