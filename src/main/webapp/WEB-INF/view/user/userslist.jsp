<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>
  
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Users List</title>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
 
</head>
 
<body>

    <div class="generic-container">
        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">List of Users </span></div>
            <div class="tablecontainer">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>User Name</th>
                            <th>Password</th>
                            <th width="100"></th>
                            <th width="100"></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.firstname}</td>
                            <td>${user.lastname}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>${user.passwordConfirm}</td>
                            <td><a href="<c:url value='/edit-user-${user.id}' />" class="btn btn-success custom-width">edit</a></td>
                            <td><a href="<c:url value='/delete-user-${user.id}' />" class="btn btn-danger custom-width">delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="well">
            <a href="<c:url value='/newuser' />">Add New User</a>
        </div>
    </div>
</body>
</html>