<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>
  
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="container">
<h3 style="color:darkblue">List of Users</h3>
		
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal" >Add New User</button>
			<table class="table table-striped table-bordered  " id="datatable">
                <thead Class="thead-dark">
                  <tr>
                     <th><i class="icon_table"></i>First Name</th>
                      <th><i class="icon_table"></i>Last Name</th>
                    <th><i class="icon_table"></i>User Name</th>
                   
                    
                    <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                
                <tbody>
                  <c:forEach items="${list}" var ="user">
                  <tr>
                  <td>${user.firstname }</td>
                  <td>${user.lastname }</td>
                  <td>${user.username }</td>
                  
                  
                 
                  <td>
                  <a href="/user/findById?id=${user.id}">Edit</a>
                  |
                  <a href="/user/delete?id=${user.id}">Delete</a>
                  </td>
                  </tr>
                  
                  </c:forEach>
                  
                  
        </tbody>
        
       </table>
	
</div>
<style>

.input-group-text i{
float:left;
display:inline-block;
color:#0000A0;
    
}
.form-control {
    border-radius: 2px;
}
.input-group-prepend .fa {
    font-size: 18px;
    float:left;
}

</style>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

			<div class="modal-body">
				<form action="/user-register" method="POST" modelAttribute="userForm">
					

                  <div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input class="form-control" name="firstname"
							placeholder="First name" type="text">
					</div>

					
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input class="form-control" name="lastname"
							placeholder="Last name" type="text">
					</div>
			
			<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input class="form-control" name="username"
							placeholder="User name" type="text">
					</div>



                 <div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input class="form-control" name="password"
							placeholder="Enter Password" type="password">
					</div>

                 <div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-lock"></i>
							</span>
						</div>
						<input class="form-control" name="passwordConfirm"
							placeholder="Retype Password" type="password">
					</div>

			

        
          <div class="form-group">
          <button type="submit" class="btn btn-primary">Save</button> 
          <button type="button" Class="btn btn-danger" data-dismiss="modal">Close</button>       
        </div>             
        </form>
      </div>
      
    </div>
  </div>
</div>



<!-- the script for datatable functionality -->
<script>
$(document).ready(function(){
	$("#datatable").DataTable();
	
})
</script>



<!-- the following link is for jquery datatable and pagination -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>
<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>


  