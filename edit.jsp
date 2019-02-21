<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>
Edit DATA</h1>
<a href="index.jsp">Back</a>
<form action="editaction.jsp">
<table class="table">
<sql:setDataSource var="mysqlds" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
<sql:query var="rs" dataSource="${mysqlds}">select * from department where dept_id=<%=request.getParameter("dept_id") %></sql:query>
<core:forEach items="${rs.rows}" var="dept">


<tr><th>Dept ID</th><td><input type="text" value="${dept.dept_id}" name="dept_id" readonly="readonly"></td></tr>
<tr><th>Dept Name</th><td><input type="text" value="${dept.dept_name}" name="dept_name"></td></tr>
<tr><th>Start Date</th><td><input type="date" value="${dept.start_date}" name="start_date"></td></tr>
<tr><td><input type="reset" value="Clear"/></td><td><input type="submit" value="Insert"/></td></tr>
</core:forEach>
</table>
</form> 
</div>
</body>
</html>