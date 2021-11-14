<%@page import="java.sql.ResultSet"%>
<%@page import="com.examination.entities.Question"%>
<%@page import="com.examination.dao.QuestionDaoImpl"%>
<%@page import="com.examination.entities.Answer"%>
<%@page import="com.examination.dao.AnswerDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.examination.helper.FactoryProvider"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Examination</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
</body>
<div class="card bg-dark text-white">
	<img class="" width="1295" height="450" src="image/download.jpg"
		alt="Card image">
	<div class="card-img-overlay">
		<h1 class="card-title">Result</h1>
		<%
		AnswerDao dao = new AnswerDao(FactoryProvider.getFactory());
		List<Answer> list1 = dao.getAllAnswers();

		QuestionDaoImpl daoImpl = new QuestionDaoImpl(FactoryProvider.getFactory());
		List<Question> list = daoImpl.getAllQuestions();
		
		try {
			int total = 0;
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?useSSL=false", "root", "master");
			String query = "select *from answer ORDER BY aId DESC LIMIT 1;";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				for (Question q : list) {
					if (q.getqId() == 1) {
						if(rs.getString("op1")==null){
							total = total + 0 ;
						}else if(rs.getString("op1").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}
				for (Question q : list) {
					if (q.getqId() == 2) {
						if(rs.getString("op2")==null){
							total = total + 0 ;
						}else if(rs.getString("op2").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 3) {
						if(rs.getString("op3")==null){
							total = total + 0 ;
						}else if(rs.getString("op3").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 4) {
						if(rs.getString("op4")==null){
							total = total + 0 ;
						}else if(rs.getString("op4").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 5) {
						if(rs.getString("op5")==null){
							total = total + 0 ;
						}else if(rs.getString("op5").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 6) {
						if(rs.getString("op6")==null){
							total = total + 0 ;
						}else if(rs.getString("op6").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 7) {
						if(rs.getString("op7")==null){
							total = total + 0 ;
						}else if(rs.getString("op7").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 8) {
						if(rs.getString("op8")==null){
							total = total + 0 ;
						}else if(rs.getString("op8").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 9) {
						if(rs.getString("op9")==null){
							total = total + 0 ;
						}else if(rs.getString("op9").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}for (Question q : list) {
					if (q.getqId() == 10) {
						if(rs.getString("op10")==null){
							total = total + 0 ;
						}else if(rs.getString("op10").equals(q.getAnswerT())){
							total = total + 1;
						}else{
							total = total + 0 ;
						}
					}
				}
				
			}
			PreparedStatement pstmt = con.prepareStatement("UPDATE student SET markS = ? ORDER BY sId DESC LIMIT 1;");
			pstmt.setInt(1, total);
			pstmt.executeUpdate();
			%>
			<h2>Your Score is : <b><%=total %></b></h2><%
		} catch (Exception e) {
			e.printStackTrace();
		}
		%>		
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark custom-ground">
		<a href="index.jsp"><button class="btn btn-primary">FINISH</button></a>
	</nav>
</div>
</html>