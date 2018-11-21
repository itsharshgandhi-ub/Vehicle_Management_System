<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrapAndFonts/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<link href="css/theme.min.css" rel="stylesheet">

<link href="bootstrapAndFonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Window</title>
</head>
<body id="page-top" class="index" scroll="no" style="overflow: hidden">
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
	<div class="container">
		<div class="navbar-header page-scroll">

			<a class="navbar-brand" href="homepage.jsp">VM System</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li class="page-scroll"><a
					href="<%=request.getContextPath()%>/VehicleController?source=home">Admin
						Login</a></li>
				<li class="page-scroll"><a href="index.jsp">Home</a></li>

			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- Contact Section -->
	<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Administrator Login Window</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
				<!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
				<form action="<%=request.getContextPath()%>/VehicleController">

					<input type="hidden" name="source" value="adminlogin">
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Username</p>
							<input type="text" name="username" class="form-control"
								placeholder="Username" id="username1" required
								data-validation-required-message="Please enter your name.">
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Password</p>
							<input type="password" name="pass" class="form-control"
								placeholder="Password" id="passs" required
								data-validation-required-message="Please enter your email address.">
						</div>
					</div>
			</div>

			<br>
			<div id="success"></div>
			<div class="row">
				<div class="form-group col-xs-12">
					<input type="submit" class="btn btn-success btn-lg" value="submit">
				</div>
			</div>
			</form>
		</div>
	</div>
	</div>
	</section>

</body>
</html>