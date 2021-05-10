<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
      <!-- ------------------------admin css start ------------------------- -->
 
       <%@ include file="commonCSSofAdmin.jsp"%>
       
     <!-- ------------------------admin css End ------------------------- -->    
        <title>Available Customer</title>

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
				<!-- Topbar start -->
				<nav
					class="navbar navbar-expand navbar-dark bg-dark topbar mb-4 static-top shadow">

					<!-- Topbar Search -->
					<form class="form-inline">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>

					<!-- Topbar Navbar end -->
					<!-- Nav Item - User Information -->
					<li class="nav-item dropdown no-arrow"><a
						class="nav-link dropdown-toggle" href="#" id="userDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <span
							class="mr-2 d-none d-lg-inline text-gray-600 small"><div
									class="demo">
									<u>Welcome Admin</u>
								</div></span>

					</a></li>

				</nav>
				<!-- End of Topbar -->

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
								<form action="addData" method="post">
									<table border="" align="center">
										<tr>
											<th>Customer Id</th>
											<th>Customer Name</th>
											<th>Customer Email</th>
											<th>Customer ContactNumber</th>
											<th>Customer Address</th>
											<th>Delete Record</th>
										</tr>

										<c:forEach var="c" items="${catererslist }">
											<tr align="center">
												<td>${c.userId }</td>
												<td>${c.userName }</td>
												<td>${c.email }</td>
												<td>${c.contactNumber }</td>
												<td>${c.address }</td>

												<td><a href="Delete/${c.userId }">Delete</a></td>
											</tr>
										</c:forEach>
									</table>
								</form>

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

</body>
</html>