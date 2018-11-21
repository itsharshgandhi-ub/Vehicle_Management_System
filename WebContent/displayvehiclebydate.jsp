<%@page import="com.bean.Vehicle"%>
<%@page import="java.util.ArrayList"%>
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
<title>Insert title here</title>
</head>
<body id="page-top" class="index" scroll="no" style="overflow: hidden">
	<%
ArrayList<Vehicle> vlist=(ArrayList<Vehicle>)request.getAttribute("vehiclelist");

	
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


	<div class="container">
		<div style="padding: 200px 30px 50px 180px;">
			<h2>Details Of Vehicle Added in Database</h2>
			<table class="table">
				<thead>
					<tr>
						<th>Owner ID</th>
						<th>Vehicle ID</th>
						<th>Model Name</th>
						<th>Company</th>
						<th>Year Of Production</th>
						<th>Date of Dispatch</th>
					</tr>
				</thead>
				<tbody>
					<%for(Vehicle vehicle:vlist){ %>
					<tr>
						<td><%=vehicle.getOwnerId() %></td>
						<td><%=vehicle.getVehicleId() %></td>
						<td><%=vehicle.getModelName() %></td>
						<td><%=vehicle.getCompanyName() %></td>
						<td><%=vehicle.getDateOfProducution() %></td>
						<td><%=vehicle.getDateOfDispatch() %></td>
					</tr>
<%} %>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>