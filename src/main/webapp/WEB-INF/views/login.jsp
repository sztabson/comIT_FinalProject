<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
     <link rel="icon" href="./Signin/bootstrap-solid.jpg">

    <title>Signin IDC work</title>

    <!-- Bootstrap core CSS -->
    <link href="./Signin/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Signin/signin.css" rel="stylesheet">
  </head>
  
<body class="text-center">
<div class="container">	
	<c:if test="${errorMessage != null }">
		<div class="alert alert-danger mt-3" role="alert">
 				${errorMessage}
		</div>
	</c:if>
    <form class="form-signin" action="/login.do" method="POST">
      <img class="mb-4" src="./Signin/bootstrap-solid.jpg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

      <label for="inputName" class="sr-only">Name</label>
      <input name="username" type="name" id="inputName" class="form-control" placeholder="Name" required="" autofocus="">
      <label for="inputPassword" class="sr-only">Password</label>
      <input input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">© Pawel Sztobryn 2018</p>
    </form>
</div>
</body>
</html>
