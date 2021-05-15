<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
%> 

<div class="nav-icon">
	<a href="#" class="navicon"></a>
	<div class="toggle">
		<ul class="toggle-menu">
			<li><a class="active" href="homePage">Home</a></li>
			<li><a href="register">Register</a></li>
			<li><a href="login">Log in</a></li>
			<li><a href="menu">Menu</a></li>
			<li><a href="blog">Blog</a></li>
			<li><a href="typo">Codes</a></li>
			<li><a href="events">Events</a></li>
			<li><a href="contact">Contact</a></li>
		</ul>
	</div>
	<script>
			$('.navicon').on('click', function (e) {
			  e.preventDefault();
			  $(this).toggleClass('navicon--active');
			  $('.toggle').toggleClass('toggle--active');
			});
			</script>
</div>
