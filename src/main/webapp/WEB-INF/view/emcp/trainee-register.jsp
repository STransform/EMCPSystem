<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>


<div class="container">

	<div class="panel panel-primary">
		<div class="panel-heading">List of Trainee</div>
		
		<br></br>
		<form action="/organizations" method="get">
					
				</form>
				
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal" >New Trainees</button>
        
		
			<table class="table table-striped table-advance table-hover">
                <thead>
                  <tr>
                    
                    <th><i class="icon_table"></i>Organization Name</th>
                    <th><i class="icon_table"></i>First Name</th>
                    <th><i class="icon_table"></i>Second Name</th>
                    <th><i class="icon_table"></i>Email</th>
                    <th><i class="icon_table"></i>Telephone</th>
                    <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${organizations}" var="organization">
						<tr>
							<td>${organization.orgname}</td>
							<td>${organization.email}</td>
							<td>${organization.telephone}</td>
							
							<td><a type="button" class="btn btn-success"
								href="">Update</a>
							<a type="button" class="btn btn-warning"
								href="">Details</a></td>
								
						</tr>
					</c:forEach>
        </tbody>
        
       </table>
	</div>
</div>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New Trainee</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/organizations/addNew" method="post">
              <div class="form-group">
            <label for="recipient-name" class="col-form-label">Organization Name</label>
            <input type="text" class="form-control" id="recipient-name" name="organizationname"  required>
          </div>       
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">First Name</label>
            <input type="text" class="form-control" id="recipient-name" name="first name"  required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Second  Name</label>
            <input type="text" class="form-control" id="recipient-name" name="second name"  required>
          </div>
        
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Email:</label>
            <input type="email" class="form-control" id="recipient-name" name="email"    required>
          </div>
        
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Telephone:</label>
            <input type="text" class="form-control" id="recipient-name" name="telephone">
          </div>
        
                  
        
          <div class="form-group">
          <button type="submit" class="btn btn-primary">Save</button>        
        </div>             
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

