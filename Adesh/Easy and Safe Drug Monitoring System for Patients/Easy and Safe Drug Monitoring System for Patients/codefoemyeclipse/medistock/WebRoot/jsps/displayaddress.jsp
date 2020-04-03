<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.pharma.bean.ProfileTo"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'viewdeptbudget.jsp' starting page</title>

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
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


	</head>
	<body onload="javascript:disableBackButton()">
		<jsp:include page="header.jsp"></jsp:include>
		

		
			<table align="center" border="1" bgcolor="" width="60%"
				cellpadding="">
				<span class="style13">Report Export to : <a href="./ExportXLS" target="_blank"><font color="brown">XLS</font></a></span><br/>
				<br/><br/>
				<caption>
					<h3> 
						Money will Collected by our agent  
					</h3>
				</caption>
				<tr bgcolor="#adede">
					<i></i>
				</tr>
				
				<c:if test="${not empty trans}">
					<c:forEach var="medicine" items="${trans}">


						<tr>
						<td align="center">
								 Name
							</td>
							<td align="center">
								${medicine.firstName}.${medicine.lastName}
							</td>
							</tr>
							<tr>
						<td align="center">
								House No:
							</td>
							<td align="center">
								${medicine.houseNo}
							</td>
							</tr>
							<tr>
						<td align="center">
								Street
							</td>
							<td align="center">
								${medicine.street}
							</td>
							</tr>
							<tr>
						<td align="center">
							City
							</td>
							<td align="center">
								${medicine.city}
							</td>
							</tr>
							
							<tr>
						<td align="center">
								State
							</td>
							<td align="center">
								${medicine.state}
							</td>
							</tr>
						
					</c:forEach>
				</c:if>

			</table>
			<% String report="";
           report+=" <table align='center' border=1 bgcolor='#A1B2C3' width='70%' cellpadding='10'>";
           report+=" <caption><h3>Address</h3> </caption>"; 
           report+=" <tr><td>FarmerName</td><td>House No</td><td>Area</td><td>City</td><td>District</td><td>State</td></tr>"; 
      
			Vector v=(Vector)request.getAttribute("trans"); 
				 Iterator it=v.listIterator();
				while(it.hasNext()){
				ProfileTo r=(ProfileTo)it.next();
								
	report+= "<tr><td align='center'><b>"+r.getFirstName()+" ."+r.getLastName()+"</b></td><td align='center'><b>"+r.getHouseNo()+"</td><td align='center'><b>"+r.getStreet()+"</b></td><td align='center'><b>"+r.getCity()+"</b></td><td align='center'><b>"+r.getState()+"</b></td></tr>";
		}
		report+="</table>";
		session.setAttribute("Report",report);
		
		%>
	</body>
</html>
