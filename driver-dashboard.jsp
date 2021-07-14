<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>AMS</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="image1/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="image1/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="cs/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="cs/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="cs/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="cs/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="cs/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js1/modernizer.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/cs/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js1/bootstrap.min.js"></script>

</head>
<body class="host_version">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="header2.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<marquee><img src="image1/ambulance-dashboard.jpg" style="width:1350px;height:600px;"></marquee>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>