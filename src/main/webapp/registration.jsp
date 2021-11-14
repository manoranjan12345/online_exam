<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Page</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body class="bg">
	<%@include file="components/navbar.jsp"%>
	<div class="container">
		<div class="row mt-3">
			<div class="col-md-9 offset-md-1">
				<form action="StudentServlet" method="get" >
					<div class="card">
						<div class="card-header custom-bg text-white text-center">
							<h4>REGISTRATION FORM</h4>
						</div>
						<div class="card-body">
							<div class="form-group">
								<label for="exampleFormControlInput1">Name of Student</label> <input
									type="text" name="nameS" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="Student Name">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Email Address</label> <input
									type="email" name="emailS" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="name123@example.com">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Phone No.</label> <input
									type="number" name="phoneS" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="Phone number">
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect1">Gender</label> <select
									class="form-control" name="genderS"
									id="exampleFormControlSelect1">
									<option>MALE</option>
									<option>FEMALE</option>
									<option>Others</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">School Name</label> <input
									type="text" name="schoolS" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="10th">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">10th Result (in %)</label>
								<input type="number" name="result1" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="result">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">School/College
									Name</label> <input type="text" name="collegeS" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="12th">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">12th Result (in %)</label>
								<input type="number" name="result2" class="form-control" required="required"
									id="exampleFormControlInput1" placeholder="result">
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect1">Caste</label> <select
									class="form-control" name="casteS"
									id="exampleFormControlSelect1">
									<option>General</option>
									<option>OBC</option>
									<option>SC</option>
									<option>ST</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlTextarea1"> Address of
									Student</label>
								<textarea class="form-control" name="addressS" required="required"
									id="exampleFormControlTextarea1" rows="2" placeholder="Address"></textarea>
							</div>
						</div>
						<div class="card-footer text-center custom-bg">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="reset" class="btn btn-info">Reset</button>
						</div>
					</div>
				</form>
			</div>
			<div class="column-md-1">
				<div class="card ml-5">
					<div class="card-header custom-bg text-white">
						<a href="index.jsp"><button type="button">BACK</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>