
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read Data</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<div align="center">

<a href="index.jsp">Back</a>
<h1>Depatment_Details</h1>
<table border="1" class="table">

<tr>
<th>Dept ID</th>
<th>Dept_Name</th>
<th>Start_Date</th>
<th>Action</th>

</tr>
<sql:setDataSource var="mysqlds" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
<sql:query var="rs" dataSource="${mysqlds}">select * from department</sql:query>
<core:forEach items="${rs.rows}" var="dept">
<tr>
<td><core:out value="${dept.dept_id}"></core:out> </td>
<td><core:out value="${dept.dept_name}"></core:out> </td>
<td><core:out value="${dept.start_date}"></core:out> </td>
<td> <a href="edit.jsp?dept_id=${dept.dept_id}">Edit</a> | <a href="delete.jsp?dept_id=${dept.dept_id}">Delete</a></td>
</tr>


</core:forEach>


</table>

</div>

</body>
</html>