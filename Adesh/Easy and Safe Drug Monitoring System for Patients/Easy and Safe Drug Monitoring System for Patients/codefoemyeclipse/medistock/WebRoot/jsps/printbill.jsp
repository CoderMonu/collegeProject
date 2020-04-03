<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

		<title>My JSP 'printbill.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/js/gen_validatorv31.js"%>type="text/javascript"></script>
		<script language="JavaScript" type="text/javascript"
			src="/js/ts_picker.js"></script>
		<script language="JavaScript1.1" src="/js/pass.js">


</script>
		<script type="text/javascript" src="js/image.js"> </script>
		<script type="text/javascript" src="js/general.js"> </script>
		<script type="text/javascript" src="js/adi.js"> </script>
		<script type="text/javascript" src="js/form_validation.js"> </script>
		<script language="JavaScript" src="js/javascripts.js"></script>
		<script language="JavaScript" src="js/pop-closeup.js"></script>



		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/js/gen_validatorv31.js"%>"
			type="text/javascript"></script>
		<script language="JavaScript" type="text/javascript"
			src="<%=request.getContextPath() + "/js/ts_picker.js"%>"></script>
		<script>
function printpage() {
	window.print()
}
</script>
	</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<table align="center" border="5" background="">
		<%
									Vector v = (Vector) request.getAttribute("userinfo");
									Iterator it = v.listIterator();
									//System.out.println("no.of profiles is"+v);
									int count = 1;

									while (it.hasNext()) {

										System.out.println(count);
										MedicalInfoTo mto = (MedicalInfoTo) it.next();
										
								%>
		
			<tr>
				<td>
					<font>CustomerName:</font>
				</td>
				<td>
					<%=mto.getFirstName() %>.<%=mto.getLastName() %>
				</td>
			</tr>
			<tr>
				<td>
					<font>PhoneNumber:</font>
				</td>
				<td>
					<%=mto.getPhoneNo() %>
				</td>
			</tr>
			<tr>
				<td>
					<font>MedicineName:</font>
				</td>
				<td>
					<%=mto.getMedicinename() %>
				</td>
			</tr>
			<tr>
				<td>
					<font>ExpiryDate:</font>
				</td>
				<td>
					<%=mto.getExpirydate() %>
				</td>
			</tr>
			<tr>
				<td>
					<font>Cost:</font>
				</td>
				<td>
				<%=mto.getPrice() %>
				</td>
			</tr>
			<tr>
				<td>
					<font>OrderQuantity:</font>
				</td>
				<td>
				<%=mto.getOrderquantity() %>tablets
				</td>
			</tr>
			<tr>
				<td>
					<font>TotalCost:</font>
				</td>
				<td>
					<%=mto.getTotalprice()%>
				</td>
			</tr>
			<%} %>
		</table>
		<center>
			<input type="submit" value="Print" onclick="printpage()">
		</center>
	</body>
</html>
