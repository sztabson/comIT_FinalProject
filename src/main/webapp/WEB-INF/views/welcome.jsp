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

    <main role="main" class="container">

<!--report-->
<form  name="f1" action="/welcome.do" method="POST">
          <div class="col-md-8 order-md-1">
           	<h3 class="mt-3">
	    		Welcome back, ${user.username}
			</h3>
           <hr class="mb-4">
           	<c:if test="${errorMessage != null }">
				<div class="alert alert-danger mt-3" role="alert">
					${errorMessage}
				</div>
			</c:if>
         	 <h4 class="mb-3">IDC Copper/Fiber Installs</h4>
             <div class="mb-3">
               <label for="workOrder">Work Order</label>
               <div class="input-group">
                 <div class="input-group-prepend">
                   <span class="input-group-text">#</span>
                 </div>
                 <input type="text" class="form-control" name="wo" id="inputWO" placeholder="Work order number" required="">
                 <div class="invalid-feedback" style="width: 100%;">
                   Work Order is required.
                 </div>
               </div>
             </div>
             <div class="mb-3">
                <label for="Address">Address</label>
                <input type="text" class="form-control" name="address" id="inputAddress" placeholder="Address" value="" required="">
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
                <input type="text" class="form-control" name="phone" id="inputPhone" placeholder="Circuit number" required="">
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
              <label for="mileage">Mileage Charges <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" name="mileage" id="inputMileage" placeholder="Town">
            </div><br/>
         
            <hr class="mb-4">
<button class="btn btn-primary btn-lg btn-block" value="Submit" type="submit">Submit</button>




