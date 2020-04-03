<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'ImageWaterMark.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script language="JavaScript" src="scripts/gen_validatorv31.js"
			type="text/javascript">
</script>
		<script language="JavaScript" type="text/javascript"
			src="scripts/ts_picker.js">
</script>
		<script language="JavaScript1.1" src="scripts/pass.js">
</script>
		<script type="text/javascript" src="scripts/image.js">
</script>
		<script type="text/javascript" src="scripts/general.js">
</script>
		<script type="text/javascript" src="scripts/adi.js">
</script>
		<script type="text/javascript" src="scripts/form_validation.js">
</script>

		<script language="JavaScript" src="images/javascripts.js">
</script>
		<script language="JavaScript" src="images/pop-closeup.js">
</script>
	</head>


	<body background="page_bg.gif">
		<jsp:include page="Header.jsp"></jsp:include>
		<br>
		<br>
		<br>

		<center>
			<b><h3 onmouseover="style.color='black'"
					onmouseout="style.color='red'">
					FILE ENCRYPTION
					<br>
			</b>
			</h3>

			<%
				if (((String) request.getAttribute("filepath")) != null) {
			%>
			<a href="<%=(String) request.getAttribute("filepath")%>"><b>FileDownload</b></a>
				<%
					}
				%>
			
		</center>
		<form action="./FileEncriptionAction" name='fileenccyption'>
			<center>
				<table>
					<tr>
						<td>
							<b>Select File To be Encryption:</b>
						</td>
						<td>
							<input type="file" name="fileencryption" />
						</td>
					</tr>
					<tr>
						<td align='right'>
							<b>Enter Key :</b>
						</td>
						<td>
							<input type="password" name="key" />
						</td>
					</tr>

					<tr>
						<td colspan='2' align=center>
							<input type="submit" value="SUBMIT" onclick="myKey()" />
						</td>
					</tr>
				</table>
		</form>

		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("fileenccyption");
frmvalidator.addValidation("fileencryption", "req", "Please Select File");
frmvalidator.addValidation("key", "req", "Please Enter Key");
</script>
	</body>
</html>
