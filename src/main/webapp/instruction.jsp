<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Instruction Page</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body class="bg">
	<%@include file="components/navbar.jsp"%>
	<div class="card bg-dark text-white">
		<img class="" width="1295" height="450" src="image/download.jpg"
			alt="Card image">
		<div class="card-img-overlay">
			<h1 class="card-title">Instruction</h1>
				<ul class="card-text">
					<li><h5>Required version of Safe Browser (2.4.1) must be installed
						on the Laptop. If any other version of Safe Exam Broswer is
						installed, please un-install it and dowload, install version 2.4.1</h5></li>
					<li><h5>After Installing the Safe Exam Browser, Download the File
						and Double Click to Start the Exam</h5></li>
					<li><h5>Students are required to Login at least 15 minutes before
						the start of Examinations to ensure course enrollment.</h5></li>
					<li><h5>Students must have stable internet connection preferably
						with UPS backup</li>
					<li><h5>Webcam is mandatory. Without camera examination will not
						start</h5></li>
					<li><h5>Student must have peaceful environment and No one should
						be around the students at the time of Examinations. If anyone else
						found around the student, the examination of the student will not
						be considered valid and stand cancelled.</h5></li>
				</ul>
			&nbsp;
			<div class="start_btn text-center">
				<h4>All The Best !</h4>
				&nbsp; <a href="startExam.jsp"><button class="btn btn-success">Start
						The Exam</button></a>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark custom-ground"></nav>
	</div>
</body>
</html>