<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Registration Page</title>
    <style>
        .error{
            color: red;
        }
        button{
            margin-left: 600px;
            margin-top: 30px;
            color: black;
            background-color: white;
            height: 40px;
            width: 100px;
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
<body bgcolor="#a9a9a9">


<h1 align="center">registration form</h1>


<%--@elvariable id="patient" type="sample"--%>
<table border="2px" cellpadding="10px" cellspacing="5px" align="center">
<form:form modelAttribute="patient" action="create" method="post">
<tr>
        <td>NAME: <form:input path="patName"/>
            <form:errors path="patName" cssClass="error"/><br><br></td>
</tr>
    <tr>
        <td>AGE: <form:input path="patAge"/>
            <form:errors path="patAge" cssClass="error"/><br><br></td>
    </tr>
    <tr>
   <td> ADDRESS:<form:input path="patAddress"/>
       <form:errors path="patAddress" cssClass="error"/><br><br></td>
    </tr>
    <tr>
   <td>PROBLEM:<form:input path="patProblem"/>
       <form:errors path="patProblem" cssClass="error"/><br><br></td>
    </tr>
    
    <tr>
   <td> <input type="submit" value="Register Now"></td>
    </tr>
</form:form>
    </table>
<button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/">HOME</a></button>
<button><a href="http://localhost:8082/hospitaljdbctemplate_war_exploded/login">LOGIN</a></button>

</body>
</html>
