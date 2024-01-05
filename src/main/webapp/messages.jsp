<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Messages</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
    <link rel="stylesheet" href="stylesheet.css" >
</head>
<body>

<div class="starter-template">
   <h1>Messages:</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Message Id</th>
     <th>Name</th>
     <th>E-mail</th>
     <th>Phone</th>
     <th>Subject</th>
     <th>Message</th>
     <th>TimeStamp</th>
     
    </tr>
    <c:forEach var="mess" items="${messages}">
     <tr>
      <td>${mess.messageId}</td>
      <td>${mess.mName}</td>
      <td>${mess.email}</td>
      <td>${mess.phone}</td>
      <td>${mess.subject}</td>
      <td>${mess.message}</td>
      <td>${mess.utilTimestamp}</td>
      
     </tr>
    </c:forEach>
   </table>
  </div>

</body>
</html>