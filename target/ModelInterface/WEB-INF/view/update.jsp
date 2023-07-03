<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 18-05-2023
  Time: 03:21 PM
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


    <h1>Edit Patient</h1>
    <%--@elvariable id="patient" type="com"--%>
    <table>
<form:form modelAttribute="patient" action="display" method="post">
        <tr>
            <td><label>Patient_id:</label>
                <form:input path="patId"/><br></td>
        </tr>
        <tr>
            <td> <label> Patient name :</label>
                <form:input path="patName"/><br></td>
        </tr>
        <tr>
            <td>
                <label>Patient AGE :</label>
                <form:input path="PatAge"/><br>
            </td>
        </tr>
    <tr>
        <td>
            <label>Patient Address :</label>
            <form:input path="patAddress"/><br>
        </td>
    </tr>
    <tr>
        <td>
            <label> Patient Problem :</label>
            <form:input path="patProblem"/><br>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" value="Update">
        </td>
    </tr>




    </form:form>
    </table>
    <br>
    <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/getAllPatients">Back</a></button>
    <button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/logout">LOGOUT</a></button>
</center>

</body>
</html>
