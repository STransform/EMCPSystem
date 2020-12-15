<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accountable User</title>



<!-- the following is for font-awesome -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- css start for drop down menu -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" >
 <!-- css end for drop down menu -->
 <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style2.css" rel="stylesheet">
    
  
    
</head>


<body>
<nav class="navbar  navbar-expand-md navbar-dark bg-dark navbar-fixed-top" style="height: 100px; ">


  
<div Class="container">

<div class="col-md-4">
  <img src="/img/mofed.png" height="95" width="110" class=float-left alt="EMCP logo">
  
  </div> 
  
<div Class="col-md-3">

  <a class="navbar-brand " href="#" >
   <strong >EMCP System</strong>
   </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>  
    <!-- the above icon is the button visible on the screen when collapsing the screen -->
    
  </button>
  </div>
  
  
  </div>
 
  <div Class="container">
  <div Class="col-md-4">
  <div Class="collapse navbar-collapse" id="collapse_target">
  <ul class="navbar-nav">
      <li class="nav-item  ">
      
        <a class="nav-link" href="#">Home</a>
      </li>
      <sec:authorize access="hasAnyAuthority('ADMIN','EMCP')">
         <li class="nav-item dropdown "  >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Register
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
      
        <a Class="dropdown-item" href="organizationreg" >Organization </a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="documentreg">Document </a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="directorlist">Directorate</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="traineereg">Training </a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="#">Course </a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="#"> penalty rule</a>
        <div Class="dropdown-divider" ></div>
    
        
        </div>
        
      </li>
      
      
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        User
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="user-register"> User</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="rolereg">Role</a>
        <a Class="dropdown-item" href="#">Privillege</a>
               </div>
      </li>
      
           
      
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
            Transaction  
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="reportfrom-org">All reports </a>
        
        <div Class="dropdown-divider" ></div>
                
        </div>
      </li>
          
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Reports
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="organizationpenalty">Organization Penalty</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="singleorg-penalty">Single Organization Penalty</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="directorate-report">Directorate Report</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="singledirector-penalty">Single Directorate</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="document-report">document Report</a>
        <div Class="dropdown-divider" ></div>
         <a Class="dropdown-item" href="#">Training </a>
        <div Class="dropdown-divider" ></div>
              
        </div>
      </li>
      </sec:authorize>
      
      <sec:authorize access ="hasAnyAuthority('AUDIT','BUDGET','CASH','PROPERTY','ACCOUNT','INSPECTION')">
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Reports
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="director-audit">View Reports</a>
        <div Class="dropdown-divider" ></div>
                             
        </div>
      </li>
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Notification
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="directormessages"> Messages</a>
        <div Class="dropdown-divider" ></div>
                 </div>
      </li>
            </sec:authorize>
      
            <sec:authorize access ="hasAnyAuthority('USER')">
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Reports
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="uploadto-account">Account directorate</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="audit">Audit Directorate</a>
         <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="add-document">Manage Documents</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="budget">Budget Directorate</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="uploadto-cash">Cash Directorate</a> 
        <div Class="dropdown-divider" ></div>
           <a Class="dropdown-item" href="uploadto-inspection">Inspection Directorate</a> 
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="uploadto-property">Property Directorate</a> 
        <div Class="dropdown-divider" ></div>           
        </div>
      </li>
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Resources
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="#">Manuals</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="#">downloads</a>
        <div Class="dropdown-divider" ></div>
                </div>
      </li>
      
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Notifications
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="#">Messages</a>
        <div Class="dropdown-divider" ></div>
                        </div>
      </li>
      </sec:authorize>
      </ul>
      </div>
        
      </div>
  </div>
     <div Class="container">
  <div Class="col-md-1">
  <nav id="sideNav">
				<ul>
					<li><a href="#">Dashboard</a></li>
					
					<li><a href="login">Logout</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="changepassword">Change Password</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>

			</nav>
			<span class="navbar-toggler-icon" id="menuBtn"></span> 
			
  </div>
  </div>
  
</nav>



<!-- the following j-query is for active button menu when clickable and its very important for the side bar to move -->

   <script
  src="https://code.jquery.com/jquery-3.5.1.js">
  </script>
  
  <script type="text/javascript">
  $(document).on('click','ul li',function(){
	  $(this).addClass('active') .siblings().removeClass('active')
  })
  </script>
<!-- the above jquery and javascript is for adding and removing clickable button -->


	<script>
var $slides = $('.slides');
var $slide =  $('.slide1');
var count = 1;

$(document).ready(function(){
	setInterval(function(){
	$slides.animate({'margin-left':'-=68vw'},1200,function(){
		count++;
		if(count === 4){
			$slides.css("margin-left", 0);
			count = 1;
		}
	});	
		
	},4000);
});

var menuBtn=document.getElementById("menuBtn");
var sideNav=document.getElementById("sideNav");
sideNav.style.right="-250px";
menuBtn.onclick=function(){
	if(sideNav.style.right == "-250px"){
		sideNav.style.right = "0";	
}
	else {
		sideNav.style.right = "-250px";
	}
}

var scroll = new SmoothScroll('a[href*="#"]',{
	speed:1000,
	speedAsDuration: true
});


</script>



<!-- start for drop down menu  -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
  
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>

<!-- end for drop down menu -->




	<!-- Bootstrap core JavaScript
    ================================================== -->
   
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>