<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>

<div class="container">

	<h3 style="color:darkblue">List of Organizations</h3>

				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal" >Add New Role</button>
        
		
			<table class="table table-striped table-bordered  " id="datatable">
                <thead Class="thead-dark">
                  <tr>
                    
                    <th><i class="icon_table"></i>ID</th>
                    <th><i class="icon_table"></i>Name</th>
                    <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  
        </tbody>
        
       </table>
	
</div>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    
      <div class="modal-body">
        <form action="/organizations/addNew" method="post">
                       
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="orgname"  required>
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




  