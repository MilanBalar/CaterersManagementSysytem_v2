
<!DOCTYPE html>
<html lang="en">

<head>
<!-- ------------------------admin css start ------------------------- -->

<%@ include file="commonCSSofAdmin.jsp"%>

<!-- ------------------------admin css End ------------------------- -->
<title>Admin Dashboard</title>
<style type="text/css">

.admin .card{
border:1px solid blue;
}
.admin .card:hover{
background:#e2e2e2;
cursor:pointer;
}
</style>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- ------------------------left accordian start ------------------------- -->

		<%@ include file="leftaccordianAdmin.jsp"%>

		<!-- ------------------------left accordian End ------------------------- -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				
        	<!-- Top nav-bar start -->
				
				  <%@ include file="nav-bar-client.jsp"%>
				  
				<!-- End of Top nav-bar -->  
			

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="row">

						<!-- Area Chart -->
						<div class="col-xl-12 col-lg-10">
							<div class="card shadow mb-10">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between ">
									<h6 class="m-0 font-weight-bold text-primary ">
										<b>Dashboard</b>
									</h6>

								</div>
								<!-- Card Body -->
								<div class="card-body ">

									<div class=" ser-bottom">
										<!-- <img src="images/dashboard.jpg" width="100%" height="100%"
											class="img-responsive" alt=""> -->
			   <!-- ----------------------------------Right part start---------------------------------- -->								
								<div class="container admin">			
									 <div class="row mt-3"> <!-- here mt work as <br> tag -->
									     <!-- -------first column----- -->		
										 <div class="col-md-4">
										     <!-- --------first box--------- -->
										     <div class="card">
										         <div class="card-body text-center">
										           <div class="container">
										              <img style="max-width: 120px" class="img-fluid rounded-circle" alt="Total_users" src="images/icon/Total_users.png">
										           
										           </div>
										           <h1>${noOfCustomer }</h1>
										           <h3>Total Users</h3>
										         
										         </div>
										     </div>
										 </div>	
										 
										  <!-- -------second column----- -->		
										 <div class="col-md-4">
										     <!-- --------second box--------- -->
										     <div class="card">
										         <div class="card-body text-center">
										            <div class="container">
										              <img style="max-width: 120px" class="img-fluid" alt="Total_caterers" src="images/icon/Total_caterers.png">
										           
										             </div>
										           <h1>54353</h1>
										           <h3>Total Caterers</h3>
										         
										         </div>
										     </div>
										 
										 
										 </div>	 
                              
                                          <!-- -------third column----- -->		
										 <div class="col-md-4">
										      <!-- --------third box--------- -->
										     <div class="card data-toggle="modal" data-target="#add_customer"">
										         <div class="card-body text-center">
										            <div class="container">
										              <img style="max-width: 120px" class="img-fluid " alt="Total_client" src="images/icon/Total_client.png">
										           
										            </div>
										           <h1>54353</h1>
										           <h3>Total Client</h3>
										         
										         </div>
										     </div>
										 
										 
										 </div>	
                              
                                     </div>
                            <!-- --------------------------------2nd row start----total md is 12 for full screen----------------- -->
                               <div class="row mt-4">
                                  <div class="col-md-6">
                                      <div class="card" data-toggle="modal" data-target="#add_customer">
										        <div class="card-body text-center">
										            <div class="container">
										              <img style="max-width: 120px" class="img-fluid " alt="Add_caterers" src="images/icon/Add_caterers.png">
										          </div>
										           <p class="mt-2">Click here to add new Caterers </p> 
										           <h3>Add Caterers</h3>
										        </div>
										 </div>
                                   </div>
                                  <div class="col-md-6">
                                       <div class="card">
										         <div class="card-body text-center">
										            <div class="container">
										              <img style="max-width: 120px" class="img-fluid " alt="Add_client" src="images/icon/Add_Food.png">
										           </div>
										           
										           <p class="mt-2">Click here to add new Food </p> 
										           <h3>Add Food</h3>
										         </div>
										 </div>
                                  </div>
                               </div>
                              <br><br><br><br><br><br>
                            <!-- --------------------------------2nd row end--------------------- -->  
                               </div>											
	          <!-- ----------------------------------Right part end---------------------------------- -->										
									</div>
									<!--  <div class="chart-area ">
                                        <canvas id="myAreaChart"></canvas>
                                    </div> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>