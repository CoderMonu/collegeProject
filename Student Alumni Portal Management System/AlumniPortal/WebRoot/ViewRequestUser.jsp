
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.dae.dto.RegistrationBean"%>
<%@page import="com.dts.dae.dao.ProfileDAO"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Internet Banking</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="../includes/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.style1 {
	color: #D4F101
}
-->
</style>
	</head>

	<body bgcolor="#F5FFFA">
		
								 <jsp:include page="Header.jsp" />
								

					<table bgcolor="#F5FFFA" width="880" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="314" align="center">
								<br>
								<table width='700' border='0'>
									<tr>
										
										<td align='right'>


											<center>
												<h3>View Student
												</h3>
											</center>
											<table>
												<tr bgcolor="skyblue">
													
													<td>
														<div align="center">
															<strong>Login Name</strong>
														</div>
													</td>
													<td>
														<div align="center">
															<strong>First Name</strong>
														</div>
													</td>
													<td>
														<div align="center">
															<strong>Last Name</strong>
														</div>
													</td>
													<td width="120">
														<div align="center">
															<strong>DOB</strong>
														</div>
													</td>
													<td>
														<div align="center">
															<strong>city</strong>
														</div>
													</td>
													<td width="130">
														<div align="center">
															<strong>State</strong>
														</div>
													</td>
													<td>
														<div align="center">
															<strong>Country</strong>
														</div>
													</td>
													<td>
														<div align="center">
															<strong>Action</strong>
														</div>
													</td>
												</tr>
												<%
													ProfileDAO adao=new ProfileDAO();
		                                                 CoreList acorelist=adao.getRequestuser();
													Enumeration aEnumeration = acorelist.elements();
													while (aEnumeration.hasMoreElements()) {
														RegistrationBean aprofile = (RegistrationBean) aEnumeration.nextElement();
														
												%>
												<tr bgcolor="white">
													
													<td>
														<%=aprofile.getLoginID()%>
													</td>
													<td>
														<%=aprofile.getFirstName()%>
													</td>
													<td>
														<%=aprofile.getLastName()%>
													</td>
													<td>
														<%=aprofile.getBirthDate1()%>
													</td>
													<td>
														<%=aprofile.getCity()%>
													</td>
													<td>
														<%=aprofile.getState()%>
													</td>
													<td>
														<%=aprofile.getCountry()%>
													</td>
													<td>
														<a href="VerifyUserAction?loginid='<%=aprofile.getLoginID()%>'">Verify</a>
													</td>
												</tr>
												<%
													}
												%>
												
											</table></td></tr>








											

												<tr>
													<td height="18" valign="top">
														<img src="../images/trans.gif" width="5" height="5">
													</td>
												</tr>
												<tr>
													<td height="18" valign="top">
														&nbsp;
													</td>
												</tr>
											</table>
								</table>
	</body>
</html>

