<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="project" action="projectsave"> 
 Id:<form:input path="id"/><br>
 Project Name:<form:input path="projectName"/><br>
  <input type="submit" value="save" >
</form:form>
</body>
</html>