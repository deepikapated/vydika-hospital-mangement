<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection1.*"%>
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
	<jsp:include page="header2.jsp"></jsp:include><br>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Driver Registration</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="image1/driver-registration.JPG">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">Create Driver Account</div>
					<div class="panel-body">
						<%
							String adminRegister = (String) session.getAttribute("success-message");
						if (adminRegister != null) {
							session.removeAttribute("success-message");
						%>
						<div class="alert alert-success" id="success">Driver account
							created successfully.</div>
						<%
							}
						%>
						<form action="DriverAccountCreate" method="post" name='driverRegister'>
							<div class="form-group">
								<label>Driver Id</label>
								<%
									String driverId = DatabaseConnection.generateDriverId();
								%>
								<input class="form-control" type="text" name="driverId"
									value="<%=driverId%>" readonly />
							</div>
							<div class="form-group">
								<label>Driver Name</label> <input class="form-control"
									type="text" name="dname" />
							</div>
							<div class="form-group">
								<label>Email Id</label> <input class="form-control" type="text"
									name="demail" onblur="ValidateEmail()"/>
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control" type="text"
									name="dmobile" id="txtMB" onblur="return ValidateMobNumber('txtMB')" />
							</div>
							<div class="form-group">
								<label>Address</label> <input class="form-control" type="text"
									name="daddress" />
							</div>
							<div class="form-group">
								<label>User Name</label> <input class="form-control" type="text"
									name="uname" />
							</div>
							<div class="form-group">
								<label>Password</label> <input class="form-control"
									type="password" name="upass" />
							</div>
							<button type="submit" class="btn btn-info"style="background-color:#80ff00">Create
								Account</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
<script>
	//This function will validate Email.
	function ValidateEmail() {
		var uemail = document.driverRegister.demail;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (uemail.value.match(mailformat)) {
			document.driverRegister.desc.focus();
			return true;
		} else {
			alert("Please enter valid email id.!");
			uemail.focus();
			return false;
		}
	}

	function ValidateMobNumber(txtMobId) {
		var fld = document.getElementById(txtMobId);
		if (fld.value == "") {
			alert("You didn't enter a mobile number.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The mobile number contains illegal characters.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The mobile number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			fld.focus();
			return false;
		}

	}
</script>
</html>