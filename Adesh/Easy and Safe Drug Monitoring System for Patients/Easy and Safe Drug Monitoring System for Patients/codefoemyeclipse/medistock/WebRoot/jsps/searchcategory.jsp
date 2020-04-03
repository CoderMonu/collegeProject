<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@page import="com.pharma.daoimpl.MedicalInfoDAOImpl"%>
<%@page import="com.pharma.formbeans.MedicalInfoFormbean"%>
<%@page import="com.pharma.bean.MedicalInfoTo"%>
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

		<title>My JSP 'searchcategory.jsp' starting page</title>

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
		<script type="text/javascript" src="js/project.js">
</script>

	</head>

	<body>

		<jsp:include page="header.jsp"></jsp:include>


		<center>
			<h3>
				Medical Category  Details
			</h3>
		</center>

		<form action="ViewCategoryNamesAction" name="category">
			<table align="center" >
				<tr>
					<td>
						CategoryName:
					</td>
					<td>
						<input type="text" name="categoryname">
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="Find" />
					</td>
				</tr>
			</table>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("category");
  
  frmvalidator.addValidation("categoryname","req","Please enter Category name");

   
    
 </script>	
	</body>
</html>
