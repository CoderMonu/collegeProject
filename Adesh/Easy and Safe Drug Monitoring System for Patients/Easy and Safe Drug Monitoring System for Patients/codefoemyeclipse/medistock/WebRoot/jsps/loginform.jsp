<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'articles.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


		<title>My JSP 'articles.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->




		<script language="JavaScript"
			src="<%=request.getContextPath() + "/js/gen_validatorv31.js"%>"
			type="text/javascript">
		</script>


		<script type="text/javascript">
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


	</head>
	<body onload="javascript:disableBackButton()" bgcolor="">

		<jsp:include page="header.jsp"></jsp:include>
		<br/><br/><strong><h3 align="center">
													<font color="white">Login Form
													</font>
												</h3> </strong>
					<form action="<%=request.getContextPath() + "/LoginAction"%>"
						method=post name="login">
						<table border="0" align="center" bgcolor="" height="50%"
							width='40%'>
							<tr>
								<td height="120" align="right"></td>
								<td>
									<table align="center">
										<tr align="center">
											
										</tr>
										<tr bgcolor="">
											<td>
												<span class="Title"><font color="blue">UserID</font>
												</span>
											</td>
											<td>
												<input type="text" name="username">
											</td>
										</tr>
										<tr bgcolor="">
											<td>
												<span class="Title"><font color="blue">Password</font>
												</span>
											</td>
											<td>
												<input type="password" name="password">
											</td>
										</tr>
									</table>
									<br />
									<table align="center">
										<tr>
											<td colspan="2">

												<input type="submit" name="Submit" value="Sign In">
												&nbsp;
												
												<input name="Input2" type="reset" value="Clear">
											</td>
										</tr>



										<tr>

											<td align="center">
												<a href="./jsps/recoverpassword.jsp"><strong><font
														color="">Forgot Password </font> </strong> </a>


											</td>
										</tr>
										<tr align="center">
											<td align="center">
												<a href="./jsps/registration.jsp"><strong><font
														color="">New Register Here </font> </strong> </a>


											</td>
										</tr>
									</table>
						</table>


					</form>
					<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("login");

frmvalidator.addValidation("username", "req", "Login Name is required");
frmvalidator
		.addValidation("username", "alpha", "Login Name is Only Characters");
frmvalidator.addValidation("password", "req", "Password is required");
frmvalidator.addValidation("password", "alpha", "Password is Only Characters");
</script>
					<br />
					<br />
<jsp:include page="footer.jsp"></jsp:include>
	
	</body>
</html>