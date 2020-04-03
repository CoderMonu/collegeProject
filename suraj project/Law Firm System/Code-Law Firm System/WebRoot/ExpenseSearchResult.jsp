<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@page import="com.nit.bean.CaseExpenseBean"%>
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
		<form name='eventdispaly' mthod='get' action='./ExpenseSearch'>


			<table border="1" width="80%">


				<tr>




					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Expense No</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>Expense Date</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b> Case No</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>CaseName</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>ClientName</b> </font>
					</td>
					<td align="left" bgcolor="">
						<font size="4" color="#CF0000"><b>FileNo</b> </font>
					</td>
					
					
					<%
						c = (Vector) request.getAttribute("packdetails");
						Iterator it = c.listIterator();
						int count = 1;
						while (it.hasNext()) {
							System.out.println(count);
							CaseExpenseBean event = (CaseExpenseBean) it.next();
					%>





					<tr>









						<td>
							<b><%=event.getExpenseNo()%></b>
						</td>



						<td>
							<b><%=event.getDate()%></b>
						</td>
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
							<b><%=event.getFileNo()%></b>

						</td>
						
						<%
							}
						%>
					
			</table>



		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
