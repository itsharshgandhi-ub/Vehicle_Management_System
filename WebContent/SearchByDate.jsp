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
<title>Search By Date</title>
</head>
<body id="page-top" class="index" scroll="no" style="overflow: hidden">
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
	<div class="container">
		<div class="navbar-header page-scroll">
			<div class="navbar-brand">VM System</div>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=rvform">Register
						Vehicle</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=roform">Register
						Owner</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=searchbyid">Search
						By ID</a></li>
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
				<h2>Search Vehicle By Date Of Dispatch</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
				<!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
				<form action="<%= request.getContextPath() %>/VehicleController">
					<input type="hidden" name="source" value="searchbydatedisplay">
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<p class="gandhi">Date of Dispatch</p>
							 <input type="date" name="dod"
								class="form-control" placeholder="Date Of Dispatch" id="name"
								required
								data-validation-required-message="Please enter your name.">


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
</html>