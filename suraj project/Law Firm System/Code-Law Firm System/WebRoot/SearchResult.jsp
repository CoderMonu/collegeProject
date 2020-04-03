<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@page import="com.nit.bean.CaseBean"%>
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
	<jsp:include page="Adminmenu.jsp"></jsp:include>
	<br />
	<center>
		<form name='eventdispaly' mthod='get' action='./SearchAction'>


			<table border="1" width="80%">


				<tr>




					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>FileNo</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Case NO</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Case Name</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>CourtName</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>ClientName</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Advocate</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Opposite Party</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Opposite Advacate</b> </font>
					</td>
					<%
						c = (Vector) request.getAttribute("packdetails");
						Iterator it = c.listIterator();
						int count = 1;
						while (it.hasNext()) {
							System.out.println(count);
							CaseBean event = (CaseBean) it.next();
					%>





					<tr>









						<td>
							<b><%=event.getFileNo()%></b>
						</td>



						<td>
							<b><%=event.getCaseNo()%></b>
						</td>
						<td>
							<b><%=event.getCaseName()%></b>

						</td>
						<td>
							<b><%=event.getCortName()%></b>
						</td>



						<td>
							<b><%=event.getClientName()%></b>
						</td>
						<td>
							<b><%=event.getSrAdvocate()%></b>

						</td>
						<td>
							<b><%=event.getOppositePartyName()%></b>
						</td>
						<td>
							<b><%=event.getOppositeAdvacteName()%></b>

						</td>

						<%
							}
						%>
					
			</table>



		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
