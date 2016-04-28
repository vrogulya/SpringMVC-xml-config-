<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ page import="java.util.List"%>
<%@ page import="ua.lviv.lgs.domain.Author"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<tbody>
			<jstl:if test="${authors.size() < 3 }">
				TRUE
			</jstl:if>
			<jstl:out value="${authors}"/>
			<jstl:forEach items="${authors}" var="author">
				<tr>
					<td>${author.name}</td>
					<td>${author.age}</td>
				</tr>
			</jstl:forEach>
		</tbody>
	</table>
</body>
</html>