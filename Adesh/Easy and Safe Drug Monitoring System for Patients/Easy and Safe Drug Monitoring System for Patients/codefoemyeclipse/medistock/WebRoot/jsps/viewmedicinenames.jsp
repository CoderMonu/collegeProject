<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.pharma.bean.MedicalInfoTo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	int count = 0;
	String Reports = "";
	Iterator it = null;
	MedicalInfoTo mto = null;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewnames.jsp' starting page</title>
    
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
  <h2 align="center"><font color="white">MedicinesList</font> </h2>
  <%
					String report = "";

					report += "<table align=center width='700' border=1> ";
					report += "<tr  bgcolor=#ff9900> <th>Medicine Name</th> <th>ManufactureDate</th> <th>Expiry Date</th><th>TimePeriod<br />(BestBefore)</th> <th>UsedFor<br />(Purpose of Medicine)</th> <th>AvailableQuantity<br/>Tablets</th><th>Price<br/>Rs/tablet</th></tr>";
				%>
				<br />
				<center>
				<span class="style13">Export to :<a href="ExportXLS"
					target="_blank"><font color="brown">XLS</font> </a> </span>
				<center>
    <table align="center" border="4">
			<tr bgcolor="">
				<td>
					<div align="center">
						<strong>Medicine Name</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>ManufactureDate</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Expiry Date</strong>
					</div>
				</td>


				<td>
					<div align="center">
						<strong>TimePeriod<br />(BestBefore)</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>UsedFor<br />(Purpose of Medicine)</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>AvailableQuantity<br/>Tablets</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Price<br/>Rs/tablet</strong>
					</div>
				</td>
				<%
									Vector v = (Vector) request.getAttribute("medicalinfo");
								 it = v.listIterator();
									
									while (it.hasNext()) {

										System.out.println(count);
										MedicalInfoTo medicalinfo = (MedicalInfoTo) it.next();
										
								
									report += "<tr><td align=center>" + medicalinfo.getMedicinename()
												+ "</td>";
										report += "<td align=center>" + medicalinfo.getManufacturedate() + "</td>";
										report += "<td align=center>" + medicalinfo.getExpirydate()+ "</td>";
										report += "<td align=center>" + medicalinfo.getTimeperiod() + "</td>";
										report += "<td align=center>" + medicalinfo.getPurpose()+ "</td>";
										report += "<td align=center>" + medicalinfo.getAvail_quantity()+ "</td>";
										report += "<td align=center>" + medicalinfo.getPrice() + "</td></tr>";
							}
								report += "</table>";
								session.setAttribute("Report", report);
							%>
				</tr>
					<c:if test="${not empty medicalinfo}">
				<c:forEach var="medicalinfo" items="${medicalinfo}">
				<tr>
				<td align='center'>
									<b>${medicalinfo.medicinename}</b>
								</td>
							
						<td align='center'>
							<b> ${medicalinfo.manufacturedate}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.expirydate}</b>
						</td>
						
						<td align='center'>
							<b> ${medicalinfo.timeperiod}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.purpose}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.avail_quantity}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.price}</b>
						</td>
						
					</tr>
				</c:forEach></c:if>
				
				</table>
				
  </body>
</html>
