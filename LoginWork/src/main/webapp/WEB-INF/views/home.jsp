<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

<div class="container-fluid bg-white" style="height: 100vh">
	<br><br><br><br><br><br>
		<div class="row">
			
			<div class="col-sm-4 "></div>
			<div class="col-sm-4 ">
			
			<div class="card px-3 bg-warning ">
			<form action='<s:url value="/login"></s:url>' method="post">	
			<h1 class="py-2 text-center" style="color:white;">Login</h1>	
					
		
					<input name="mail" type="email" class="form-control"
						placeholder="E-mail" /> 
						
						<br> <input name="password"
						type="password" class="form-control" placeholder="Password" /> <br>
					<button type="submit" class="btn btn-primary btn-block">sign in</button>
					
			</form>
				
				
				     <div class="dropdown-divider"></div>
				  <div><a class="dropdown-item py-1 text-center" style="color: red;" href='<s:url value="/signup"></s:url>'>New around here? Sign up</a></div>
				</div>
			</div>
			<div class="col-sm-4 "></div>
		</div>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>

</html>