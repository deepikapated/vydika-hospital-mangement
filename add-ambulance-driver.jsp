<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection1.*" %>
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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body class="host_version">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="driver-header.jsp"></jsp:include>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Request To Admin For Adding Ambulance</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-5 col-sm-5 col-xs-12">
				<img src="image1/ambulance-request.jpg"
					style="width: 400px; height: 400px;">
			</div>
			<div class="col-md-7 col-sm-7 col-xs-12">
				<%
					String addAmbulance = (String) session.getAttribute("add-ambulance");
					if (addAmbulance != null) {
						session.removeAttribute("add-ambulance");
				%>
				<div class="alert alert-success" id="success">Ambulance added successfully, waiting for admin approval.</div>
				<%
					}
				%>
				<div class="panel panel-info">
					<div class="panel-heading">Request To Admin For Adding
						Ambulance</div>
					<div class="panel-body">
						<form role="form" action="RequestToAddAmbulance" method="post">
							<div class="form-group">
								<label>Name</label> <input class="form-control" type="text"
									name="dname" value="<%= session.getAttribute("dname")%>" readonly/>
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control" type="text"
									name="mobile" value="<%= session.getAttribute("mobile")%>" readonly/>
							</div>
							<div class="form-group">
								<%
									String vehicleNo=DatabaseConnection.generateAmbulanceId();
								%>
								<label>Ambulance Vehicle No</label> <input class="form-control"
									type="text" name="vehicleNo" value="<%=vehicleNo%>" readonly/>
							</div>
							<div class="form-group">
								<label>Ambulance Type</label> <select class="form-control"
									type="text" name="ambulanceType">
									<option>Individual Ambulance</option>
									<option>Cardiac Ambulance</option>
									<option>Collective Ambulance</option>
									<option>Mobile ICU Ambulance</option>
									<option>Basic Life Support Ambulance</option>
									</select>
							</div>
							<div class="form-group">
								<label>License No</label> <input class="form-control"
									type="text" name="licenseNo" />
							</div>
							<div class="form-group">
								<label>State</label> <select class="form-control" name="state" />
								<option>Andhra Pradesh</option>
								<option>Arunachal Pradesh</option>
								<option>Assam</option>
								<option>Bihar</option>
								<option>Chhattisgarh</option>
								<option>Goa</option>
								<option>Gujarat</option>
								<option>Haryana</option>
								<option>Himachal Pradesh</option>
								<option>Jharkhand</option>
								<option>Karnataka</option>
								<option>Kerala</option>
								<option>Madhya Pradesh</option>
								<option>Maharashtra</option>
								<option>Manipur</option>
								<option>Meghalaya</option>
								<option>Mizoram</option>
								<option>Nagaland</option>
								<option>Odisha</option>
								<option>Punjab</option>
								<option>Rajasthan</option>
								<option>Sikkim</option>
								<option>Tamil Nadu</option>
								<option>Telangana</option>
								<option>Tripura</option>
								<option>Uttar Pradesh</option>
								<option>Uttarakhand</option>
								<option>West Bengal</option>
								</select>
							</div>
							<div class="form-group">
								<label>City</label> <input class="form-control"
									type="text" name="city" />
							</div>


							<button type="submit" class="btn btn-info">Send Request To Add Ambulance
							</button>
<div>								<a href="driver-dashboard.jsp">back</a>
</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});
</script>
</html>