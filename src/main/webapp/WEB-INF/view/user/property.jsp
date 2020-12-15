<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/view/common/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
 <br/>
 <h4>Welcome User!</h4>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Document Upload</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          
         <div Class="container">


<h3>Document Upload</h3>
<div Class="row">
<div Class="col-md-4">
<form action="upload-document" method="POST">

<div Class="form-group" >
<select class="mdb-select md-form" style="width:200px;height:30px;text-color:white;btn-primary" data-style="btn-primary">
  <option value="#" disabled selected>Choose Report Type</option>
  <option value="1">August Report</option>
  <option value="2">Quarterly Report </option>
  <option value="3">Monthly Report</option>
   <option value="3">Yearly Report</option>
</select>
     <br>
     <br>
  </div>   
<div Class="form-group">
<input type="file" name="photo" size="60" placeholder ="Choose You File">
</div>

<button Class="btn btn-primary" value="submit">Submit Document</button>

</form>
</div>
</div>
</div>
         
          
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

<script>
//Material Select Initialization
$(document).ready(function() {
$('.mdb-select').materialSelect();
});
</script>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<!-- end for drop down menu -->




	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/js/bootstrap.min.js"></script>

  <%@ include file="/WEB-INF/view/common/footer.jsp"%>
</body>
</html>