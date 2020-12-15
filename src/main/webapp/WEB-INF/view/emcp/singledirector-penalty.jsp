<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>

<div class="container">

<h3 style="color:darkblue">Single Directorate Penalized</h3>
    <select class="mdb-select md-form"
		style="width: 200px; height: 30px; text-color: white;"
		data-style="btn-primary">
		<option value="#" disabled selected>Choose Directorate</option>
		<option value="1">Audit</option>
		<option value="2">Budget</option>
		<option value="4">Property</option>
		<option value="5">Cash</option>
		<option value="6">Account</option>
		<option value="7">Inspection</option>
	</select>

	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="" >Generate Report</button>
			<p align ="center">	
			<a href="exporttoexcel">ExportToExcel</a>&nbsp;|<a href="exporttoexcel">&nbsp;ExportToWord</a>&nbsp;|<a href="exporttoexcel">&nbsp;ExportToPdf</a>      
		</p>
			<table  class="table table-striped table-bordered  " id="datatable">
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

  