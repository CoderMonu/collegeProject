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
	<!--<jsp:include page="Header.jsp"></jsp:include>
	--><jsp:include page="Adminmenu.jsp"></jsp:include>
	<br />
	<center>
		<form name='eventdispaly' mthod='get' action='./ViewCaseDairyACtion'>

			
			<table border="1"   width="80%">


				<tr>

					
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CaseNo</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CaseName</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Client</b>
							</font>
							
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Opposite</b>
							</font>
							
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Next Hearing Date</b>
							</font>
						</td>
										<%
							c = (Vector) request.getAttribute("packdetails");
											Iterator it = c.listIterator();
											int count = 1;
											while (it.hasNext()) {
												System.out.println(count);
												CaseDairyBean event = (CaseDairyBean) it.next();
						%>





				<tr>


					





					<td>
						<b><%=event.getCaseNo()%></b>
					</td>



					<td>
						<b><%=event.getCaseName()%></b>
					</td>
						<td>
						<b><%=event.getClient()%></b>

					</td>
                      <td>
						<b><%=event.getOpposie()%></b>

					</td>
					
					       <td>
						<b><%=event.getNextHeringDa()%></b>

					</td>
								<%} %>
				
			</table>


			
		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
