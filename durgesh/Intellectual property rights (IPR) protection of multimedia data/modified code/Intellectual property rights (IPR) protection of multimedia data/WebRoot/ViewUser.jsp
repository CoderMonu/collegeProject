<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.water.bean.ProfileTO;"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int count = 1;
%>
<head>
	<script language="JavaScript"
		src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
		type="text/javascript">
</script>
</head>
<body>
	&nbsp;
	<jsp:include page="Header.jsp"></jsp:include>
	<br />
	<center>
		<h3>
			<font color='red'> List of Registered Users</font>
		</h3>
		<form name='deleteuser' action='./DeleteUserAction'>
			<table border='1'>
				<tr bgcolor='white' size='100'>
					<td align='center'>
						<b>Sno</b>
					</td>
					<td align='center'>
						<b>Name </b>
					</td>
					<td align='center'>
						<b>Contact </b>
					</td>
					<td align='center'>
						<b>Address </b>
					</td>
					<td align='center'>
						<b>Photo </b>
					</td>
				</tr>
				<tr>
					<c:forEach var="users" items="${userinfo}">
						<tr bgcolor='wheat'>
							<c:choose>
								<c:when test="${sessionScope.role eq 'Admin'}">
									<td align='center'>
										<input name="ch" type="checkbox" id="checkbox2"
											onClick="check1()" value="${users.userid }" />
									</td>
								</c:when>

								<c:otherwise>
									<td align='center'>
										<b><%=count++%></b>
									</td>
								</c:otherwise>
							</c:choose>
							<td align='center'>
								<b> ${users.firstName}</b>&nbsp
								<b> ${users.lastName}</b>
								<td align='center'>
									Ph:
									<b> ${users.phoneNo}</b>
								</td>
								<td>
									<b>Hno :${users.houseNo},${users.street} street</b>,
									<b>${users.city},${users.district}(District)</b>
									<br>
									<b>${users.state},${users.country}, <b>pin :</b>${users.pin}</b>
								</td>
								<td align='center'>
									<img src='${users.photo}' height='60' width='80'>
								</td>
								<td>
									<%
										if (((String) session.getAttribute("role")).equals("Admin")) {
									%><td>
										<b><a
											href="./UpdateUserStatusAction?userid=${users.userid }">Request
										</a> </b>
									</td>
									<%
										}
									%>
								
							<td>
						</tr>
					</c:forEach>
					<br>
				</tr>
				<tr>
					<td align='center' colspan='8'>
						<input type="submit" value="Delete" />
					</td>
				</tr>
			</table>
	</center>
	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
