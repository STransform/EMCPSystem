<!DOCTYPE html>
<html lang="en" >
<%@ taglib prefix="c" uri="http://www.springframework.org/security/tags" %>
<head>
 <title>Sign up</title>
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.min.css">
</head>
<body>
 <div class="container">
     <form class="form-horizontal" role="form" method="POST" action="/signup" object="${user}">
      <div class="row">
             <div class="col-md-3"></div>
             <div class="col-md-6">
              <div class="alert alert-success" role="alert" if="${msg}" utext="${msg}">
     </div>
             </div>
         </div>
         <div class="row">
             <div class="col-md-3"></div>
             <div class="col-md-6">
                 <h2>Register New User</h2>
                 <hr>
             </div>
         </div>
         <div class="row">
             <div class="col-md-3 field-label-responsive">
                 <label for="name">First Name</label>
             </div>
             <div class="col-md-6">
                 <div class="form-group">
                     <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                         <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                         <input type="text" name="*{firstname}" class="form-control" id="firstname"
                                placeholder="First Name" required autofocus>
                     </div>
                 </div>
             </div>
         </div>
         <div class="row">
             <div class="col-md-3 field-label-responsive">
                 <label for="name">Last Name</label>
             </div>
             <div class="col-md-6">
                 <div class="form-group">
                     <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                         <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                         <input type="text" name="*{lastname}" class="form-control" id="lastname"
                                placeholder="Last name" required autofocus>
                     </div>
                 </div>
             </div>
         </div>
         <div class="row">
             <div class="col-md-3 field-label-responsive">
                 <label for="email">Email</label>
             </div>
             <div class="col-md-6">
                 <div class="form-group">
                     <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                         <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
                         <input type="text" name="*{email}" class="form-control" id="email"
                                placeholder="username" required autofocus>
                     </div>
                 </div>
             </div>
             <div class="col-md-3">
                 <div class="form-control-feedback">
                         <span class="text-danger align-middle" name="${#fields.hasErrors('email')}" errors="*{email}">
                         </span>
                 </div>
             </div>
         </div>
         <div class="row">
             <div class="col-md-3 field-label-responsive">
                 <label for="password">Password</label>
             </div>
             <div class="col-md-6">
                 <div class="form-group has-danger">
                     <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                         <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                         <input type="password" name="*{password}" class="form-control" id="password"
                                placeholder="Password" required>
                     </div>
                 </div>
             </div>
             <div class="col-md-3">
                 <div class="form-control-feedback">
                         <span class="text-danger align-middle" name="${#fields.hasErrors('password')}" errors="*{password}">
                         </span>
                 </div>
             </div>
         </div>
         <div class="row">
             <div class="col-md-3"></div>
             <div class="col-md-6">
                 <button type="submit" class="btn btn-success"><i class="fa fa-user-plus"></i> Register</button>
             </div>
         </div>
     </form>
 </div>
</body>
</html>