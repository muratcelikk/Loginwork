<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container-fluid bg-light">
	<div class="row">
		<div class="col-sm-4"></div>			
		<div style="height: 100vh" class="col-sm-4 d-flex">
		  <div class="card w-100 m-auto px-3 text-center">
			<h1 class="py-3">Sign Up</h1>
			<form action='<s:url value="/addUser"></s:url>' method="post">
			  <div class="form-group">
				<input required="required" name="uname" type="text" class="form-control" placeholder="Name"/>
			  </div>
			  <div class="form-group">
				<input required="required" name="usurname" type="text" class="form-control" placeholder="Surname"/>
			  </div>
			  <div class="form-group">
				<input required="required" name="umail" type="email" class="form-control" placeholder="Email"/>
			  </div>
			  <div class="form-group">
				<input required="required" name="upassword" type="password" class="form-control" placeholder="Password" />
			  </div>
			  <input type="submit" value="Sign Up" class="btn btn-success mb-3" />
			</form>
		  </div>		  
		</div>
		<div class="col-sm-4"></div>
	</div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</html>
