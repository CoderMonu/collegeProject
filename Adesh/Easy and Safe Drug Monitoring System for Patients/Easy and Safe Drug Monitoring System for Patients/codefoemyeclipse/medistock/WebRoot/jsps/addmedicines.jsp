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

		<title>My JSP 'addmedicines.jsp' starting page</title>

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
		<script language="JavaScript" type="text/javascript"
			src="<%=request.getContextPath() + "/js/ts_picker.js"%>">
</script>
		<script language="JavaScript1.1" src="js/pass.js">

</script>
		<script type="text/javascript"
			src="<%=request.getContextPath() + "/js/image.js"%>">
</script>
		<script type="text/javascript"
			src="<%=request.getContextPath() + "/js/general.js"%>">
</script>
		<script type="text/javascript"
			src="<%=request.getContextPath() + "/js/adi.js"%>">
</script>
		<script type="text/javascript"
			src="<%=request.getContextPath() + "/js/form_validation.js"%>">
</script>

		<script language="JavaScript" src="images/javascripts.js">
</script>
		<script language="JavaScript" src="images/pop-closeup.js">
</script>
	</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<h2 align="center">
			<font color="#FFFFF0">ADD MEDICINES</font>
		</h2>
		<form action="./AddMedicineAction" name="addmedicine" method="get">
			<table align="center" border="3">
				<tr>
					<td>
						<font color="">CompanyName:</font>
					</td>
					<td>
					<select name="companyid" id="select"
							onchange="javascript:if(document.addmedicine.companyid.value=='')
			{alert('Select Any CompanyName');} 		 else
			{ location.href='./ViewCompaniesDetailsAction?companyid='+document.addmedicine.companyid.value;}">
							<c:choose>
								<c:when test="${requestScope.companyname ne null}">
									<option value="${requestScope.cid}">
										${requestScope.companyname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty categoryinfo}">
										<c:forEach var="categoryinfo" items="${categoryinfo}">

											<option value="${categoryinfo.companyid}">
												${categoryinfo.companyname}

											</option>

										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>

					</td>
				</tr>
								<tr>
					<td>
						<font color="">CategoryName:</font>
					</td>
					<td>
						<select name="categoryid" id="select">
									<c:choose>
										<c:when test="${requestScope.categorynameinfo ne null}">
											<option value="${requestScope.categoryname}">
												${requestScope.categoryname}
											</option>
										</c:when>
										<c:otherwise>
											<option value="">
												--SELECT--
											</option>
											<c:if test="${not empty productinfo}">
												<c:forEach var="productinfo" items="${productinfo}">

													<option value="${productinfo.categoryid}">
														${productinfo.categoryname}
													</option>
												</c:forEach>
											</c:if>
										</c:otherwise>
									</c:choose>


								</select>

					</td>
				</tr>
				<tr>
					<td>
						<font color="">MedicineName:</font>
					</td>
					<td>
						<input type="text" name="medicinename" />
					</td>
				</tr>
				
				<tr>
					<td>
						<font color="">ExpiryDate:</font>
					</td>
					<td>
						<input type="text" name="expirydate" readonly="readonly" />
						<a
							href="javascript:show_calendar('document.addmedicine.expirydate', document.addmedicine.expirydate.value);">
							<img src="<%=request.getContextPath() + "/images/cal.gif"%>"
								alt="a" width="18" height="18" border="0" /> </a>

					</td>
				</tr>
				<tr>
					<td>
						<font color="">TimePeriod:<br />(BestBefore Upto)</font>
					</td>
					<td>
						<input type="text" name="timeperiod" />months
					</td>
				</tr>
				<tr>
					<td>
						<font color="">MedicineUsedFor:<br />(Purpose Of Medicine)</font>
					</td>
					<td>
						<textarea name="purpose"></textarea>
					</td>
				</tr>
			<!-- <tr>
					<td>
						<font color="">AvailableTables:</font>
					</td>
					<td>
						<input type="text" name="availabletablets">
					</td>
				</tr>
				<tr>
					<td>
						<font color="">Cost:</font>
					</td>
					<td>
						<input type="text" name="price">Rs/tablet
					</td>
				</tr> -->	
			</table>
			<center>
				<input type="submit" value="ADDMEDICINE">
				<input type="reset" value="CLEAR">
			</center>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("addmedicine");
//frmvalidator.addValidation("companyid","dontselect=0");
frmvalidator.addValidation("categoryid","dontselect=0");
frmvalidator.addValidation("medicinename", "req",
		"Please enter  Medicine Name");
//frmvalidator.addValidation("medicinename", "maxlen=50",	"Max length for Medicine Name is 50");
//frmvalidator.addValidation("medicinename", "alpha"," Medicine Name Alphabetic chars only");
frmvalidator.addValidation("expirydate", "req", "Please enter expirydate");
frmvalidator.addValidation("timeperiod", "req", "Please enter time period");
frmvalidator.addValidation("timeperiod","maxlen=10","Max length is 10 only");
  frmvalidator.addValidation("timeperiod","numeric","  time period is numerics  only");
frmvalidator.addValidation("purpose", "req", "Please enter the medicine used for");


</script>
		<br />
		<br>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
