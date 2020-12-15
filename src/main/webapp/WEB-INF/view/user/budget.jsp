<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>
  
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container">

		<h3 style="color:darkblue">List of Uploaded Document</h3>

				
				<button type="button" class="btn btn-primary" 
				data-toggle="modal" data-target="#addModal">
				
				Upload Document
				
				</button>
        
		
			<table class="table table-striped table-bordered  " id="datatable">
                <thead Class="thead-dark">
                  <tr>
                    
                    <th>Id</th>
                    <th>Document Name</th>
                    <th>Action</th>
                    
                   
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${document}" var="document">
						<tr>
						    
							<td>${document.id}</td>
							<td>${document.docName}</td>
							
							
					<td	>	
					<a href = "${pageContext.request.contextPath}/downloadBudgetFile/${document.id}">Download</a>
					|
					<a href = "${pageContext.request.contextPath}/deleteDocument/${document.id}">Delete</a>
				    </td>
								
						</tr>
					</c:forEach>
        </tbody>
        
       </table>
	
</div>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     
      <div class="modal-body">
      
       <form id="uploadFiles" name="uploadFiles" method="post" action="uploadFiles" encType="multipart/form-data">
		<input type="file" name="files" multiple required />
		
        
                  
        
          <div class="form-group">
         
          <button type="submit" class="btn btn-primary">Submit</button>
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

<!-- 
<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
 -->
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>

