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
		${user.username}
	</h1>
	<h2 class="mt-4">
		Users
	</h2>

<div class="container">
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
						<button type="submit" class="btn btn-primary">Delete</button>
						<a href="/edit_user.do?id=${user.id}" class="btn btn-primary">Edit</a>
					</div>
				</div>
			</form>
		</c:forEach>
	</div>
</div>
 <hr class="mb-4">

         	<h4 class="mb-3">Add New User</h4>
        	<form  name="f1" action="/users.do" method="POST">
         	 <div class="mb-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">User  ID:</span>
                </div>
                 <input type="text" class="form-control" name="userid" id="inputuserid" placeholder="" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   User ID is required.
                 </div>
               </div>
             </div>
             <div class="mb-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">User Name:</span>
                </div>
                 <input type="text" class="form-control" name="username" id="inputusername" placeholder="" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   User Name is required.
                 </div>
               </div>
             </div>
             <div class="mb-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Password:</span>
                </div>
                 <input type="text" class="form-control" name="password" id="inputpassword" placeholder="" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   Password is required.
                 </div>
               </div>
             </div>
             <div class="mb-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">First Name:</span>
                </div>
                  <input type="text" class="form-control" name="firstname" id="inputfirstname" placeholder="" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   First Name is required.
                 </div>
               </div>
             </div>
             <div class="mb-3">
               <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Last Name:</span>
                </div>
                 <input type="text" class="form-control" name="lastname" id="inputlastname" placeholder="" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   Last Name is required.
                 </div>
                </div>
               </div>
               <div class="mb-3">
                <div class="input-group">
                 <div class="input-group-prepend">
                  <span class="input-group-text">Address:</span>
                 </div>                
                  <input type="text" class="form-control" name="address" id="inputaddress" placeholder="" value="" required="">
                  <div class="invalid-feedback">
                    Address is required.
                  </div>
               </div>
             </div>
             <div class="mb-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Phone:</span>
                </div>
                <input type="text" class="form-control" name="phone" id="inputphone" placeholder=" " required="">
                <div class="invalid-feedback" style="width: 100%;">
                  Phone is required.
                </div>
              </div>
            </div>
           <hr class="mb-4">
<%--  <input id="userid" name="userid" type="hidden" value="${user.userid}"> --%>
<button class="btn btn-primary btn-lg btn-block" value="Submit" type="submit">Submit</button>
           </form>
	
</div>
</main>
</body>
</html>