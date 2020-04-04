<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.Student" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4VA+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<% Student student = (Student) session.getAttribute("student"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Claim Academy</title>
</head>
<body>
<nav class="navbar navbar-inverse navar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<font color="white">Welcome To <% out.print(student.getSchoolName()); %></font>	
		</div>
		<div id="navbar" class="navbar-collapse collapse">
		</div><!-- /.navbar-collapse -->
	</div>
</nav>
<!--  Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
	<div class="container">
		<h1>Hello, <% out.print(student.getFirstName()); %></h1>
		<p>This is a simple java servlet program for a functional website. </p>
	</div>
</div>
<div class="container">
<!-- Example row of columns -->
	<div class="row">
		<div class="col-md-4">
			<h2>My GPA</h2>
			<p><% out.print(student.getGpa()); %></p>
			<br>
			<h2>My BMI</h2>
			<p><% out.print(student.getBmi()); %></p>
		</div>
		<div class="col-md-4">
			<h2>Enter Grades </h2>
			<form action="GpaServlet" method="post">
				<div class="form-group">
					<label for="gradeOne">Grade One</label>
					<input type="text" class="form-control" name="gradeOne" id="gradeOne" placeholder="Grade One">
				</div>
				<div class="form-group">
					<label for="gradeTwo">Grade Two</label>
					<input type="text" class="form-control" name="gradeTwo" id="gradeTwo" placeholder="Grade Two">
				</div>
				<div class="form-group">
					<label for="gradethree">Grade Three</label>
					<input type="text" class="form-control" name="gradeThree" id="gradeThree" placeholder="Grade Three">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<h2>Enter Height and Weight</h2>
			<form action="BMIServlet" method="post">
				<div class="form-group">
					<label for="height">Height in Inches</label>
					<input type="text" class="form-control" name="height" id="height" placeholder="Height in Inches">
				</div>
				<div class="form-group">
					<label for="weight">Weight in pounds</label>
					<input type="text" class="form-control" name="weight" id="weight" placeholder="Weight in Pounds">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
				<a href="course.jsp">
					<button type="submit" class="btn btn-default">Add a class</button>
				</a>
				<br>
				<br>
				<a href="courselist.jsp">
					<button type="submit" class="btn btn-default">Class List</button>
				</a>
				
		</div>
		<hr>

	</div><!-- /container -->
<footer>
	<p>&copy; 2017 Company, Inc.</p>
</footer>
</div>
</body>
</html>