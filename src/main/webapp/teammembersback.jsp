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
     <th>Position</th>
     <th>Occupation</th>
     <th>DOJ</th>
     <th>Bio</th>
     <th>Password</th>
     <th>Photo</th>
     <th>Delete</th>
     
    </tr>
    <c:forEach var="member" items="${Members}">
     <tr>
      <td>${member.memberId}</td>
      <td>${member.memberName}</td>
      <td>${member.position}</td>
      <td>${member.occupation}</td>
      <td>${member.DOJ}</td>
      <td>${member.bio}</td>
      <td>${member.password}</td>
      <td><img src ="${member.picture}"></td>
      <td><a href="deletemember/${member.memberId}">Delete</a></td> 
     </tr>
    </c:forEach>
   </table>
  </div>

<h1>Add a new Member or Update an existing one</h1> 

<form method="post" action="savamember" enctype="multipart/form-data">
       <input name="MemberId" placeholder= "ID" type= "text">
       <input name="MemberName" placeholder= "Name" type= "text">
       <input name="Position" placeholder= "Position" type= "text">
       <input name="Occupation" placeholder= "Occupation" type= "text">
       <input name="DOJ" placeholder= "DOJ" type= "Date">
       <lable for= "Pic">Pic:</lable>
       <input name="Pic" placeholder= "Pic" type= "file"><br>
       <lable for= "Bio">Bio:</lable>
       <textarea type="text" id="Bio" name="Bio" rows="2" class="form-control md-textarea"></textarea>
       <input name="password" placeholder= "Password" type= "text">
       <input type="submit" value="Add Staff" />
       </form> 

</body>
</html>