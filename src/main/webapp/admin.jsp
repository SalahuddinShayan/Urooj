<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Admin Home</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
    <link rel="stylesheet" href="stylesheet.css" >
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
</head>
<body class="bgyo login">
<div class = "container ">
<h2>Welcome Admin! What do you want to do?</h2>
<p style ="text-align: right"><a href ="home" >Logout</a></p>
<a href="newstaff" style="margin-bottom:50px">Create and Manage Staffs</a><br>
<a href="engineerlist" style="margin-bottom:50px">View and Edit Engineer List</a><br>
<a href="customerlist" style="margin-bottom:50px">View and Edit Customer List</a>
</div>

</body>
</html>