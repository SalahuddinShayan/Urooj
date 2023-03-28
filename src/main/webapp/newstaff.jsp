<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
    <link rel="stylesheet" href="stylesheet.css" >
</head>
<body>

<div class="starter-template">
   <h1>Staff:</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th style ="margin-right: 50px">Customer Id</th>
     <th>Customer Name</th>
     <th>Password</th>
     <th>Photo</th>
     <th>Delete</th>
     
    </tr>
    <c:forEach var="staff" items="${staffs}">
     <tr>
      <td>${staff.authorId}</td>
      <td>${staff.authorName}</td>
      <td>${staff.password}</td>
      <td><img src ="${staff.staffpic}"></td>
      <td><a href="deletestaff/${staff.authorId}">Delete</a></td> 
     </tr>
    </c:forEach>
   </table>
  </div>

<h1>Add a new Customer or Update an existing one</h1>  
       <!--<form:form method="post" action="savestaff" enctype="multipart/form-data">    
        <table >
         <tr>    
          <td>Staff Id : </td>   
          <td><form:input path="AuthorId"  /></td>  
         </tr> 
         <tr>    
          <td>Staff Name: </td>   
          <td><form:input path="AuthorName"  /></td>  
         </tr>
         <tr>    
          <td>Staff Photo: </td>   
          <td><form:input path ="Staffpic" name="image" type="file" accept="image/*" /></td>  
         </tr>     
         <tr>    
          <td>Password</td>   
          <td><form:input path="Password"  /></td>  
         </tr>          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add Staff" /></td>    
         </tr>    
        </table>    
       </form:form>-->
       
       <form method="post" action="savestaff" enctype="multipart/form-data">
       <input name="AuthorId" placeholder= "ID" type= "text">
       <input name="AuthorName" placeholder= "Name" type= "text">
       <lable for= "image">Pic:</lable>
       <input name="image" placeholder= "Name" type= "file">
       <input name="Password" placeholder= "Password" type= "password">
       <input type="submit" value="Add Staff" />
       </form>



</body>
</html>