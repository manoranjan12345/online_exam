<%@page import="java.sql.Statement"%>
<%@page import="com.examination.entities.Student"%>
<%@page import="com.examination.dao.StudentDao"%>
<%@page import="javassist.bytecode.stackmap.BasicBlock.Catch"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.examination.servlets.QuestionServlet"%>
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
<title>Online Examination</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body class="bg">
	<%@include file="components/navbar.jsp"%>
	<div class="card">
		<%
		QuestionDaoImpl daoImpl = new QuestionDaoImpl(FactoryProvider.getFactory());
		List<Question> list = daoImpl.getAllQuestions();

		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?useSSL=false", "root", "master");
			String query = "select *from student ORDER BY sId DESC LIMIT 1;";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
		%>
		<div class="card-header">
			<h2>
				Hello <%=rs.getString("nameS")%>,</h2>
		</div>
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		<form action="AnswerServlet" method="post">
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 1) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op1"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op1"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op1"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op1"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 2) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op2"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op2"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op2"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op2"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 3) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op3"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op3"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op3"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op3"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 4) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op4"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op4"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op4"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op4"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 5) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op5"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op5"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op5"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op5"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 6) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op6"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op6"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op6"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op6"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 7) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op7"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op7"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op7"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op7"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 8) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op8"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op8"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op8"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op8"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 9) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html" name="op9"
					value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op9"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op9"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op9"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<div class="card-body">
				<%
				for (Question q : list) {
					if (q.getqId() == 10) {
				%>
				<label for="exampleFormControlInput1"><i><b>Que No.</b></i></label>
				<input type="number" name="qId" class="form-E1"
					value="<%=q.getqId()%>" id="exampleFormControlInput1" readonly><br>
				<input type="text" name="questionT" class="form-E2"
					value="<%=q.getQuestionT()%>" id="exampleFormControlInput1"
					readonly><br> <input type="radio" id="html"
					name="op10" value="<%=q.getOptionT1()%>" /><label for="html"><%=q.getOptionT1()%></label><br>
				<input type="radio" id="html" name="op10"
					value="<%=q.getOptionT2()%>" /><label for="html"><%=q.getOptionT2()%></label><br>
				<input type="radio" id="html" name="op10"
					value="<%=q.getOptionT3()%>" /><label for="html"><%=q.getOptionT3()%></label><br>
				<input type="radio" id="html" name="op10"
					value="<%=q.getOptionT4()%>" /><label for="html"><%=q.getOptionT4()%></label><br>
				<%
				}
				}
				%>
			</div>
			<a href="calculation.jsp"><button class="btn btn-success">Submit</button></a>
		</form>

	</div>
	<nav class="navbar navbar-expand-lg navbar-dark custom-ground"></nav>

</body>
</html>