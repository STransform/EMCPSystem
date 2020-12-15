<%@ include file="/WEB-INF/view/common/header.jsp"%>
  <%@ include file="/WEB-INF/view/common/footer.jsp"%>
  
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="modal fade" id="changePasswordModal" tabindex="-1" role="dialog" aria-labelledby="changePasswordModalTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="changePasswordLongModal">Change user password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="changePasswordForm" action="${passwordForm}" method="post" class="form" role="form">
			<input class="form-control" type="hidden" name="${passwordForm.id}">
			<input if="${#authorization.expression('hasRole(''ADMIN'')')}"  type="hidden" id="currentPassword" value="blank"  />
			<div   unless="${#authorization.expression('hasRole(''ADMIN'')')}" class="form-group row">
				<label class="col-lg-3 col-form-label 	form-control-label">Current Password</label>
				<div class="col-lg-9">
					<input class="form-control" type="password" name="${passwordForm.currentPassword}">
					<div class="alert-danger" if="${#fields.hasErrors('currentPassword')}" errors="*{currentPassword}">Password</div>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-lg-3 col-form-label 	form-control-label">New Password</label>
				<div class="col-lg-9">
					<input class="form-control" type="password" name="${passwordForm.newPassword}">
					<div class="alert-danger" if="${#fields.hasErrors('newPassword')}" errors="*{newPassword}">Password</div>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-lg-3 col-form-label form-control-label">Confirm Password</label>
				<div class="col-lg-9">
					<input class="form-control" type="password" name="${passwordForm.confirmPassword}">
					<div class="alert-danger" if="${#fields.hasErrors('confirmPassword')}" errors="*{confirmPassword}">Confirm Password</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="alert alert-danger d-none text-center" id="changePasswordError">Change Password Error</div>
			</div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" onClick="submitChangePassword()" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
function submitChangePassword(){
	var params = {};
	params["id"] = $("#id").val();
	params["currentPassword"] = $("#currentPassword").val();
	params["newPassword"] = $("#newPassword").val();
	params["confirmPassword"] = $("#confirmPassword").val();
	
	$.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/editUser/changePassword",
        data: JSON.stringify(params),
        dataType: 'text',
        cache: false,
        timeout: 600000,
        success: function (data) {
        	$("#changePasswordForm")[0].reset();
        	
        	$("#changePasswordError").addClass( "d-none" );
        	$("#formSuccess").removeClass( "d-none" );
            $("#formSuccess").html("Password Actualizado exitosmante!.");

            $('#changePasswordModal').modal('toggle');
            setTimeout(function(){	$("#formSuccess").hide('slow'); }, 2000);
        },
        error: function (e) {
            $("#changePasswordError").removeClass( "d-none" );
            $("#formSuccess").addClass( "d-none" );
            $("#changePasswordError").html(e.responseText);
        }
    });

}
</script>



<!-- the following link is for jquery datatable and pagination -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>
<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>


  