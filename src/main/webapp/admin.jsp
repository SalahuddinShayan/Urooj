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
<body class="bgy">
<div class = "login ">
<h2 class="center">Welcome Admin! What do you want to do?</h2>
<p  class="right"><a onclick="myFunction()" class ="btn btn-primary" href ="home" >Logout</a></p><br>
<div class="center">
	<form method="post" action="teammembers">    
         <input name="admin"  value="${admin}" style="display:none;"/>  
         <input class ="btn btn-primary" type="submit" value="Team Members" />    
    </form>
    <form class="center" method="post" action="fellowsback">    
         <input name="admin"  value="${admin}" style="display:none;"/>  
         <input class ="btn btn-primary" type="submit" value="Fellows" />    
    </form>
    <form class="center" method="post" action="messages">    
         <input name="admin"  value="${admin}" style="display:none;"/>  
         <input class ="btn btn-primary" type="submit" value="Messages" />    
    </form>
</div>
</div>
<script type="text/javascript">
function myFunction() {
	session.invalidate()
</script>
</body>
</html>