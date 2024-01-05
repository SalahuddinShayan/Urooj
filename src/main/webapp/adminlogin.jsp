<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Admin Login</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
    <link rel="stylesheet" href="stylesheet.css" >
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
</head>
<body class="bgy">
<div class= "login">
<form:form method="post" action="alogin"> 

		<h4 align="center" class ="bold">Admin Login</h4>   
        <table class="ct">
         <tr>    
          <td>Login Id : </td>   
          <td><form:input path="login" placeholder=" Login" /></td>  
         </tr>
         <tr>    
          <td>Password : </td>   
          <td><form:input path="password"  /></td>  
         </tr>          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Login" /></td>    
         </tr>    
        </table>    
       </form:form> 
</div>       
</body>
</html>