<!--  
            <h4 class="mb-3">Copper Install</h4>

            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input id="ipwSdu" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="ipwSdu">IPM/IPW-(HDTV/HIS/HD)SDU</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="ipwMdu" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="ipwMdu">IPM/IPW-(HDTV/HIS/HD)MDU</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="ipd" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="ipd">IPD-(HDTV/HIS)SDU/MDU</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="ipt" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="ipt">IPT-(HDTV/Voice)SDU/MDU</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="ips" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="ips">IPS-VDSL2</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="ipu" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="ipu">IPU</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="voice" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="voice">Voice Only</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="mac" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="mac">MAC</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="noAccess" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="noAccess">No Access</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="dsl" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="dsl">DSL</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="dslVoice" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="dslVoice">DSL/voice</label>
              </div>			  
			  
            <br/><h4 class="mb-3">Fiber Install</h4>
			
              <div class="custom-control custom-radio">
                <input id="ipwfSdu" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="ipwfSdu">IPWF-(HDTV/HIS/HD)SDU</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="ipwfMdu" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="ipwfMdu">IPWF-(HDTV/HIS/HD)MDU</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="iptf" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="iptf">IPTF-(HDTV/Voice)SDU/MDU</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="ipsf" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="ipsf">IPSF</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="ipuf" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="ipuf">IPUF</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="voiceF" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="voiceF">Voice Only</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="macF" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="macF">MAC</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="noAccessF" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="noAccessF">No Access</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="other" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="other">Other:</label>
              </div>
			  
			  
			  <br/><h4 class="mb-3">Business - Copper/Fibre Install</h4>
			  
              <div class="custom-control custom-radio">
                <input id="bhe" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="bhe">BHE/BHEB-(IPS VDSL2)</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="bue" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="bue">BUE/BUEB-(HDTV/HIS)</label>
              </div>
			  <div class="custom-control custom-radio">
                <input id="but" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="but">BUT/BUTB-(DHTV)</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="bhef" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="bhef">BHEF-(IPSF)</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="buef" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="buef">BUEF-(IPWF)</label>
              </div>
			                <div class="custom-control custom-radio">
                <input id="butf" name="install" type="radio" class="custom-control-input" checked="" required="">
                <label class="custom-control-label" for="butf">BUTF-(IPTF)</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="noAccessB" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="noAccessB">No Access</label>
              </div>
			 
			  <br/><h4 class="mb-3">Drop Only</h4>
			  
              <div class="custom-control custom-radio">
                <input id="drop" name="install" type="radio" class="custom-control-input" required="">
                <label class="custom-control-label" for="drop">Drop Only</label>
              </div>			 
			  
            </div><br/>
            <hr class="mb-4">
		    <h4 class="mb-3">Miscellaneous</h4>
			<div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" onclick="enable_cables(this.checked)" value='yes' id='cables'>
              <label class="custom-control-label" for="cables">Extra Cable Run/Jack Install</label></br>&nbsp;&nbsp;&nbsp;
			  <form name=f1 method=post action=period-disable-demock.php>
				<input type=radio name=cables value=1 id='cables1' disabled>1 
				<input type=radio name=cables value=2 id='cables2' disabled>2
				<input type=radio name=cables value=3 id='cables3' disabled>3
				<input type=radio name=cables value=4 id='cables4' disabled>4
				<input type=radio name=cables value=5 id='cables5' disabled>5
				<input type=radio name=cables value=6 id='cables6' disabled>6
			  </form>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="nid" value="10">
              <label class="custom-control-label" for="nid">NID/Trailer Wire/Ground (Copper/Fiber)</label>
            </div>
			<div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="bdi">
              <label class="custom-control-label" for="bdi">BDI</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="cad">
              <label class="custom-control-label" for="cad">CAD</label>
            </div>
			<div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="extender">
              <label class="custom-control-label" for="extender">Installed WiFi Extender</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="ist">
              <label class="custom-control-label" for="ist">IST pending as per Curtis</label>
            </div>
			
         </div><br/>

			
			<h4 class="mb-3">Bell MTS Equipment</h4>

            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=wifiE onclick="enable_wifiE(this.checked)" value='yes' id='wifiE'>WiFi Extender-128969</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=wifiE value=1 id='wifiE1' disabled>1 
				<input type=radio name=wifiE value=2 id='wifiE2' disabled>2
				<input type=radio name=wifiE value=3 id='wifiE3' disabled>3
				<input type=radio name=wifiE value=4 id='wifiE4' disabled>4
				<input type=radio name=wifiE value=5 id='wifiE5' disabled>5
				<input type=radio name=wifiE value=6 id='wifiE6' disabled>6
			</form>
			
		    <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=wifiEr onclick="enable_wifiEr(this.checked)" value='yes' id='wifiEr'>WiFi Extender (Refurb)-207101</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=wifiEr value=1 id='wifiEr1' disabled>1 
				<input type=radio name=wifiEr value=2 id='wifiEr2' disabled>2
				<input type=radio name=wifiEr value=3 id='wifiEr3' disabled>3
				<input type=radio name=wifiEr value=4 id='wifiEr4' disabled>4
				<input type=radio name=wifiEr value=5 id='wifiEr5' disabled>5
				<input type=radio name=wifiEr value=6 id='wifiEr6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=5168r onclick="enable_5168Nr(this.checked)" value='yes' id=5168>5168N (Refurb)-206413</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=5168Nr value=1 id='5168Nr1' disabled>1 
				<input type=radio name=5168Nr value=2 id='5168Nr2' disabled>2
				<input type=radio name=5168Nr value=3 id='5168Nr3' disabled>3
				<input type=radio name=5168Nr value=4 id='5168Nr4' disabled>4
				<input type=radio name=5168Nr value=5 id='5168Nr5' disabled>5
				<input type=radio name=5168Nr value=6 id='5168Nr6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=5168 onclick="enable_5168N(this.checked)" value='yes'>5168N-110-123982</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=5168N value=1 id='5168N1' disabled>1 
				<input type=radio name=5168N value=2 id='5168N2' disabled>2
				<input type=radio name=5168N value=3 id='5168N3' disabled>3
				<input type=radio name=5168N value=4 id='5168N4' disabled>4
				<input type=radio name=5168N value=5 id='5168N5' disabled>5
				<input type=radio name=5168N value=6 id='5168N6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=3801HG onclick="enable_3801HG(this.checked)" value='yes'>3801HG-204800</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=3801HG value=1 id='3801HG1' disabled>1 
				<input type=radio name=3801HG value=2 id='3801HG2' disabled>2
				<input type=radio name=3801HG value=3 id='3801HG3' disabled>3
				<input type=radio name=3801HG value=4 id='3801HG4' disabled>4
				<input type=radio name=3801HG value=5 id='3801HG5' disabled>5
				<input type=radio name=3801HG value=6 id='3801HG6' disabled>6
			</form>
			            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=HH3000 onclick="enable_HH3000(this.checked)" value='yes'>HH3000-128874</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=HH3000 value=1 id='HH3000-1' disabled>1 
				<input type=radio name=HH3000 value=2 id='HH3000-2' disabled>2
				<input type=radio name=HH3000 value=3 id='HH3000-3' disabled>3
				<input type=radio name=HH3000 value=4 id='HH3000-4' disabled>4
				<input type=radio name=HH3000 value=5 id='HH3000-5' disabled>5
				<input type=radio name=HH3000 value=6 id='HH3000-6' disabled>6
			</form>
			            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2202 onclick="enable_vip2202(this.checked)" value='yes'>VIP 2202-205021</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2202 value=1 id='vip2202-1' disabled>1 
				<input type=radio name=vip2202 value=2 id='vip2202-2' disabled>2
				<input type=radio name=vip2202 value=3 id='vip2202-3' disabled>3
				<input type=radio name=vip2202 value=4 id='vip2202-4' disabled>4
				<input type=radio name=vip2202 value=5 id='vip2202-5' disabled>5
				<input type=radio name=vip2202 value=6 id='vip2202-6' disabled>6
			</form>
						            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2262 onclick="enable_vip2262(this.checked)" value='yes'>VIP 2262-122191</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2262 value=1 id='vip2262-1' disabled>1 
				<input type=radio name=vip2262 value=2 id='vip2262-2' disabled>2
				<input type=radio name=vip2262 value=3 id='vip2262-3' disabled>3
				<input type=radio name=vip2262 value=4 id='vip2262-4' disabled>4
				<input type=radio name=vip2262 value=5 id='vip2262-5' disabled>5
				<input type=radio name=vip2262 value=6 id='vip2262-6' disabled>6
			</form>
			            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2262r onclick="enable_vip2262r(this.checked)" value='yes'>VIP 2262 (Refurb)-205020</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2262r value=1 id='vip2262r1' disabled>1 
				<input type=radio name=vip2262r value=2 id='vip2262r2' disabled>2
				<input type=radio name=vip2262r value=3 id='vip2262r3' disabled>3
				<input type=radio name=vip2262r value=4 id='vip2262r4' disabled>4
				<input type=radio name=vip2262r value=5 id='vip2262r5' disabled>5
				<input type=radio name=vip2262r value=6 id='vip2262r6' disabled>6
			</form>
			            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2102 onclick="enable_vip2102(this.checked)" value='yes'>VIP 2102-124973</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2102 value=1 id='vip2102-1' disabled>1 
				<input type=radio name=vip2102 value=2 id='vip2102-2' disabled>2
				<input type=radio name=vip2102 value=3 id='vip2102-3' disabled>3
				<input type=radio name=vip2102 value=4 id='vip2102-4' disabled>4
				<input type=radio name=vip2102 value=5 id='vip2102-5' disabled>5
				<input type=radio name=vip2102 value=6 id='vip2102-6' disabled>6
			</form>
			            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2102r onclick="enable_vip2102r(this.checked)" value='yes'>VIP 2102 (Refub)-205540</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2102r value=1 id='vip2102r1' disabled>1 
				<input type=radio name=vip2102r value=2 id='vip2102r2' disabled>2
				<input type=radio name=vip2102r value=3 id='vip2102r3' disabled>3
				<input type=radio name=vip2102r value=4 id='vip2102r4' disabled>4
				<input type=radio name=vip2102r value=5 id='vip2102r5' disabled>5
				<input type=radio name=vip2102r value=6 id='vip2102r6' disabled>6
			</form>
			            <form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2502 onclick="enable_vip2502(this.checked)" value='yes'>VIP 2502-125338</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2502 value=1 id='vip2502-1' disabled>1 
				<input type=radio name=vip2502 value=2 id='vip2502-2' disabled>2
				<input type=radio name=vip2502 value=3 id='vip2502-3' disabled>3
				<input type=radio name=vip2502 value=4 id='vip2502-4' disabled>4
				<input type=radio name=vip2502 value=5 id='vip2502-5' disabled>5
				<input type=radio name=vip2502 value=6 id='vip2502-6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vip2502r onclick="enable_vip2502r(this.checked)" value='yes'>VIP 2502 (Refub)-205604</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vip2502r value=1 id='vip2502r1' disabled>1 
				<input type=radio name=vip2502r value=2 id='vip2502r2' disabled>2
				<input type=radio name=vip2502r value=3 id='vip2502r3' disabled>3
				<input type=radio name=vip2502r value=4 id='vip2502r4' disabled>4
				<input type=radio name=vip2502r value=5 id='vip2502r5' disabled>5
				<input type=radio name=vip2502r value=6 id='vip2502r6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vap2501 onclick="enable_vap2501(this.checked)" value='yes'>VAP 2501-125310</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vap2501 value=1 id='vap2501-1' disabled>1 
				<input type=radio name=vap2501 value=2 id='vap2501-2' disabled>2
				<input type=radio name=vap2501 value=3 id='vap2501-3' disabled>3
				<input type=radio name=vap2501 value=4 id='vap2501-4' disabled>4
				<input type=radio name=vap2501 value=5 id='vap2501-5' disabled>5
				<input type=radio name=vap2501 value=6 id='vap2501-6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=vap2500 onclick="enable_vap2500(this.checked)" value='yes'>VAP 2500-206320</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=vap2500 value=1 id='vap2500-1' disabled>1 
				<input type=radio name=vap2500 value=2 id='vap2500-2' disabled>2
				<input type=radio name=vap2500 value=3 id='vap2500-3' disabled>3
				<input type=radio name=vap2500 value=4 id='vap2500-4' disabled>4
				<input type=radio name=vap2500 value=5 id='vap2500-5' disabled>5
				<input type=radio name=vap2500 value=6 id='vap2500-6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=ont onclick="enable_ont(this.checked)" value='yes'>ONT-127674</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=ont value=1 id='ont1' disabled>1 
				<input type=radio name=ont value=2 id='ont2' disabled>2
				<input type=radio name=ont value=3 id='ont3' disabled>3
				<input type=radio name=ont value=4 id='ont4' disabled>4
				<input type=radio name=ont value=5 id='ont5' disabled>5
				<input type=radio name=ont value=6 id='ont6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=molex onclick="enable_molex(this.checked)" value='yes'>8FT MOLEX-124081</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=molex value=1 id='molex1' disabled>1 
				<input type=radio name=molex value=2 id='molex2' disabled>2
				<input type=radio name=molex value=3 id='molex3' disabled>3
				<input type=radio name=molex value=4 id='molex4' disabled>4
				<input type=radio name=molex value=5 id='molex5' disabled>5
				<input type=radio name=molex value=6 id='molex6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=battery onclick="enable_battery(this.checked)" value='yes'>BATTERY 12V-121156</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=battery value=1 id='battery1' disabled>1 
				<input type=radio name=battery value=2 id='battery2' disabled>2
				<input type=radio name=battery value=3 id='battery3' disabled>3
				<input type=radio name=battery value=4 id='battery4' disabled>4
				<input type=radio name=battery value=5 id='battery5' disabled>5
				<input type=radio name=battery value=6 id='battery6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=dd onclick="enable_dd(this.checked)" value='yes'>DD-1232G-124072</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=dd value=1 id='dd1' disabled>1 
				<input type=radio name=dd value=2 id='dd2' disabled>2
				<input type=radio name=dd value=3 id='dd3' disabled>3
				<input type=radio name=dd value=4 id='dd4' disabled>4
				<input type=radio name=dd value=5 id='dd5' disabled>5
				<input type=radio name=dd value=6 id='dd6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=tryOnt onclick="enable_tryOnt(this.checked)" value='yes'>TRY ONT-121520</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=tryOnt value=1 id='tryOnt1' disabled>1 
				<input type=radio name=tryOnt value=2 id='tryOnt2' disabled>2
				<input type=radio name=tryOnt value=3 id='tryOnt3' disabled>3
				<input type=radio name=tryOnt value=4 id='tryOnt4' disabled>4
				<input type=radio name=tryOnt value=5 id='tryOnt5' disabled>5
				<input type=radio name=tryOnt value=6 id='tryOnt6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=gt onclick="enable_gt(this.checked)" value='yes'>GT784WN-124250</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=gt value=1 id='gt1' disabled>1 
				<input type=radio name=gt value=2 id='gt2' disabled>2
				<input type=radio name=gt value=3 id='gt3' disabled>3
				<input type=radio name=gt value=4 id='gt4' disabled>4
				<input type=radio name=gt value=5 id='gt5' disabled>5
				<input type=radio name=gt value=6 id='gt6' disabled>6
			</form>
			<form name=f1 method=post action=period-disable-demock.php>
				<input type="checkbox" name=gtr onclick="enable_gtr(this.checked)" value='yes'>GT784WN (Refub)-206420</br>&nbsp;&nbsp;&nbsp;
				<input type=radio name=gtr value=1 id='gtr1' disabled>1 
				<input type=radio name=gtr value=2 id='gtr2' disabled>2
				<input type=radio name=gtr value=3 id='gtr3' disabled>3
				<input type=radio name=gtr value=4 id='gtr4' disabled>4
				<input type=radio name=gtr value=5 id='gtr5' disabled>5
				<input type=radio name=gtr value=6 id='gtr6' disabled>6
			</form>
