<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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

	<body bgcolor="BDB76B" background="./images/111.jpg"onload="javascript:disableBackButton()">

<%
		String s2 = (String) request.getAttribute("status");if(s2!=null){%>
		<center>
		<td align=center><font color=red><b><%=s2 %> <%} %></b></font></td></center>
		<br/><br/>
    
     <center> 
	<img height="252" width="981" border="1" align="top" src="./images/33.jpg"> 
	<b><font size="100" color="#da0d00"></font> 
	</b> 
 
	
<jsp:include page="generaloptions.jsp"></jsp:include>





 
			
   








		<form action="<%=request.getContextPath() + "/LoginAction"%>"
			method=post name="login" align="center">
			<h2 align="center">
			
								User Login
										</h2>
			<center>
                    <table bgcolor="" border="2" align="center" bgcolor="white" width="325" height="120">  
								<tr>
									<td align='right'>
									<span class="Title">USERNAME :</span>
									</td>
									<td>
										<font face="Arialblack"><input type="text"
												name="username">
										</font>
									</td>
								</tr>
								<tr>
									<td align='right'>
										<span class="Title">PASSWORD:</span>
									</td>
									<td>
										<input type="password" name="password">
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div align="center" class="style11">
											<input type="submit" name="Submit" value="Login">
											&nbsp;
											<!--<input name="Input2" type="reset" value="Clear">
											
										--></div>
									</td>
									</tr>
									<tr>
									<td>
							<div align="center">
							<a href="Registerform.jsp">New User Registration</a><!--<strong><font
										color="#000000">New User Registration</font> </strong> </a>
							--></div>
						</td>
						
						</tr>
						
						<tr>
					
						
								</tr>
							</table>
						</center>
		
		</form>
		<jsp:include page="Footer.jsp"></jsp:include>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
 var frmvalidator = new Validator("login");

 frmvalidator.addValidation("username", "req", "Login Name is required");
 frmvalidator.addValidation("password", "req", "Password is required");
</script>
		
    
    
    
    
    
    
    
    </center>
    
  </body>
  
  
</html>
