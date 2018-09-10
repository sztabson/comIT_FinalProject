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
	<div class="container">
    <div class="row">    
    <form action="/search.do" method="post">
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Filter by</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#userid">User ID</a></li>
                      <li><a href="#username">Username</a></li>
                      <li><a href="#lastname">Last Name</a></li>
                      <li class="divider"></li>
                      <li><a href="#all">Anything</a></li>
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term...">
                <span class="input-group-btn">
                <button type="submit" class="btn btn-primary">Search</button>
                    <!-- <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button> -->
                </span>
            </div>
        </div>
        </form>
	</div>
</div>
<br>
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
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./Signin/jquery-3.3.1.slim.min.js.pobrane" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="./Signin/popper.min.js.pobrane"></script>
    <script src="./Signin/bootstrap.min.js.pobrane"></script>
    	<script language="JavaScript">
    	
    $(document).ready(function(e){
    $('.search-panel .dropdown-menu').find('a').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("href").replace("#","");
		var concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #search_param').val(param);
	});
});
    </script>
</body>

</html>