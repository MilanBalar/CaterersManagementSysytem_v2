<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
%> 

<style>
 
.text-block {
  position: absolute;
  bottom: 20px;
  right: 10px;
  background-color: black;
  color: white;
  padding-left: 20px;
  padding-right: 20px;
}
</style>



<nav
	class="navbar navbar-expand navbar-dark bg-dark topbar mb-4 static-top shadow">

	<!-- Topbar Search -->
	<form class="form-inline">
		<input class="form-control mr-sm-2" type="search" placeholder="Search"
			aria-label="Search">
		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	</form>

	<!-- Topbar Navbar end -->
	<!-- Nav Item - User Information -->
	<div class="text-block">
		<h5>
			<u>Welcome <strong>${user }</strong></u> &nbsp;&nbsp; |&nbsp;&nbsp; <a
				href="logout">Logout</a>
		</h5>
	</div>

</nav>
