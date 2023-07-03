<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 18-05-2023
  Time: 02:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<%--<% Car car6= (Car) request.getAttribute("car5");%>--%>
<table border="1" cellpadding="5px" bgcolor="#add8e6" align="center">
    <tr>
        <th>PATIENT_ID</th>
        <th>PATIENT_NAME</th>
        <th>PATIENT_AGE</th>
        <th>PATIENT_ADDRESS</th>
        <th>PATIENT_PROBLEM</th>

    </tr>
    <tr>
        <td>${patient.patId}</td><br><br>
        <td>${patient.patName}</td>
        <td>${patient.patAge}</td>
        <td>${patient.patAddress}</td>
        <td>${patient.patProblem}</td>

    </tr>
</table>
<br>

    <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/getAllPatients">Back</a></button>
    <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
</center>
</body>
</html>
