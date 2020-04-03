<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.pharma.bean.MedicalInfoTo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int count = 0;
	String Reports = "";
	Iterator it = null;
	MedicalInfoTo mto = null;
%>
<%
	if (session.getAttribute("role") == null) {

		RequestDispatcher rd = request
				.getRequestDispatcher("./loginform.jsp");
		rd.forward(request, response);
%>
<%
	}
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewmedicines.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <h2 align="center"><font color="">COMPANIES INFORMATION</font></h2>
  <form action="" name="companyinfo">
         <table align="center" border="5">
         <tr><td>CompanyID</td><td>CompanyName</td>
         <td>Address</td>
         <td>PhoneNumber</td>
         <td>Email</td>
        </tr>
         <c:forEach var="companyinfo" items="${companyinfo}">
						<tr>
							<c:if test="${sessionScope.role=='Admin'}">
								<td>
									<a
										href="./ViewUpdateCompanyAction?companyid=${companyinfo.companyid}">${companyinfo.companyid
										}</a>
								</td>
							</c:if>
							<c:choose>
								<c:when test="${sessionScope.role eq 'Admin'}">
									
								</c:when>
								<c:otherwise>
									<td align='center'>
										<b>${companyinfo.companyid }</b>
									</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${sessionScope.role eq 'Admin'}">
									<td align='center'>
										<b>${companyinfo.companyname}</b>
									</td>
								</c:when>
								<c:otherwise>
									<td align='center'>
										<b>${companyinfo.companyname}</b>
									</td>
								</c:otherwise>
							</c:choose>
							<td align='center'>
								<b> ${companyinfo.address}</b>
							</td>
							<td align='center'>
								<b> ${companyinfo.phno}</b>
							</td>
							<td align='center'>
								<b> ${companyinfo.email}</b>
							</td>
							<c:if test="${sessionScope.role=='Admin'}">
								<td>
									<a
										href="./DeleteCompanyAction?companyid=${companyinfo.companyid}">Delete</a>
								</td>
							</c:if>
						</tr>
					</c:forEach>
					<tr>
					</tr>
         
         </table></form>
  </body>
</html>
