<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Validation</title>



<!-- BEGIN INCLUDE HEADER AND FOOTER -->
<script src="js/jquery-1.10.2.js"></script>


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

.required {
	color: red;
}

button {
    background-color: #04AA6D;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    height: fit-content;
    width: fit-content;
    font-size: medium;
  }
  button:hover {
    opacity: 0.9;
  }
 
  h1{
      text-align: center;
      color: blue;
      padding-top: 30px;
      padding-bottom: 10px;
  }
  td{
      column-gap:20px;
      padding: 12px;
      width:150px;
  }
 
  input{
    float: right;
}
label{
    float:left;
    font-weight: bold;
}

#inner-table::-webkit-scrollbar { width: 0 !important }

 

</style>
</head>
<body style="overflow: hidden; background-color: white;">
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

			<a href="/CrimeManagement/login.jsp" style="width: 12.83vw;">LOGOUT</a>


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


	<!----------------------------Right Covid HelpLine Pannel---------------------------------->

	<a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf"
		target="_blank"> <img src="./Images/telephone.png"
		style="width: inherit; height: 40px; padding-left: 0px; position: absolute; margin-left: 96.5vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
		<div id="covid-helpline"
			style="padding-top: 3vw; position: absolute; margin-left: 96.5vw; border: 1px black solid; border-radius: 12px; height: 17.3vw; width: 1.68vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

			<span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
			</span>

		</div>

	</a>

	<!----------------------------Right Covid HelpLine Pannel END---------------------------------->



	<!---------------- USER INTERFACE ------------------>

	<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "crimemanagement";
String userId = "root";
String password = "qwerrewq12";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
PreparedStatement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>User Records</strong></font></h2>
<table align="center" width="900px" cellspacing="0" cellpadding="0" border="0">
       <tr>
       <td>
<div style="overflow-y:scroll; max-height:480px; margin-top:-23px;" id="inner-table">
<table cellpadding="0" cellspacing="0" border="1">
<tr style="background-color:lightgrey;color:black">
            <td><b>Sr No.</b></td>
            <td><b>Name</b></td>
            <td><b>Email</b></td>
            <td><b>Mobile Number</b></td>
            <td><b>Id Number </b></td>
            <td><b>ID card type </b></td>
            <td><b>Status</b></td>
         </tr>

<%
try{ 

connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.prepareStatement("SELECT * FROM user where status=?");
statement.setString(1, "Pending");

int count = 0;
resultSet = statement.executeQuery();
while(resultSet.next()){
		count=count+1;
%>
<tr bgcolor="white">

<td><%=count%></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("id_card_no") %></td>
<td><%=resultSet.getString("type_of_card") %></td>
<td><a href="#" class="approve" id=<%=resultSet.getString("id_card_no") %> name=<%=resultSet.getString("id_card_no") %> style="padding-right:30px; color:green">&#10004</a>
<a href="#" class="reject" id=<%=resultSet.getString("id_card_no") %> name=<%=resultSet.getString("id_card_no") %> style="color:red">&#10008</a></td>

</tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</td>
</tr>
</table>

<form method="post" id="form"  style="display:none">

<input type="text" id="clickid" name="clickid" placeholder="Enter login Id" value="0">
		
</form>

	<!-------- Footer Begins ------->

	<!-------- Footer Ends ------->
<script>
$('a.approve').click(function(){
	var id = $(this).attr('id');
	//session1.setAttribute("click-id", id);
	//session1.setAttribute("click-id",'id');
  //  alert( id );
    document.getElementById("clickid").value = id;
    document.getElementById("form").action = "ApproveUser";
   // document.getElementById("form").action = "ComplaintView"+id;
    document.getElementById("form").submit();
    document.getElementById("form").action = "";
});
$('a.reject').click(function(){
	var id = $(this).attr('id');
	//session1.setAttribute("click-id", id);
	//session1.setAttribute("click-id",'id');
   // alert( id );
    document.getElementById("clickid").value = id;
    document.getElementById("form").action = "RejectUser";
   // document.getElementById("form").action = "ComplaintView"+id;
    document.getElementById("form").submit();
});
</script>

</body>


</html>