<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher's Login Page</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body class="bg">
	<nav class="navbar navbar-expand-lg navbar-dark custom-bg ">
		<nav class="container">
			<a class="navbar-brand">ONLINE EXAMINATION</a>
		</nav>
	</nav>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header custom-bg text-white text-center">
						<h4>LOGIN</h4>
					</div>
					<div class="card-body">
						<form action="TeacherCheck" method="get">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" name="emailT" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="passwordT" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>