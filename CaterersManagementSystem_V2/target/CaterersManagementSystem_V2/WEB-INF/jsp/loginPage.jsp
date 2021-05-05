<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Register page</title>
<!-- ---------header part------- -->

<%@ include file="header.jsp"%>

<!-- ----------- header end -------------- -->
<style type="text/css">
.button {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 12px 35px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 24px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>

</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo animated wow pulse" data-wow-duration="1000ms"
				data-wow-delay="500ms">
				<h1>
					<a href="index.html"><span>C</span><img src="images/oo.png"
						alt=""><img src="images/oo.png" alt="">kery</a>
				</h1>
			</div>
			<!-- ----------------- navigation bar start------------ -->

			<%@ include file="navigation-bar.jsp"%>

			<!-- ----------------- navigation bar End------------ -->

			<!-- --------------resiter page start----------------->
			<small> <small> <small>
						<div class="banner">

							<h4 class="animated wow fadeInTop" data-wow-duration="1000ms"
								data-wow-delay="500ms">Login here...</h4>

						</div>
				</small>
			</small> <small> <br>
				<br> <form:form action="dashBoard" method="post" modelAttribute="userInfo">
				       
						<div class="form-group" style="color: white">
							<label for="exampleInputCustomerName"><h3>Email Id</h3></label>
							<b><b><form:input path="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email " />
                           </b></b>
						</div>
						<br><br>
						<div class="form-group" style="color: white">
							<label for="exampleInputEmail1"><h3>Password</h3></label>
							<b><b><form:password path="password" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter password" /></b></b>
							<small id="emailHelp" class="form-text text-muted"><h4>We'll
									never share your email with anyone else.</h4></small>
						</div>
						
						<button type="submit" class="button" class="btn btn-primary">Login</button>
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