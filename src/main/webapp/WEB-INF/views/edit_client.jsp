<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0054)https://getbootstrap.com/docs/4.1/examples/dashboard/# -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./Signin/bootstrap-solid.jpg">

    <title>IDC</title>

    <!-- Bootstrap core CSS -->
    <link href="./Signin/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Signin/dashboard.css" rel="stylesheet">
  <style type="text/css">/* Chart.js */
@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style></head>

  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="/idc_w.do">IDC</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">

          <li class="nav-item">
            <a class="nav-link" href="/clients.do">Report</a>
          </li>

		  <li class="nav-item text-nowrap">
            <a class="nav-link" href="/login.do">Sign out</a>
          </li>

        </ul>

      </div>
    </nav>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>

	 <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Edit ${client.WO}</h1>
            </div>    
	 <form  name="f1" action="/edit_client.do" method="POST">
             <div class="mb-3">
               <label for="workOrder">Work Order</label>
               <div class="input-group">
                 <div class="input-group-prepend">
                   <span class="input-group-text">#</span>
                 </div>
                 <input type="text" class="form-control" name="wo" id="inputWO" value="${client.WO}" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   Work Order is required.
                 </div>
               </div>
             </div>
             <div class="mb-3">
                <label for="Address">Address</label>
                <input type="text" class="form-control" name="address" id="inputAddress" value="${client.address}" required="">
                <div class="invalid-feedback">
                  Address is required.
                </div>
             </div>
             <div class="mb-3">
              <label for="circuitNumber">Circuit number</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">tel:</span>
                </div>
                <input type="text" class="form-control" name="phone" id="inputPhone" value="${client.phone}" placeholder="Circuit number" required="">
                <div class="invalid-feedback" style="width: 100%;">
                  Circuit number is required.
                </div>
              </div>
            </div>
<!-- 
            <div class="mb-3">
              <label for="comments">Comments <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="comments" placeholder="Comments">
            </div>
-->			
            <div class="mb-3">
              <label for="mileage">Mileage Charges <span class="text-muted"></span></label>
              <input type="text" class="form-control" name="mileage" id="inputMileage" value="${client.mileage}">
            </div>
            <div class="mb-3">
              <label for="install">Install name <span class="text-muted"></span></label>
              <input type="text" class="form-control" name="install" id="inputinstall" value="${client.install}">
            </div>
            <br/>
         
            <hr class="mb-4">
			<input id="id" name="id" type="hidden" value="${client.ID}">
			<button class="btn btn-primary btn-lg btn-block" value="Submit" type="submit">Submit</button>
           </form>
           </main>
	</body>
</html>