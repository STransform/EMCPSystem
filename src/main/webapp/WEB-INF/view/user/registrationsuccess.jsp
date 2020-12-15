<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   
</head>
<body>
    <div class="generic-container">
        <div class="alert alert-success lead">
            ${success}
        </div>
         
        <span class="well pull-left">
            <a href="<c:url value='/add-document-${user.id}' />">Click here to upload/manage your documents</a>   
        </span>
        <span class="well pull-right">
            Go to <a href="<c:url value='/list' />">Users List</a>
        </span>
    </div>
</body>
 
</html>