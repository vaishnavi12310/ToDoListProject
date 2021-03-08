<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<button>
<center>
<a href="addtask${project.id}">Add</a>
</button>
<br>Task Lists<br>
<br>
<table border="1">
  <tr>
   <th>ID</th>
   <th>Name</th>
     <th>status</th>
   <th>Delete</th>
   <th>Close</th>
  </tr>
 <c:forEach items="${project.tasks}" var="t">
 <c:if test="${t.status}">
  <tr>
   <td>${t.id}</td>
    <td>${t.taskName}</td>
    <td>${t.status}</td>
    <td><button><a href="task${t.id}delete${project.id}">Delete</a></button></td> 
    <td><button><a href="task${t.id}close${project.id}">Complete</a></button></td>  
  </tr>
</c:if>
 </c:forEach>
</table>

<br>
<br>Compeleted Tasks<br>
<br>
<table border="1">
  <tr>
   <th>ID</th>
   <th>Name</th>
     <th>status</th>
   <th>Delete</th>
   <th>Close</th>
  </tr>
 <c:forEach items="${project.tasks}" var="t">
 <c:if test="${t.status==false}">
  <tr>
   <td>${t.id}</td>
    <td>${t.taskName}</td>
    <td>${t.status}</td>
    <td><button><a href="task${t.id}delete${project.id}">Delete</a></button></td> 
  </tr>
</c:if>
 </c:forEach>
</table>


</body>
</html>