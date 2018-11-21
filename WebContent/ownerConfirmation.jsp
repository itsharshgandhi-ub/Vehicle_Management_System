<%@page import="com.bean.Owner"%>
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
<title>Confirm Vehicle</title>
</head>
<body id="page-top" class="index" scroll="no" style="overflow: hidden">
<%
 Owner owner=(Owner)request.getAttribute("ownerobject");
%>

	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="#page-top">Vehicle Management
				System</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=rvform">Register
						Vehicle</a></li>
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
				<h2>Confirm Owner</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<form action="<%= request.getContextPath() %>/VehicleController"  >
				 <input type="hidden" name="source" value="ownerconfirmation">
				
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <p class="gandhi">Owner Id</p>
                                <input type="text" value="<%=owner.getOwnerId()%>" name="ownerid" class="form-control" placeholder="Owner ID" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <p class="gandhi">First Name</p>
                                <input type="text" name="fname" value="<%=owner.getFirstName()%>"class="form-control" placeholder="First Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <p class="gandhi">Last Name</p>
                                <input type="text" name="lname" value="<%=owner.getLastName()%>" class="form-control" placeholder="Last Name" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <p class="gandhi">Phone number</p>
                                <input type="text" name="pnum" value="<%=owner.getPhoneNumber()%>" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <p class="gandhi">Address</p>
                                <input type="text" name="address" value="<%=owner.getAddress()%>" class="form-control" placeholder="Address" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        </div>
                        
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <input type="submit" class="btn btn-success btn-lg" value="confirm">
                            </div>
                        </div>
                    </form>
		</div>
	</div>
	</div>
	</section>


</body>
</html>