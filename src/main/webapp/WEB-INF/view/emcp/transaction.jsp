<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>

<div class="container">

<h3 style="color:darkblue">Reports from Organizations</h3>

		<form action="/organizations" method="get">
					
				</form>
    
			<table class="table table-striped table-bordered  " id="datatable">
                <thead Class="thead-dark">
                  <tr>
                    
                    
                    <th><i class="icon_table"></i>Date </th>
                    <th><i class="icon_table"></i>Directorate</th>
                    <th><i class="icon_table"></i>Report Type</th>
                    <th><i class="icon_table"></i>Actual Report</th>
                    <th><i class="icon_table"></i>Status </th>
                    <th><i class="icon_table"></i>version</th>
                    <th><i class="icon_table"></i>username</th>
                    
                    
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

  