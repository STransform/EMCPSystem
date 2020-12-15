<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>

<div class="container">

			<h3 style="color:darkblue">Single Organization Penalty</h3>
		<select class="mdb-select md-form"
			style="width: 200px; height: 30px; text-color: white;"
			data-style="btn-primary">
			<option value="#" disabled selected>Choose Organization</option>
			<option value="1">AAU</option>
			<option value="2">MOE</option>
			<option value="4">ADU</option>
			<option value="5">Innovation Minister</option>
			<option value="6">MOH</option>
			<option value="7">MOT</option>
		</select>

		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="" >Generate Report</button>
			<p align ="center">	
			<a href="exporttoexcel">ExportToExcel</a>&nbsp;|<a href="exporttoexcel">&nbsp;ExportToWord</a>&nbsp;|<a href="exporttoexcel">&nbsp;ExportToPdf</a>      
		</p>
			<table class="table table-striped table-bordered  " id="datatable">
                <thead Class="thead-dark">
                  <tr>
                    
                    <th><i class="icon_table"></i>Date</th>
                    <th><i class="icon_table"></i>Organization </th>
                    <th><i class="icon_table"></i>Report Type</th>
                    <th><i class="icon_table"></i>Directorate</th>
                    <th><i class="icon_table"></i> Penalty</th>
                    <th><i class="icon_table"></i>Username</th>
                    
                    <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  
        </tbody>
        
       </table>

	<button type="button"  >Print</button>
</div>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New Organization</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/organizations/addNew" method="post">
                       
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Organization:</label>
            <input type="text" class="form-control" id="recipient-name" name="orgname"  required>
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


  