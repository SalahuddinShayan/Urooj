<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Team Member List</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
    <link rel="stylesheet" href="stylesheet.css" >
</head>
<body>
<div class="starter-template">
   <h1>Team Members:</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Id</th>
     <th>Name</th>
     <th>Batch</th>
     <th>Bio</th>
     <th>Photo</th>
     <th>Delete</th>
     
    </tr>
    <c:forEach var="fellow" items="${Fellows}">
     <tr>
      <td>${fellow.fellowId}</td>
      <td>${fellow.fName}</td>
      <td>${fellow.batch}</td>
      <td>${fellow.bio}</td>
      <td><img width="100" src ="<c:out value='${pageContext.request.contextPath}/fellow-image/${fellow.fellowId}'/>" alt="${fellow.fellowId}"></td>
      <td><form method="post" action="deletefellow">
      		<input name="FellowId"  value="${fellow.fellowId}" style="display:none;"/>
      		<input class ="btn btn-primary" type="submit" value="Delete" />
      		</form>
      </td> 
     </tr>
    </c:forEach>
   </table>
  </div>

<h1>Add a new Member or Update an existing one</h1> 

<form method="post" action="savafellow" enctype="multipart/form-data">
       <input name="FellowId" placeholder= "ID" type= "text" required>
       <input name="FellowName" placeholder= "Name" type= "text" required>
       <input name="Batch" placeholder= "Batch" type= "text" required>
       <lable for= "Pic">Pic:</lable>
       <input name="Pic" placeholder= "Pic" type= "file" required><br>
       <lable for= "Bio">Bio:</lable>
       <textarea type="text" id="Bio" name="Bio" rows="2" class="form-control md-textarea" required></textarea>
       <input type="submit" value="Add Fellow" />
       </form> 

</body>
</html>