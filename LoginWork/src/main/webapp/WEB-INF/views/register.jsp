<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script>

function exitAlert() {
	const response = confirm("Are you sure you want to logout?");
	if (response) {
		return true;
	} else {
		return false;
	}
}

function deleteAlert() {
	const response = confirm("Are you sure you want to delete this row?");
	if (response) {
		return true;
	} else {
		return false;
	}
}

</script>

</head>
<body>
<div class="container" >

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Pegamis</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href='<s:url value="/legend"></s:url>'>Legend <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href='<s:url value="/profile"></s:url>'>Profile</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href='<s:url value="/profile"></s:url>'>Profile</a>
         
          <div class="dropdown-divider"></div>
          <a onclick="return exitAlert();" class="dropdown-item" href='<s:url value="/exit"></s:url>'>Exit</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<br><br>


<!-- Add Person -->
<div class="row">
	<div class="col-sm-3">
		<h1>Add Person</h1>
		<form action='<s:url value="cartInsert"></s:url>' method="post">
			
			<div class="form-group">
			    <input required="required" name="cname" type="text" class="form-control"  placeholder="Name">
  			</div>
  			
  			<div class="form-group">
			    <input required="required"  name="csurname" type="text" class="form-control"  placeholder="Surname">
  			</div>
  			
  			<div class="form-group">
			    <input required="required"  name="cmail" type="email" class="form-control"  placeholder="E-mail">
  			</div>
  			
  			<div class="form-group">
  				<input name="cphone"  required="required"  class="form-control" type='tel' pattern='[0-9]{3}[0-9]{3}[0-9]{4}' maxlength="10" placeholder="Phone" title='Telefon No: 5556667788 '>
  			</div>
  			
  			<div class="form-group">
			    <select name="cid" class="form-control">
			    <c:if test="${ not empty catData }">
			    	<c:forEach items="${catData }"  var="item" >
			    		<option value="${item.cid }">${item.ctitle }</option>
			    	</c:forEach>
			    </c:if>
			    </select>
			  </div>
			  <textarea name="cnotes" rows="3" class="form-control" placeholder="Notes.."></textarea>
			  <br>
			<button type="submit" class="btn btn-success">Save</button>
			<input type="reset" class="btn btn-info" value="Clear">
			
		</form>
	</div>
	
<!-- Table Title -->
	<div class="col-sm-9">
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Name</th>
		      <th scope="col">Surname</th>
		      <th scope="col">Phone</th>
		      <th scope="col">E-mail</th>
		      <th scope="col">Category</th>
		      <th scope="col">Notes</th>
		      <th scope="col">Transaction</th>
		    </tr>
		  </thead>
		  <tbody>
		  
<!-- Table Content -->		  
		  <c:if test="${not empty tableData }">
		  	<c:forEach items="${tableData }" var="item">
			    <tr>
			      <th>${item.crid }</th>
			      <td>${item.cname }</td>
			      <td>${item.csurname }</td>
			      <td>${item.cphone }</td>
			      <td>${item.cmail }</td>
			      <td>${item.ctitle }</td>
			      <td>${item.cnotes }</td>
			      <td>
			      	<a href="updatePage/${ item.crid }" class="btn btn-info">Edit</a>
			      </td>
			        <td>
			      	<a onclick="return deleteAlert();" href="cartDelete/${item.crid}" class="btn btn-danger">Delete</a>
			      </td>
			    </tr>
		    </c:forEach>
		 </c:if>
		   
		  </tbody>
		</table>
	</div>
</div>

</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

</html>