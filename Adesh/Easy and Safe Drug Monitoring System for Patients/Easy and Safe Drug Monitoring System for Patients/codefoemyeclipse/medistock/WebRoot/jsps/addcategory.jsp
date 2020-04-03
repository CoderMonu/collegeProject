<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<title>My JSP 'addcategory.jsp' starting page</title>

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
			<font color="white">ADD CATEGORY</font>
		</h2>
		<form action="AddCategoryAction" name="addcategory">
			<table align="center">
			<tr><td>CompanyName:</td>
			<td><select name="companyid" id="select">
							
									<option>
										--SELECT--
									</option>
									<c:if test="${not empty categoryinfo}">
										<c:forEach var="categoryinfo" items="${categoryinfo}">
											<option value="${categoryinfo.companyid}">
												${categoryinfo.companyname}
											</option>
										</c:forEach>
									</c:if>
								
						</select>
			</td></tr>
				<tr>
					<td>
						CategoryName:
					</td>
					<td>
						<input type="text" name="categoryname" />
					</td>
				</tr>
				<tr>
					<td>
						CategoryPhoto:
					</td>
					<td>
						<input type="file" name="categoryphoto" />
					</td>
				</tr>
			</table>
			<center>
				<input type="submit" value="ADD">
				<input type="reset" value="CLEAR">
			</center>
		</form>
				<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("addcategory");
  frmvalidator.addValidation("companyname", "req", "Please select Company Name ");
    
  frmvalidator.addValidation("categoryname","req","Please enter your Category Name");
  frmvalidator.addValidation("categoryname","maxlen=20",	"Max length for Category Name is 50");
  frmvalidator.addValidation("categoryname","alpha"," Category Name Alphabetic chars only");
  
   frmvalidator.addValidation("categoryphoto","req","Please Load Your Photo"); 
  
  
    
 </script>
<br/><br>
<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
