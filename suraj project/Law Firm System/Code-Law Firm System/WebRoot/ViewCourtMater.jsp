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
		<form name='eventdispaly' mthod='get' action='./'>

			
			<table border="1"   width="80%">


				<tr>

					
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CID</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>COURTCODE</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>COURTNAME</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>COURTTYPE</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>COURTSIDE</b>
							</font>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CADDRESS</b>
							</font>
						</td>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>COUNTRY</b>
							</font>
						</td>
					</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>STATE</b>
							</font>
						</td>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CITY</b>
							</font>
						</td>
										<%
							c = (Vector) request.getAttribute("packdetails");
											Iterator it = c.listIterator();
											int count = 1;
											while (it.hasNext()) {
												System.out.println(count);
												CourtBean event = (CourtBean) it.next();
						%>





				<tr>


					





					<td>
						<b><%=event.getCid()%></b>
					</td>



					<td>
						<b><%=event.getCourtcode()%></b>
					</td>
						<td>
						<b><%=event.getCourtname()%></b>

					</td>
                      <td>
						<b><%=event.getCourttype()%></b>

					</td>
					
					       <td>
						<b><%=event.getCourtside()%></b>

					</td>
				</td>
					       <td>
						<b><%=event.getCourtaddress()%></b>

					</td>
				</td>
					       <td>
						<b><%=event.getCountry()%></b>

					</td>
					     <td>
						<b><%=event.getState()%></b>

					</td>
					       
				</td>
					       <td>
						<b><%=event.getCity()%></b>

					</td>
				</td>

										<%} %>
				
			</table>


			
		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