-->
        
     
	<!-- 
          <hr class="mb-4">
          <input class="btn btn-primary btn-lg btn-block" value="Submit" type="submit">
   -->     
             
	</form>
    </main><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./Starter/jquery-3.3.1.slim.min.js.pobrane" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="./Starter/popper.min.js.pobrane"></script>
    <script src="./Starter/bootstrap.min.js.pobrane"></script>
  
  <!--funkcje do wyboru radio-->
    <script>
      feather.replace()
    </script>
	<script language="JavaScript">
		function enable_wifiE(status)
		{
			status=!status;
			document.getElementById("wifiE1").disabled=status;
			document.getElementById("wifiE2").disabled=status;
			document.getElementById("wifiE3").disabled=status;
			document.getElementById("wifiE4").disabled=status;
			document.getElementById("wifiE5").disabled=status;
			document.getElementById("wifiE6").disabled=status;
		}
				function enable_wifiEr(status)
		{
			status=!status;
			document.getElementById("wifiEr1").disabled=status;
			document.getElementById("wifiEr2").disabled=status;
			document.getElementById("wifiEr3").disabled=status;
			document.getElementById("wifiEr4").disabled=status;
			document.getElementById("wifiEr5").disabled=status;
			document.getElementById("wifiEr6").disabled=status;
		}
				function enable_5168N(status)
		{
			status=!status;
			document.getElementById("5168N1").disabled=status;
			document.getElementById("5168N2").disabled=status;
			document.getElementById("5168N3").disabled=status;
			document.getElementById("5168N4").disabled=status;
			document.getElementById("5168N5").disabled=status;
			document.getElementById("5168N6").disabled=status;
		}
				function enable_5168Nr(status)
		{
			status=!status;
			document.getElementById("5168Nr1").disabled=status;
			document.getElementById("5168Nr2").disabled=status;
			document.getElementById("5168Nr3").disabled=status;
			document.getElementById("5168Nr4").disabled=status;
			document.getElementById("5168Nr5").disabled=status;
			document.getElementById("5168Nr6").disabled=status;
		}
				function enable_3801HG(status)
		{
			status=!status;
			document.getElementById("3801HG1").disabled=status;
			document.getElementById("3801HG2").disabled=status;
			document.getElementById("3801HG3").disabled=status;
			document.getElementById("3801HG4").disabled=status;
			document.getElementById("3801HG5").disabled=status;
			document.getElementById("3801HG6").disabled=status;
		}
				function enable_HH3000(status)
		{
			status=!status;
			document.getElementById("HH3000-1").disabled=status;
			document.getElementById("HH3000-2").disabled=status;
			document.getElementById("HH3000-3").disabled=status;
			document.getElementById("HH3000-4").disabled=status;
			document.getElementById("HH3000-5").disabled=status;
			document.getElementById("HH3000-6").disabled=status;
		}
				function enable_vip2202(status)
		{
			status=!status;
			document.getElementById("vip2202-1").disabled=status;
			document.getElementById("vip2202-2").disabled=status;
			document.getElementById("vip2202-3").disabled=status;
			document.getElementById("vip2202-4").disabled=status;
			document.getElementById("vip2202-5").disabled=status;
			document.getElementById("vip2202-6").disabled=status;
		}
				function enable_vip2262(status)
		{
			status=!status;
			document.getElementById("vip2262-1").disabled=status;
			document.getElementById("vip2262-2").disabled=status;
			document.getElementById("vip2262-3").disabled=status;
			document.getElementById("vip2262-4").disabled=status;
			document.getElementById("vip2262-5").disabled=status;
			document.getElementById("vip2262-6").disabled=status;
		}
				function enable_vip2262r(status)
		{
			status=!status;
			document.getElementById("vip2262r1").disabled=status;
			document.getElementById("vip2262r2").disabled=status;
			document.getElementById("vip2262r3").disabled=status;
			document.getElementById("vip2262r4").disabled=status;
			document.getElementById("vip2262r5").disabled=status;
			document.getElementById("vip2262r6").disabled=status;
		}
				function enable_vip2102(status)
		{
			status=!status;
			document.getElementById("vip2102-1").disabled=status;
			document.getElementById("vip2102-2").disabled=status;
			document.getElementById("vip2102-3").disabled=status;
			document.getElementById("vip2102-4").disabled=status;
			document.getElementById("vip2102-5").disabled=status;
			document.getElementById("vip2102-6").disabled=status;
		}
				function enable_vip2102r(status)
		{
			status=!status;
			document.getElementById("vip2102r1").disabled=status;
			document.getElementById("vip2102r2").disabled=status;
			document.getElementById("vip2102r3").disabled=status;
			document.getElementById("vip2102r4").disabled=status;
			document.getElementById("vip2102r5").disabled=status;
			document.getElementById("vip2102r6").disabled=status;
		}
				function enable_vip2502(status)
		{
			status=!status;
			document.getElementById("vip2502-1").disabled=status;
			document.getElementById("vip2502-2").disabled=status;
			document.getElementById("vip2502-3").disabled=status;
			document.getElementById("vip2502-4").disabled=status;
			document.getElementById("vip2502-5").disabled=status;
			document.getElementById("vip2502-6").disabled=status;
		}
				function enable_vip2502r(status)
		{
			status=!status;
			document.getElementById("vip2502r1").disabled=status;
			document.getElementById("vip2502r2").disabled=status;
			document.getElementById("vip2502r3").disabled=status;
			document.getElementById("vip2502r4").disabled=status;
			document.getElementById("vip2502r5").disabled=status;
			document.getElementById("vip2502r6").disabled=status;
		}
				function enable_vap2501(status)
		{
			status=!status;
			document.getElementById("vap2501-1").disabled=status;
			document.getElementById("vap2501-2").disabled=status;
			document.getElementById("vap2501-3").disabled=status;
			document.getElementById("vap2501-4").disabled=status;
			document.getElementById("vap2501-5").disabled=status;
			document.getElementById("vap2501-6").disabled=status;
		}
				function enable_vap2500(status)
		{
			status=!status;
			document.getElementById("vap2500-1").disabled=status;
			document.getElementById("vap2500-2").disabled=status;
			document.getElementById("vap2500-3").disabled=status;
			document.getElementById("vap2500-4").disabled=status;
			document.getElementById("vap2500-5").disabled=status;
			document.getElementById("vap2500-6").disabled=status;
		}
				function enable_ont(status)
		{
			status=!status;
			document.getElementById("ont1").disabled=status;
			document.getElementById("ont2").disabled=status;
			document.getElementById("ont3").disabled=status;
			document.getElementById("ont4").disabled=status;
			document.getElementById("ont5").disabled=status;
			document.getElementById("ont6").disabled=status;
		}
				function enable_molex(status)
		{
			status=!status;
			document.getElementById("molex1").disabled=status;
			document.getElementById("molex2").disabled=status;
			document.getElementById("molex3").disabled=status;
			document.getElementById("molex4").disabled=status;
			document.getElementById("molex5").disabled=status;
			document.getElementById("molex6").disabled=status;
		}
				function enable_battery(status)
		{
			status=!status;
			document.getElementById("battery1").disabled=status;
			document.getElementById("battery2").disabled=status;
			document.getElementById("battery3").disabled=status;
			document.getElementById("battery4").disabled=status;
			document.getElementById("battery5").disabled=status;
			document.getElementById("battery6").disabled=status;
		}
				function enable_dd(status)
		{
			status=!status;
			document.getElementById("dd1").disabled=status;
			document.getElementById("dd2").disabled=status;
			document.getElementById("dd3").disabled=status;
			document.getElementById("dd4").disabled=status;
			document.getElementById("dd5").disabled=status;
			document.getElementById("dd6").disabled=status;
		}
				function enable_tryOnt(status)
		{
			status=!status;
			document.getElementById("tryOnt1").disabled=status;
			document.getElementById("tryOnt2").disabled=status;
			document.getElementById("tryOnt3").disabled=status;
			document.getElementById("tryOnt4").disabled=status;
			document.getElementById("tryOnt5").disabled=status;
			document.getElementById("tryOnt6").disabled=status;
		}
				function enable_gt(status)
		{
			status=!status;
			document.getElementById("gt1").disabled=status;
			document.getElementById("gt2").disabled=status;
			document.getElementById("gt3").disabled=status;
			document.getElementById("gt4").disabled=status;
			document.getElementById("gt5").disabled=status;
			document.getElementById("gt6").disabled=status;
		}
						function enable_gtr(status)
		{
			status=!status;
			document.getElementById("gtr1").disabled=status;
			document.getElementById("gtr2").disabled=status;
			document.getElementById("gtr3").disabled=status;
			document.getElementById("gtr4").disabled=status;
			document.getElementById("gtr5").disabled=status;
			document.getElementById("gtr6").disabled=status;
		}
						function enable_cables(status)
		{
			status=!status;
			document.getElementById("cables1").disabled=status;
			document.getElementById("cables2").disabled=status;
			document.getElementById("cables3").disabled=status;
			document.getElementById("cables4").disabled=status;
			document.getElementById("cables5").disabled=status;
			document.getElementById("cables6").disabled=status;
		}
	</script>

</body></html>