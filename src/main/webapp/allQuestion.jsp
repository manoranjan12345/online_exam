<%@page import="com.examination.dao.QuestionDaoImpl"%>
<%@page import="com.examination.entities.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.examination.helper.FactoryProvider"%>
<%@page import="com.examination.dao.QuestionDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Questions</title>
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
			QuestionDaoImpl dao = new QuestionDaoImpl(FactoryProvider.getFactory());
			List<Question> list = dao.getAllQuestions();
			%>
			<div class="col-md-12">
				<div class="card">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">No.</th>
								<th scope="col">Question</th>
								<th scope="col">Option-1</th>
								<th scope="col">Option-2</th>
								<th scope="col">Option-3</th>
								<th scope="col">Option-4</th>
								<th scope="col">Answer</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<%
						for (Question q : list) {
						%>
						<tbody>
							<tr>
								<th scope="col"><%=q.getqId()%></th>
								<th scope="col"><%=q.getQuestionT()%></th>
								<th scope="col"><%=q.getOptionT1()%></th>
								<th scope="col"><%=q.getOptionT2()%></th>
								<th scope="col"><%=q.getOptionT3()%></th>
								<th scope="col"><%=q.getOptionT4()%></th>
								<th scope="col"><%=q.getAnswerT()%></th>	
								<th scope="col"><button onclick='deleteItemFromQuestion(${item.productId})' class='btn btn-danger'>Remove</button></th>
										
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