<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>



<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Project Name</th>
      <th scope="col">Delete</th>
            <th scope="col">Tasks</th>
      
    </tr>
    
  </thead>
  <tbody>
 <c:forEach items="${plist}"  var="p" >
 <tr> 
   <td>${p.id}</td>
   <td>${p.projectName}</td>
   <td><button><a href="projectdelete${p.id}">Delete</a></button></td>
   <td><button><a href="viewtask${p.id}">viewtask</a></button></td>
   
 </tr>
 </c:forEach>
 </tbody>
</table>
<button>
<center>
<a href="projectadd">Add</a></center>
</button>
</body>
</html>