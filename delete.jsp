
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read Data</title>
</head>
<body>
<div align="center">


<sql:setDataSource var="mysqlds" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
<sql:update var="status" dataSource="${mysqlds}">
delete from department where dept_id=<%=request.getParameter("dept_id")%>
</sql:update>
<jsp:forward page="read.jsp"></jsp:forward>
 <div align="center">
<core:out value="Edited successfully"></core:out>
<a href="index.jsp">Home</a></br>
<a href="read.jsp">Display</a>
</div>

</div>

</body>
</html>