<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body bgcolor='#BDB76B'>
  
	<div align="left"><center> 
	<br><em><img height="238" width="981" vspace="0" border="1" align="top" src="./images/22.jpg"></em> 
	<b> 
	</b> 
 </center></div>
		<c:choose>
		
		   <c:when test="${sessionScope.logintype eq 'null'}">
				<jsp:include page="./generaloptions.jsp" />
			</c:when>
                
            <c:when test="${sessionScope.logintype eq 'DG'}">
				<jsp:include page="./DGMenu.jsp" />
			</c:when>          
                
			
			<c:otherwise>
				<jsp:include page="generaloptions.jsp"></jsp:include>
			</c:otherwise>
			
		</c:choose>


		<br />
		<br />

		<center>
			<font color="red"><b> <c:if
						test="${requestScope.status!='null'}">

						<c:out value="${requestScope.status}"></c:out>
					</c:if> </b> </font>

		</center>
  </body>
</html>
