
<!DOCTYPE html>
<html lang="en">

<head>
<!-- ------------------------admin css start ------------------------- -->

<%@ include file="commonCSSofAdmin.jsp"%>

<!-- ------------------------admin css End ------------------------- -->
<title>Client Dashboard</title>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- ------------------------left accordian start ------------------------- -->

		<%@ include file="leftAccordianClient.jsp"%>

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
										<img src="images/dashboard.jpg" width="100%" height="100%"
											class="img-responsive" alt="">
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