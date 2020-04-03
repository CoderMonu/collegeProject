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
			<font color="white">Add Medicine Price and Quantity </font>
		</h2>
		<form action="AddProductQuantity" name="addproduct">
			<table align="center">
			<tr><td>MedicineName:</td>
			<td>
							<select name="medicinename" id="select">
				<c:choose>
				 <c:when test="${requestScope.medicinename ne null}">
				   <option value="${requestScope.medicinename}">${requestScope.medicinename}</option>
				 </c:when>
				 <c:otherwise>
									<option>
										--SELECT--
									</option>
									<c:if test="${not empty productinfo}">
										<c:forEach var="productinfo" items="${productinfo}">
											<option value="${productinfo.productid}">
												${productinfo.medicinename}
											</option>
										</c:forEach>
									</c:if>
									 </c:otherwise>
				</c:choose>	
						</select>
			</td></tr>
				<tr>
					<td>
						AvailabeQuantity:
					</td>
					<td>
						<input type="text" name="quantity" />Tablets
					</td>
				</tr>
				<tr>
					<td>
						Cost:
					</td>
					<td>
						<input type="text" name="price" />Rs
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
  var frmvalidator  = new Validator("addproduct");
  frmvalidator.addValidation("medicinename", "req", "Please select medicine Name ");
     frmvalidator.addValidation("quantity", "req", "Please enter the Availabe tablets stock");
  frmvalidator.addValidation("quantity","numeric","  available tablets stock is numerics  only");
  
  frmvalidator.addValidation("price", "req", "Please enter the cost of the medicine");
  frmvalidator.addValidation("price","numeric","  cost is numerics  only");

  
    
 </script>
<br/><br>
<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
