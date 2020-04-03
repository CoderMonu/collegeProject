
<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
	<head>

		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
			type="text/javascript">
</script>
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
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


	</head>

	<body onload="javascript:disableBackButton()">
		<jsp:include page="Header.jsp"></jsp:include>
		<center>
			<font color='red'><h2>
					WELCOME
				</h2> </font>
		</center>
		<form action="<%=request.getContextPath() + "/LoginAction"%>"
			method=post name="login">

			<center>
				<table border='1'>
					<tr>
						<td>
							<img src="./images/TextWaterMark_head.jpg" height="200"
								width='200' />
						</td>
						<td bgcolor="skyblue">
							<table>
								<tr>
									<td align='center' colspan='2'>
										<font color='red' size='5'><b> Login Form</b> </font>
									</td>

								</tr>
								<tr></tr>
								<tr>
									<td align='right'>
										<span class="Title">UserID :</span>
									</td>
									<td>
										<input type="text" name="username" size=20 />
									</td>
								</tr>
								<tr>
									<td align='right'>
										<span class="Title">Password :</span>
									</td>
									<td>
										<input type="password" name="password" size=22 />
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div align="center" class="style11">
											<input type="submit" name="Submit" value="Sign In">
											&nbsp;
											<input name="Input2" type="reset" value="Clear">
										</div>
									</td>
								</tr>
								<tr>
									<td align="left">
										<a href="./Recoverpassword.jsp">Forgot Password....? </a>

									</td>
									<td align="right">
										<a href="./RegistrationForm.jsp">New Registration.....? </a>
									</td>
								</tr>
							</table>
						</td>
						<td>
							<img src="./images/ImageWaterMark_riight.jpg" height="200"
								width='200' />
						</td>
					</tr>
				</table>
			</center>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("login");

frmvalidator.addValidation("username", "req", "Login Name is required");
frmvalidator.addValidation("password", "req", "Password is required");
</script>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br><jsp:include page="Footer.jsp"></jsp:include>
	</body>
</html>