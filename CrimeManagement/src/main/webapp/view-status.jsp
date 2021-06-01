<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<!-- Chrome, Firefox OS and Opera -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Complaint Status</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- CSS Begin-->
<style>
#nav a {
	float: left;
	background-color: inherit;
	text-align: center;
	padding-top: 1.33vh;
	padding-bottom: 1.33vh;
	text-decoration: none;
	font-size: 2.12vh;
	color: white;
}

#nav a:hover {
	background-color: rgb(0, 40, 230);
}

#nav a.active {
	background-color: rgb(0, 0, 200);
}

.dropbtn {
	background-color: rgb(0, 51, 153);
	color: white;
	padding-top: 1.33vh;
	padding-bottom: 1.33vh;
	text-align: center;
	font-size: 2.12vh;
	border: none;
}

.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgb(0, 51, 153);
	z-index: 1;
}

.dropdown-content a {
	color: rgb(0, 51, 153);
	padding: 0px 0.5px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: rgb(0, 40, 230);
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: rgb(0, 40, 230);
}

.col-form-label, .form-control{
	margin-top:-8px;
}

</style>
</head>


<!-------------------------------- Header --------------------------------------->
<header>
	<div id="header"
		style="height: 11.94vh; background-color: rgb(249, 249, 249); text-align: center; top: 50%;">

		<div id="logo"
			style="position: absolute; margin-left: 1.95vw; height: 9.28vh; width: 10.42vw; margin-top: 1.33vh; margin-bottom: 1.33vh; background-color: inherit;">

			<!-- Logo Image to be added -- -->
			<img src="./Images/Logo.jpeg" style="height: 5em; width: 7em;">

		</div>

		<span
			style="position: absolute; color: rgb(237, 28, 36); font-weight: bold; font-size: 4.23vw; left: 21.48vw; top: .06vh; z-index: 1;">ONLINE
			CRIME MANAGEMENT</span>

	</div>


	<!-------------------------------- Navigation Bar --------------------------------------->
	<div
		style="background-color: rgb(0, 51, 153); height: 5.31vh; width: 100%; z-index: 1"
		id="nav">
		<a href="/PodMock2/homepage2.html" style="width: 12.5vw;">HOME</a> <a
			href="newsfinal2.html" style="width: 12.5vw;">NEWS</a> <a
			href="mostwanted2.html" style="width: 15.43vw;">MOST WANTED</a> <a
			href="missingpersons2.html" style="width: 15.43vw;">MISSING
			PERSONS</a> <a href="unidentifiedbodies2.html" style="width: 17.38vw;">UNIDENTIFIED
			BODIES</a> <a
			style="width: 12.83vw;">CRIME TYPES</a> <a
			href="/CrimeManagement/login.jsp" style="width: 13.83vw;">LOGOUT</a>


	</div>



</header>
<!-------------------------------- Footer --------------------------------------->
<footer
		style="background-color: rgb(0, 51, 153); height: 4.68vh; position: absolute; top: 94.16vh; width: 99%; padding-top: 1.33vh;">
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 11.72vw; display: inline;">
			<i>Disclaimer </i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Privacy Policy </i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Terms of use</i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Important Sites</i>
		</p>

	</footer>
<!----------------------------Left HelpLine Pannel------------------------------------------>
<div class="helpline" style="width: 15%">
	<div id="icon"
		style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height: 24.1vw; width: 9.95vw; margin-top: 80px; background-color: rgb(0, 51, 153); color: white;">
		<img src="./Images/telephone.png"
			style="height: 6.28vh; width: 2.42vw; z-index: 1"><span
			style="position: absolute; margin-top: 8px;">HELPLINE </span> <br>
		<br>
		<p>
			Report A Crime: <br> 100
		</p>
		<p>
			Women Helpline: <br> 1091
		</p>
		<p>
			Child Helpline: <br> 1098
		</p>
		<p>
			Anti Ragging: <br> 1800-180-5522
		</p>
		<p>
			Ambulance: <br>108
		</p>
		<p>
			Railway Protection: <br> 1322
		</p>



	</div>
</div>

<!----------------------------Left HelpLine Pannel--END-------------------------------->


<!----------------------------Right Covid HelpLine Panel---------------------------------->

<a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf"
	target="_blank"> <img src="./Images/telephone.png"
	style="width: inherit; height: 33px; padding-left: 0px; position: absolute; margin-left: -2vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
	<div id="covid-helpline"
		style="padding-top: 3vw; position: absolute; margin-left: 97.9vw; border: 1px black solid; border-radius: 12px; height: 21.3vw; width: 2.0vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

		<span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
		</span>

	</div>

</a>

<!----------------------------Right Covid HelpLine Panel END---------------------------------->
<br>

<div class="container" style="width: 110vh; background-color: ghostwhite; margin-top:10px;">
	<h3
		style="background-color: rgb(0, 51, 153); color: ghostwhite; height: 5.31vh; width: 100%; text-align: center; padding-top: 0.6vw; font-size: large;">Complaint Id: <%= (Integer) session.getAttribute("cID") %>
	</h3>
	<br>
	
        <ul class="list-group">
            <li class="list-group-item">Name - <%=(String) session.getAttribute("nam") %> </li>
            <li class="list-group-item">Date of Filing Complaint - <%= (String) session.getAttribute("time_of_registeration") %> </li>
            <li class="list-group-item">Type of Crime - <%= (String) session.getAttribute("type_of_complaint") %> </li>
            <li class="list-group-item">Place of Occurance - <%= (String) session.getAttribute("place_of_occurance") %> </li>
         
            <li class="list-group-item">Complaint Description - <%= (String) session.getAttribute("description") %> </li>
            <li class="list-group-item">Contact Number - <%= (String) session.getAttribute("contact") %></li>
            <li class="list-group-item">Complaint Status - <%= (String) session.getAttribute("status_of_complaint") %></li>
            <li style="height: 10vh;" class="list-group-item">Additional Information - <%= (String) session.getAttribute("additionalInfo") %> </li>
            <li class="list-group-item">Last Updated On - <%= (String) session.getAttribute("last_update_time") %></li>
          </ul>
    
   
  

	
</div>

</body>
</html>



