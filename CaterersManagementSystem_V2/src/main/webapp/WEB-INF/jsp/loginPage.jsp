<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Login page :: CaterersManagementSystem</title>
<!-- ---------header part------- -->

<%@ include file="header.jsp"%>

<!-- ----------- header end -------------- -->
<style type="text/css">
.error{
color: red;
}
.button {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 10px 30px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 24px;
	margin: 4px 2px;
	cursor: pointer;
	
}
</style>
<link href="src/jAlert.css" rel="stylesheet">

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="src/jAlert.js"></script>
<script src="src/jAlert-functions.js"></script>

 <script type="text/javascript">
$(document).ready(function() {
 $('#j_password').bind('copy paste cut',function(e) { 
 e.preventDefault(); //disable cut,copy,paste
 alert('cut,copy & paste options are disabled !!');
 });
});


</script>

</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo animated wow pulse" data-wow-duration="1000ms"
				data-wow-delay="500ms">
				<h1>
					<a href="index"><span>C</span><img src="images/oo.png"
						alt=""><img src="images/oo.png" alt="">kery</a>
				</h1>
			</div>
			<!-- ----------------- navigation bar start------------ -->

			<%@ include file="navigation-bar.jsp"%>

			<!-- ----------------- navigation bar End------------ -->

			<!-- --------------resiter page start----------------->
			<%-- <%@ include file="messages.jsp"%> --%>
			<small> <small> <small>
						<div class="banner">

							<h4 class="animated wow fadeInTop" data-wow-duration="1000ms"
								data-wow-delay="500ms">Login here...</h4>

						</div>
				</small>
			</small> </small> <br>
			
		<%	
		 String message=(String) request.getAttribute("message");
		
		%>
			
			<div class="alert alert-success error" role="alert">
               <h4 class="alert-heading">${message}</h4>
            </div>
            
			 <br> <form:form action="loginAuthentication" method="post" modelAttribute="userInfo"> 
				     <div class="form-group" style="color: white">
							<label for="exampleInputCustomerName"><h3>Email Id</h3></label>
							<b><b><form:input path="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email " />
                           </b></b>
						</div>
						<br><br>
						<div class="form-group" style="color: white">
							<label for="exampleInputEmail1"><h3>Password</h3></label>
							<b><b><form:password path="password" class="form-control"
								id="j_password" aria-describedby="emailHelp"
								placeholder="Enter password" /></b></b>
							<small id="emailHelp" class="form-text text-muted"><h4>We'll
									never share your email with anyone else.</h4></small>
						</div>
						<br>
						<h1><button type="submit" class="button" class="btn btn-primary">Login</button></h1>
					</form:form> 
					<!------------------------end--------------------- --> <br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br> <%@ include file="footer.jsp"%>
</body>
</html>