<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

	<head>

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
		<script type="text/javascript">
function Check() {
	var avai = document.medicineorder.avail.value;
	var req = document.medicineorder.reqired.value;
	if (req > avai) {
		alert('Please check availabile Quantity and Enter Quantity' + avai
				+ '.....' + req);
		return false;
	} else
		return true
}
</script>

	</head>

	<body onload="javascript:disableBackButton()">
		<jsp:include page="header.jsp"></jsp:include>
		<br />
		<form action="./MedicineOrderAction" name="medicineorder"
			method="post">
			<table align="center" border="1" bgcolor="" width="50%"
				cellpadding="">
				<caption>
					<h3>
						Medicines Order Form
				</caption>
				</br>
				</br>
				<tr bgcolor="" align="center">
					<i> </i>
				</tr>

				<tr>
					<td>
						Medicine Name
					</td>
					<td>
						<input type="text" name="medicinename"
							value="<%=request.getParameter("medicinename")%>"
							readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>
						Available Quantity
					</td>
					<td>
						<input type="text" name="avail"
							value="<%=request.getParameter("avail")%>" readonly="readonly">
						tablets.
						<input type="hidden" name="productid"
							value="<%=request.getParameter("productid")%>">
						<input type="hidden" name="userid"
							value="<%=request.getParameter("userid")%>">
					</td>
				</tr>
				<tr>
					<td>
						Price per 1tablet
					</td>
					<td>
						<input type="text" name="price"
							value="<%=request.getParameter("price")%>" readonly="readonly">
						Rs
					</td>
				</tr>
				<tr>
					<td>
						Enter Required Quantity
					</td>
					<td>
						<input type="text" name="reqired" value="">
						tablets.
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="reset" name="" value="Clear">
					</td>
					<td align="center">
						<input type="submit" name="" value="Submit"
							onclick=" return Check();">
					</td>
				</tr>
			</table>
			<br />
			<br />
		</form>
		<script language="JavaScript" type="text/javascript">
var frmvalidator = new Validator("medicineorder");
frmvalidator.addValidation("reqired", "req",
		"Please enter Required Order Quantity ");
frmvalidator.addValidation("reqired", "numeric");
</script>
	</body>
</html>
