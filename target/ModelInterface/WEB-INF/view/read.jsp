<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 17-05-2023
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>PatientRecords</title>
    <style>
        .add{
            height: 50px;
            width: 150px;
            background-color: antiquewhite;
            color: black;
            align-items: center;
            font-family: Arial;
            margin-left: 450px;
        }
        .logo{
            height: 50px;
            width: 150px;
            background-color: antiquewhite;
            color: black;
            align-items: center;
            font-family: Arial;
            margin-left: 750px;
            margin-top: -50px;
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
<body bgcolor="#5f9ea0">

<h1 align="center">ALL PATIENT RECORDS</h1>

<table border="2px" cellpadding="10px" cellspacing="5px" align="center">
    <tr>
        <th>PATIENT_ID</th>
        <th>PATIENT_NAME</th>
        <th>PATIENT_AGE</th>
        <th>PATIENT_ADDRESS</th>
        <th>PATIENT_PROBLEM</th>
        <th>EDIT</th>
        <th>DELETE</th>

    </tr>
    <c:forEach var="patient" items="${patientList}">
        <tr>

            <td><a href="getId/${patient.patId}">${patient.patId}</a></td>
        <td>${patient.patName}</td>
        <td>${patient.patAge}</td>
        <td>${patient.patAddress}</td>
        <td>${patient.patProblem}</td>
            <td><button><a href="editPatient/${patient.patId}">Edit</a></button></td>
            <td><button><a href="deletePatient/${patient.patId}">Delete</a></button></td>

    </tr>
        </c:forEach>
</table> <br><br><br>
<button class="add"><a href="form">Add New Patient</a></button>
<button class="logo"><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
</body>
</html>
