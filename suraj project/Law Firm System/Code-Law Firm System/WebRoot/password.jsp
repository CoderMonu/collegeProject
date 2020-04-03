
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>



<html>
	<head>
		<style type="text/css">
.Title {
	font-family: Verdana;
	font-weight: bold;
	font-size: 8pt
}

.Title1 {
	font-family: Verdana;
	font-weight: bold;
	font-size: 8pt
}
</style>


		<script type="text/javascript">
function validator() {

	document.getElementById("pass").innerHTML = "";
	document.getElementById("change").innerHTML = "";

	if (document.getElementById("newpass").value == "") {

		document.getElementById("pass").innerHTML = "Plz Enter Password";
		return false;
	} else if (document.getElementById("new").value == "") {

		document.getElementById("pass").innerHTML = "Plz Enter New Password";
		return false;
	}

}
</script>

		<script type="text/javascript">
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


	</head>

	  
 <body background="./images/111.jpg">

		<jsp:include page="Header.jsp"></jsp:include>

	<br />
		<br />
		<br />
		<br />
		<center>
			<td align=right>
				<font color=blue><b>  </b> </font>
			</td>
		</center>
		<br />
		<br />

		<center>
			<span class=Title><h3>
					<font color="blue">Change Password Form</font>
				</h3> </span>
		</center>



		<form id="form3" name="newedesignation" method="post"
			action="<%=request.getContextPath() + "/PasswordAction"%>"
			onsubmit="return validator();">

			<table border="0" align="center" background="./images/g1.jpeg">
				<tr>
					<td>
						<span class=Title> User Name </span>
					</td>
					<td>
						<input type="text" name="username"/>
					</td>
				</tr>
				<tr>
					<td>
						<span class=Title> Old Password </span>
					</td>
					<td>
						<input type="password" name="oldpassword" id="newpass" />
						<div id="pass"></div>
					</td>
				</tr>
				<tr>
					<td>
						<span class=Title> New Password </span>
					</td>
					<td>
						<input type="password" name="newpassword" id="new" />
						<div id="change"></div>
					</td>
				</tr>
				<tr>
					<td>
						<span class=Title> Conform  Password </span>
					</td>
					<td>
						<input type="password" name="cpassword" id="new1" />
						<div id="change"></div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="center">
							<strong> <input type="submit" name="Submit"
									value="Change" /> </strong>
						</div>
					</td>
				</tr>
			</table>
		</form>

		<br />
		<jsp:include page="Footer.jsp"></jsp:include>
	</body>
</html>
