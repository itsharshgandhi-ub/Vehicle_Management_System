<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Management System</title>
    <link href="bootstrapAndFonts/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/theme.min.css" rel="stylesheet">

    <link href="bootstrapAndFonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    

</head>
<body id="page-top" class="index" scroll="no" style="overflow: hidden">
<!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <div class="navbar-brand">VM SYSTEM </div>
                
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li >
                        <a href="<%= request.getContextPath() %>/VehicleController?source=home">Admin Login</a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </nav>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <a href="<%= request.getContextPath() %>/VehicleController?source=home"><img class="img-responsive" src="img/adminFinal.png" alt=""></a>
                    <div class="intro-text">
                        <span class="name">Vehicle Management System</span>
                        <hr class="star-light">
                        <span class="skills">Perfect Place For Vehicle Management</span>
                    </div>
                </div>
            </div>
        </div>
    </header>



</body>
</html>