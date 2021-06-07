<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Complaint Registered</title>
<link rel="stylesheet" href="style/complaintsuccess.css">


<!-- BEGIN INCLUDE HEADER AND FOOTER -->



<!-- END INCLUDE HEADER AND FOOTER -->
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
	padding: 0px 0.03vw;
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

#btn:disabled {
  cursor: not-allowed;
  pointer-events: all !important;
}

</style>
<body style=" background-color: white;">
	<!-------------------------------- Header --------------------------------------->
	<header>
		<div id="header"
			style="height: 11.94vh; background-color: rgb(249, 249, 249); text-align: center; top: 50%;">

			<div id="logo"
				style="position: absolute; margin-left: 1.95vw; height: 9.28vh; width: 10.42vw; margin-top: 1.33vh; margin-bottom: 1.33vh; background-color: inherit;">

				<!-- Logo Image to be added -- -->
				<img src="./Images/Logo.jpeg" style="height: 4em; width: 5em;">

			</div>

			<span
				style="position: absolute; color: rgb(237, 28, 36); font-weight: bold; font-size: 4.23vw; left: 21.48vw; top: 1.86vh; z-index: 1;">ONLINE
				CRIME MANAGEMENT</span>

		</div>


		<!-------------------------------- Navigation Bar --------------------------------------->
		<div
			style="background-color: rgb(0, 51, 153); height: 5.31vh; width: 100%; z-index: 1"
			id="nav">
			<a href="homepage2.html" style="width: 12.5vw;">HOME</a>
			<a href="html/newsfinal2.html" style="width: 12.5vw;">NEWS</a> <a
				href="html/mostwanted2.html" style="width: 15.43vw;">MOST WANTED</a>
			<a href="html/missingpersons2.html" style="width: 15.43vw;">MISSING
				PERSONS</a> <a href="html/unidentifiedbodies2.html"
				style="width: 17.38vw;">UNIDENTIFIED BODIES</a> <a
				href="html/crimetypes2.html" style="width: 12.83vw;">CRIME TYPES</a>

			<div class="dropdown" style="width: 10.83vw;">
				<a href="homepage.html" style="width: 12.83vw;">LOGOUT</a>
				
				
			</div>


		</div>
	</header>
	<!-------------------------------- Footer --------------------------------------->
	<footer
		style="background-color: rgb(0, 51, 153); height: 4.38vh; position: absolute; top: 94.16vh; width: 99%; padding-top: 1.33vh;">
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
			style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height: 27.1vw; width: 9.95vw; margin-top: 80px; background-color: rgb(0, 51, 153); color: white;">
			<img src="./Images/telephone.png"
				style="height: 4.28vh; width: 2.42vw; z-index: 1"><span
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
		style="width: inherit; height: 40px; padding-left: 0px; position: absolute; margin-left: 96.5vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
		<div id="covid-helpline"
			style="padding-top: 3vw; position: absolute; margin-left: 96.5vw; border: 1px black solid; border-radius: 12px; height: 17.3vw; width: 1.68vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

			<span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
			</span>

		</div>

	</a>

	<!----------------------------Right Covid HelpLine Panel END---------------------------------->
		
		<h2 style="font-style:italic;"> Complaint Registered Successfully !! </h2>
		<table align="center">
		
		<tr><td style="font-weight:bold; font-style:italic;padding-bottom:20px;">Complaint Id: <%= (Integer) session.getAttribute("complaint-id") %> </td></tr>
		<tr><td style="font-weight:bold; font-style:italic;padding-bottom:20px;">Complaint Type: <%= (String) session.getAttribute("complaint-type") %> </td></tr>
		<tr><td style="font-weight:bold; font-style:italic;padding-bottom:20px;">Address: <%= (String) session.getAttribute("complaint-address") %></td></tr>
		<tr><td style="font-weight:bold; font-style:italic;padding-bottom:30px;">Description: <%= (String) session.getAttribute("complaint-description") %></td></tr>
		<tr><td align="center" style="font-weight:bold; font-style:italic; font-size:17px;padding-bottom:10px;"><a href="/CrimeManagement/complaint.jsp" style="color:blue">Register another complaint</a></td></tr>
		<tr><td align="center" style="font-weight:bold; font-style:italic; font-size:17px;padding-bottom:10px;"><a href="/CrimeManagement/track-complaint.jsp" style="color:blue">Track Complaint</a></td></tr>
	</table>
</body>
</html>
