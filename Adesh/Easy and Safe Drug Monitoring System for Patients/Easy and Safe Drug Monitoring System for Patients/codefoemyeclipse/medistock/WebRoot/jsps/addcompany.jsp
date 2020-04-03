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

		<title>My JSP 'addcompany.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="<%=request.getContextPath()+"/js/ts_picker.js"%>"></script>
<script language="JavaScript1.1" src="js/pass.js">


</script> <script type="text/javascript" src="<%=request.getContextPath()+"/js/image.js"%>"> </script>
 <script type="text/javascript" src="<%=request.getContextPath()+"/js/general.js"%>"> </script>
 <script type="text/javascript" src="<%=request.getContextPath()+"/js/adi.js"%>"> </script>
 <script type="text/javascript" src="<%=request.getContextPath()+"/js/form_validation.js"%>"> </script>

		<script language="JavaScript" src="images/javascripts.js"></script>
		<script language="JavaScript" src="images/pop-closeup.js"></script>
	</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<h2 align="center">
			<font color="#4B0082">ADD COMPANY</font>
		</h2>
		<form action="AddCompanyAction" name="addcompany">
			<table align="center">
				<tr>
					<td>
						<font color="">CompanyName:</font>
					</td>
					<td>
						<input type="text" name="companyname" />
					</td>
				</tr>
				<tr>
					<td>
						<font color="">Address:</font>
					</td>
					<td>
						<textarea name="address"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<font color="">PhoneNumber:</font>
					</td>
					<td>
						<input type="text" name="phno" />
					</td>
				</tr>
				<tr>
					<td>
						<font color="">EmailID:</font>
					</td>
					<td>
						<input type="text" name="email" />
					</td>
				</tr>
			</table>
			<center>
				<input type="submit" value="ADDCOMPANY">
				<input type="reset" value="CLEAR">
			</center>
		</form>
				<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("addcompany");
  
    
  frmvalidator.addValidation("companyname","req","Please enter your Company Name");
  frmvalidator.addValidation("companyname","maxlen=20",	"Max length for Company Name is 50");
  frmvalidator.addValidation("companyname","alpha","Medicine Name Alphabetic chars only");
  frmvalidator.addValidation("address","req","Please enter Address");
   
   frmvalidator.addValidation("phoneNo","req");
  
  frmvalidator.addValidation("phno","maxlen=15");
  frmvalidator.addValidation("phno","numeric");
 frmvalidator.addValidation("phno","Phone");
 
  
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
   
    
   
  
  
  
   
    
 </script>
<br/><br>
<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
