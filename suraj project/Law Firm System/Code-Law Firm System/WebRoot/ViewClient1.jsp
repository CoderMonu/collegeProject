<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ page errorPage="UserExceptionHandler.jsp"%>
<%@page import="com.nit.bean.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Vector c;
%>

<head>
	<script language="JavaScript"
		src="<%=request.getContextPath()
					+ "/scripts/gen_validatorv31.js"%>"
		type="text/javascript">
</script>
</head>
<body background="./images/111.jpg">
	&nbsp;
	<jsp:include page="UsernMenu.jsp"></jsp:include>
	<br />
	<center>
		<form name='eventdispaly' mthod='get' action='./'>

			
			<table border="1"   width="80%">


				<tr>

					

						
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Client Name</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>State</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>City</b>
							</font>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Phone</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Email</b>
							</font>
						</td>
					
				<%
							c = (Vector) request.getAttribute("packdetails");
											Iterator it = c.listIterator();
											int count = 1;
											while (it.hasNext()) {
												System.out.println(count);
												ClientBean event = (ClientBean) it.next();
						%>





				<tr>


					






					<td>
						<b><%=event.getClientName()%></b>
					</td>



					<td>
						<b><%=event.getState()%></b>
					</td>
						<td>
						<b><%=event.getCity()%></b>

					</td>
					<td>
						<b><%=event.getPhone()%></b>

					</td>
					<td>
						<b><%=event.getEmail1()%></b>

					</td>
          
 
       
						
				<%} %>
				
			</table>


			
		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
