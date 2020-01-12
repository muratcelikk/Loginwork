<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href='<s:url value="/register"></s:url>'>Dashboard <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href='<s:url value="/profile"></s:url>'>profile</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href='<s:url value="/profile"></s:url>'>Profile</a>
          <div class="dropdown-divider"></div>
          <a onclick="return exitAlert();" class="dropdown-item" href='<s:url value="/exit"></s:url>'>Exit</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>			
		<div style="height: 100vh" class="col-sm-4 d-flex">
		  <div class="card w-100 m-auto px-3 text-center">
			<h1 class="py-3">Profile</h1>
			<form action='<s:url value="/updateProfile"></s:url>' method="post">
			  <div class="form-group">
				<input value="${userData.uname}" required="required" name="uname" type="text" class="form-control" placeholder="Name"/>
			  </div>
			  <div class="form-group">
				<input value="${userData.usurname}" required="required" name="usurname" type="text" class="form-control" placeholder="Surname"/>
			  </div>
			  <div class="form-group">
				<input value="${userData.umail}" required="required" name="umail" type="email" class="form-control" placeholder="Email"/>
			  </div>
			  <div class="form-group">
				<input value="${userData.upassword}" required="required" name="upassword" type="password" class="form-control" placeholder="Password" />
			  </div>
			  <input type="submit" value="Update" class="btn btn-success mb-3" />
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