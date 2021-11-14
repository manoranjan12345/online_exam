<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher's Page</title>
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
			<div class="column-md-3">
				<div class="card">
					<div class="card-body">
						<a href="allQuestion.jsp"><img alt="Questions" src="image/conversation.png"
							style="width: 250px;"></a>
					</div>
					<div class="card-footer custom-bg text-white">
						<h4 class="text-center">ALL QUESTIONS</h4>
					</div>
				</div>
			</div>
			<div class="column-md-3">
				<div class="card ml-5">
					<div class="card-body">
						<a href="addQuestion.jsp"><img alt="Add" src="image/add.png"
							style="width: 250px;"></a>
					</div>
					<div class="card-footer custom-bg text-white">
						<h4 class="text-center">ADD QUESTION</h4>
					</div>
				</div>
			</div>
			<div class="column-md-3">
				<div class="card ml-5">
					<div class="card-body">
						<a href="allStudents.jsp"><img alt="Student"
							src="image/approved.png" style="width: 250px;"></a>
					</div>
					<div class="card-footer custom-bg text-white">
						<h4 class="text-center">STUDENT'S MARKS</h4>
					</div>
				</div>
			</div>
			<div class="column-md-3">
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
