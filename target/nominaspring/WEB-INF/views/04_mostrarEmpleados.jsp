<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar empleados</title>
</head>
<body>
	<h2>Empleados</h2>
	<table border=1>
		<tbody>
			<tr>
				<th>NOMBRE</th>
				<th>DNI</th>
				<th>SEXO</th>
				<th>CATEGORIA</th>
				<th>ANIOS</th>
			</tr>
			<c:forEach items="${model.employees}" var="employee">
				<c:out value="${employee.name}" />
				<c:out value="${employee.dni}" />
				<c:out value="${employee.name}" />
				<c:out value="${employee.sex}" />
				<c:out value="${employee.category}" />
				<c:out value="${employee.years}" />

			</c:forEach>
		</tbody>
	</table>
</body>
</html>