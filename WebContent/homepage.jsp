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
<title>Vehicle Management System</title>
</head>

<body id="page-top" class="index">
	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
	<div class="container">
		<div class="navbar-header page-scroll">
			<a class="navbar-brand" href="homepage.jsp">VM System</a>
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
					href="<%=request.getContextPath()%>/VehicleController?source=searchbydate">Search
						By Date</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=delete">Delete</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=update">Update</a></li>
				<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=home">Logout</a></li>


				<!--  			<li><a
					href="<%=request.getContextPath()%>/VehicleController?source=home">Logout</a></li>
  -->
			</ul>
		</div>
	</div>
	</nav>

	<header>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<a
					href="<%=request.getContextPath()%>/VehicleController?source=home"><img
					class="img-responsive" src="img/adminFinal.png" alt=""></a>
				<div class="intro-text">
					<span class="name">Vehicle Management System</span>
					<hr class="star-light">
					<span class="skills">Perfect Place For Vehicle Management
						System</span>
				</div>
			</div>
		</div>
	</div>
	</header>


  <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Address</h3>
                        <p>Address
                            <br>Address line 2</p>
                    </div>
                     
                    <div class="footer-col col-md-4">
                        <h3>About US</h3>
                        <p>Some information about us.<br>Some more information</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Contact Us</h3>
                        <p>+91 8087670998 <br>vms@mail.com </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; TJA311 Group C.
                    </div>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>