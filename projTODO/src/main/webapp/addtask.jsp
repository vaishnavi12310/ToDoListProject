<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="GET" modelAttribute="tasks"
		action="tasksave${project.id}">


		<div class="row">
			<div class="col">
				ID:
				<form:input path="id" />
				<br>
			</div>
		</div>
			<div class="col">
				TaskName:
				<form:input path="taskName" />
				<br>
		</div>
			<div class="col">
				Status:
				<form:input path="status" />
				<br>
		</div>

		<input type="submit" value="save">


	</form:form>
</body>
</html>