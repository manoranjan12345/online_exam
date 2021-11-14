<%@page import="com.examination.entities.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.examination.helper.FactoryProvider"%>
<%@page import="com.examination.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body class="bg">
<nav class="navbar navbar-expand-lg navbar-dark custom-bg ">
		<nav class="container">
			<a class="navbar-brand">ONLINE EXAMINATION</a> <a href="teacher.jsp"><button
					class="btn btn-success" type="button">BACK</button></a>
		</nav>
	</nav>
	<div class="container">
		<div class="row mt-3">
			<%
			StudentDao dao = new StudentDao(FactoryProvider.getFactory());
			List<Student> list2 = dao.getAllStudents();
			%>
			<div class="col-md-12">
				<div class="card">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th>Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Gender</th>
								<th>School</th>
								<th>Result</th>
								<th>College</th>
								<th>Result</th>
								<th>Caste</th>
								<th>Address</th>
								<th>Mark</th>
							</tr>
						</thead>
						<%
						for(Student s : list2) {
						%>
						<tbody>
							<tr>
								<th scope="col"><%=s.getNameS()%></th>
								<th scope="col"><%=s.getEmailS()%></th>
								<th scope="col"><%=s.getPhoneS()%></th>
								<th scope="col"><%=s.getGenderS()%></th>
								<th scope="col"><%=s.getSchoolS()%></th>
								<th scope="col"><%=s.getResult1()%></th>
								<th scope="col"><%=s.getCollegeS()%></th>
								<th scope="col"><%=s.getResult2()%></th>
								<th scope="col"><%=s.getCasteS()%></th>
								<th scope="col"><%=s.getAddressS()%></th>
								<th scope="col"><%=s.getMarkS()%></th>
							</tr>
						</tbody>
						<%
						}
						%>
					</table>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark custom-ground"></nav>
</body>
</html>