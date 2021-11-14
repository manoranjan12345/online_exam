<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question Page</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body class="bg">
	<nav class="navbar navbar-expand-lg navbar-dark custom-bg ">
		<nav class="container">
			<a class="navbar-brand">ONLINE EXAMINATION</a>
		</nav>
	</nav>
	<div class="container">
		<div class="row mt-3">
			<div class="col-md-9 offset-md-1">
				<form action="QuestionServlet" method="post">
					<div class="card">
						<div class="card-header custom-bg text-white text-center">
							<h4>ADDING QUESTION</h4>
						</div>
						<div class="card-body">
							<div class="form-group">
								<label for="exampleFormControlInput1">What is the
									question ?</label> <input type="text" name="questionT"
									class="form-control" id="exampleFormControlInput1"
									placeholder="Question">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Options</label> <input
									type="text" name="optionT1" class="form-control"
									id="exampleFormControlInput1" placeholder="Options A"><br>
								<input type="text" name="optionT2" class="form-control"
									id="exampleFormControlInput1" placeholder="Options B"><br>
								<input type="text" name="optionT3" class="form-control"
									id="exampleFormControlInput1" placeholder="Options C"><br>
								<input type="text" name="optionT4" class="form-control"
									id="exampleFormControlInput1" placeholder="Options D">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Answer </label> <input
									type="text" name="answerT" class="form-control"
									id="exampleFormControlInput1" placeholder="Answer">
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
						<a href="teacher.jsp"><button type="button">BACK</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>