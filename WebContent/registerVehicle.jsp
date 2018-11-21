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
<title>Register Vehicle</title>
</head>
<body id="page-top" class="index">
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
	<div class="container">
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="#page-top">VM	System</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">

				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=roform">Register
						Owner</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=searchbyid">Search
						By ID</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=searchbydate">Search
						By Date</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=home">Logout</a></li>

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
				<h2>Register Vehicle</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<form action="<%=request.getContextPath()%>/VehicleController">
					<input type="hidden" name="source" value="registrationform">
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Owner ID</p>
							<input type="text" name="ownerid" class="form-control"
								placeholder="Owner ID" id="name" required
								data-validation-required-message="Please enter your name.">

						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Vehicle ID</p>
							<input type="text" name="vid" class="form-control"
								placeholder="Vehicle ID" id="name" required
								data-validation-required-message="Please enter your name.">

						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Model Name</p>
							<input type="text" name="model" class="form-control"
								placeholder="Model Name" id="email" required
								data-validation-required-message="Please enter your email address.">
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Comapny</p>
							<input type="text" name="company" class="form-control"
								placeholder="Company" id="phone" required
								data-validation-required-message="Please enter your phone number.">
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Yaer of Production</p>
							<input type="text" name="yop" class="form-control"
								placeholder="Year Of Production" id="phone" required
								data-validation-required-message="Please enter your phone number.">
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Date of Dispatch</p>
							<input type="date" name="dod" class="form-control"
								placeholder="Date Of Dispatch" id="phone" required
								data-validation-required-message="Please enter your phone number.">
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