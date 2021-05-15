
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Register page :: CaterersManagementSystem</title>
<!-- ---------header part------- -->

<%@ include file="header.jsp"%>

<!-- ----------- header end -------------- -->
<style type="text/css">
.worning {
	color: #FFFF00;
	font-size: 25px;
}
.check_result {
	background-color: red;
	border: none;
	color: white;
	padding: 7px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px 2px;
	cursor: pointer;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
 $(document).ready(function(){ 
	 
	 $("#email").blur(function(){
		 var data = $("#email").val();
		 if(data != null && data != ''){
		 $.ajax({

	            url:'ajax/checkEmailAvailibility',
	            data:{email:$("#email").val()},
	            success:function(data)
	            {   
	            	if(data=='This Email id is already taken. choose another one')
		            	{
	            		  $('#register').attr('disabled', 'disabled');
		            	}
	            	else
		            	{
	            		$('#register').removeAttr('disabled');
		            	}
		             
                     $("#result").html(data);
	            }
	        
	      });  
	         
		 }
		 else{
			 $("#result").html("Please Enter Email Id");
			 }
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
			<small> <small> <small>
						<div class="banner">

							<h4 class="animated wow fadeInTop" data-wow-duration="1000ms"
								data-wow-delay="500ms">Registration here...</h4>

						</div>
				</small></small> </small> <br>
				<br> <form:form action="saveEmp" method="post" modelAttribute="userInfo">
				        <div class="form-group" style="color: white">
							<!-- <label for="exampleInputCustomerName"><h3>USER ID</h3></label> -->
							<form:hidden path="userId" readonly="true" class="form-control" required="required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name " />

						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputCustomerName"><h3>Customer Name</h3></label>
							<b><b><form:input path="userName" class="form-control" id="exampleInputEmail1" required="required" aria-describedby="emailHelp" placeholder="Enter Name " />
                           </b></b>
						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputEmail1"><h3>Email address</h3></label>
							<div id="result" class="worning"></div>
							<b><b><form:input path="email" class="form-control"
								id="email" required="required" aria-describedby="emailHelp"
								placeholder="Enter Email" /></b></b>
					
						 <!--  <small> <button type="button" class="check_result"  id="check_result" class="button" class="btn btn-primary">Check Availability</button></small> -->		
							<small id="emailHelp" class="form-text text-muted"><h4>We'll
									never share your email with anyone else.</h4></small>
									
							 <div id="result" class="error"></div>		
						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputPassword1"><h3>Password</h3></label>
							<b><b><form:password path="password" required="required" class="form-control"
								id="exampleInputPassword1" placeholder="Enter Password" /></b></b>
						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputContactNumber"><h3>Contact
									Number</h3></label>
							<b><b><form:input path="contactNumber" class="form-control"
								id="exampleInputContactNumber" required="required" aria-describedby="emailHelp"
								placeholder="Enter Contact Number" /></b></b>

						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputAddress"><h3>Address</h3></label>
							<b><b><form:textarea rows="7" cols="8" path="address"
								class="form-control" id="exampleAddress" required="required"
								aria-describedby="emailHelp" placeholder="Enter Adress" /></b></b>

						</div>
			<!-- -------------------Captch - generator------------------------------- -->
			
			<%@ include file="Captch-generator.jsp"%>
			
			
			<!-- --------------------------------------------------------------------------- -->
			<br><br>
						<div class="form-check" style="color: white">
							<b><b><input type="checkbox" class="form-check-input"
								id="exampleCheck1" required="required"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<label class="form-check-label" for="exampleCheck1"><h3>
									I agree to the <b><u><a href=termAndCondition>terms & conditions</a></u></b> of this website.</h3></label><br></b></b>
							<br>
						</div>
			<br><br>			
					<div align="center">	
					    <button type="submit" id="register" class="button"  class="btn btn-primary">Submit</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="reset" class="button"  class="btn btn-primary">Reset</button>
					</div>	
		   </form:form> 
					<!------------------------end--------------------- --> <br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br> <%@ include file="footer.jsp"%>
</body>
</html>