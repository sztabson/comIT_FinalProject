<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0060)https://getbootstrap.com/docs/4.1/examples/starter-template/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./Signin/bootstrap-solid.jpg">

    <title>IDC work</title>

    <!-- Bootstrap core CSS -->
    <link href="./Signin/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Signin/starter-template.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="/idc_a.do">IDC</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="/admin.do">Users</a>
          </li>
		  <li class="nav-item text-nowrap">
            <a class="nav-link" href="/login.do">Sign out</a>
          </li>

        </ul>

      </div>
    </nav>

    <main role="main" class="container">
    
	<div class="container">
	<h1 class="mt-3">
		Welcome back, ${user.username}
	</h1>
	<h2 class="mt-4">
		Users
	</h2>
	<div class="row">
		<c:forEach items="${users}" var="user">
		  	<form action="/delete_user.do" method="post">
				<div class="card info-panel" style="width: 18rem;">
					<div class="card-header">
						${user.userid} - ${user.username}
					</div>
					<div class="card-body">					
					    <h5 class="card-title">${user.firstname} ${user.lastname}</h5>
					    <p class="card-text">Address: ${user.address}</p>
					    <p class="card-text">Phone: ${user.phone}</p>
					    <input id="id" name="id" type="hidden" value="${user.id}">
						<!-- <button type="submit" class="btn btn-primary">Delete</button> -->
					</div>
				</div>
			</form>
		</c:forEach>
	</div>
</div>


 
	
</div>
</main>
</body>
</html>