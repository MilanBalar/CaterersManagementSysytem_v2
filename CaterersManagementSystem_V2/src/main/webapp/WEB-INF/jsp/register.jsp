<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Register page </title>
<!-- ---------header part------- -->

<%@ include file="header.jsp"%>

<!-- ----------- header end -------------- -->
<style type="text/css">
.worning {
	color: #FF0000;
	font-size: 20px;
}
/* .check_result {
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
}  */

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

  
.container input:focus ~label,
.container input:valid ~label
{
	left: 0;
	top: -20px;
	color: rgb(66,133,244);
	font-size: 12px;
	font-weight: bold;
}
.container input:focus,
.container input:valid
{
	border-bottom: 2px solid rgb(66,133,244);
}
.error_form
{
	top: 12px;
	color: rgb(216, 15, 15);
    font-size: 20px;
    font-family: Helvetica;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
 $(document).ready(function(){ 
         $("#fname_error_message").hide();
         $("#email_error_message").hide();
         $("#password_error_message").hide();
         $("#retype_password_error_message").hide();
         $("#mobile_error_message").hide();

         var error_fname = false;
         var error_email = false;
         var error_password = false;
         var error_retype_password = false;
         var error_mobile=false;

         $("#form_fname").focusout(function(){
             check_fname();
          });
        
         $("#email").focusout(function() {
            check_email();
         });
         $("#form_password").focusout(function() {
            check_password();
         });
         $("#form_retype_password").focusout(function() {
            check_retype_password();
         });
         $("#form_mobile").focusout(function() {
             check_mobile_number();
          });

         function check_fname() {
             
            var pattern = /^[a-zA-Z]*$/;
            var fname = $("#form_fname").val();
            if (pattern.test(fname) && fname !== '') {
               $("#fname_error_message").hide();
               $("#form_fname").css("border-bottom","4px solid #34F458");
            } else {
               $("#fname_error_message").html("Should contain only Characters");
               $("#fname_error_message").show();
               $("#form_fname").css("border-bottom","4px solid #F90A0A");
               error_fname = true;
            }
         }
                
        function check_password() {
            var password_length = $("#form_password").val().length;
            if (password_length < 8) {
               $("#password_error_message").html("Atleast 8 Characters");
               $("#password_error_message").show();
               $("#form_password").css("border-bottom","4px solid #F90A0A");
               error_password = true;
            } else {
               $("#password_error_message").hide();
               $("#form_password").css("border-bottom","4px solid #34F458");
            }
         }
         function check_mobile_number() {
             var password_length = $("#form_mobile").val().length;
             if (password_length != 10) {
                $("#mobile_error_message").html("Invalide Mobile Number");
                $("#mobile_error_message").show();
                $("#form_mobile").css("border-bottom","4px solid #F90A0A");
                error_password = true;
             } else {
                $("#mobile_error_message").hide();
                $("#form_mobile").css("border-bottom","4px solid #34F458");
             }
          }

         function check_retype_password() {
            var password = $("#form_password").val();
            var retype_password = $("#form_retype_password").val();
            if (password !== retype_password) {
               $("#retype_password_error_message").html("Passwords Did not Matched");
               $("#retype_password_error_message").show();
               $("#form_retype_password").css("border-bottom","4px solid #F90A0A");
               error_retype_password = true;
            } else {
               $("#retype_password_error_message").hide();
               $("#form_retype_password").css("border-bottom","4px solid #34F458");
            }
         }

         function check_email() {
            var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            var email = $("#email").val();
            if (pattern.test(email) && email !== '') {
               $("#email_error_message").hide();
               $("#email").css("border-bottom","4px solid #34F458");
               checkEmail();
            } else {
               $("#email_error_message").html("Invalid Email");
               $("#email_error_message").show();
               $("#email").css("border-bottom","4px solid #F90A0A");
               error_email = true;
            }
         }

         $("#registration_form").submit(function() {
            
            error_fname = false;
            error_email = false;
            error_password = false;
            error_retype_password = false;
            mobile_error_message=false;

            check_fname();
            check_email();
            check_password();
            check_retype_password();
            check_mobile_number();

            if (error_fname == false  && error_email == false && error_password == false && error_retype_password == false && mobile_error_message ==false) {
               return true;
            } else {
               alert("Please Fill the form Correctly");
               return false;
            }


         });
         
    	 $('#register').attr('disabled', 'disabled');
    	 
    	 function checkEmail(){
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
    	                	ValidCaptcha();
                         $("#result").html(data);
    	            }
    	        
    	      });  
    	         
    		 }
    		 else{
    			 $("#result").html("Please Enter Email Id");
    			 }
    	 }


         
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
				<br> <form:form action="saveEmp" method="post" modelAttribute="userInfo" id="registration_form">
				        <div class="form-group" style="color: white">
							<!-- <label for="exampleInputCustomerName"><h3>USER ID</h3></label> -->
							<form:hidden path="userId" readonly="true" class="form-control" required="required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name " />

						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputCustomerName"><h3>Customer Name</h3></label>
							<b><b><form:input path="userName" class="form-control" id="form_fname" required="required" aria-describedby="emailHelp" placeholder="Enter Name "/>
							      <span class="error_form" id="fname_error_message"></span>
                           </b></b>
						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputEmail1"><h3>Email address</h3></label>
							<div id="result" class="worning"></div>
							<b><b><form:input path="email" class="form-control"
								id="email" required="required" aria-describedby="emailHelp"
								placeholder="Enter Email" /></b></b>
								<span class="error_form" id="email_error_message"></span>
					
						 <!--  <small> <button type="button" class="check_result"  id="check_result" class="button" class="btn btn-primary">Check Availability</button></small> -->		
							<small id="emailHelp" class="form-text text-muted"><h4>We'll
									never share your email with anyone else.</h4></small>
									
							 <div id="result" class="error"></div>		
						</div>
						<div class="form-group" style="color: white">
							<label for="exampleInputPassword1"><h3>Password</h3></label>
							<b><b><form:password path="password" required="required" class="form-control"
								id="form_password" placeholder="Enter Password" /></b></b>
								<span class="error_form" id="password_error_message"></span>
				        </div>
				        <div class="form-group" style="color: white">
							<label for="exampleInputPassword1"><h3>Re-Enter Password</h3></label>
							<b><b><form:password path="password" required="required" class="form-control"
								id="form_retype_password" placeholder="Enter Password" /></b></b>
							<span class="error_form" id="retype_password_error_message"></span>
				        </div>
						<div class="form-group" style="color: white">
							<label for="exampleInputContactNumber"><h3>Contact
									Number</h3></label>
							<b><b><form:input path="contactNumber" class="form-control"
								id="form_mobile" required="required" aria-describedby="emailHelp"
								placeholder="Enter Contact Number" /></b></b>
                               <span class="error_form" id="mobile_error_message"></span>
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