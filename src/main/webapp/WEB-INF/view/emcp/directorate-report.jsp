<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>

<div class="container">

	
		<h3 style="color:darkblue">List of Directorates Reports</h3>
			<table class="table table-striped table-bordered  " id="datatable">
                <thead Class="thead-dark">
                  <tr>
                    
                    
                    <th><i class="icon_table"></i>Directorate </th>
                    <th><i class="icon_table"></i>Email</th>
                    <th><i class="icon_table"></i>Telephone</th>
                    
                    
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









  