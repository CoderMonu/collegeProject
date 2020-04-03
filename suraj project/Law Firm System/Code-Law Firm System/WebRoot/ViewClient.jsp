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
							<font size="4" color="#CF0000"><b>CLIENTID</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CLIENTNAME</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>COUNTRY</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CLIENTADDRESS</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>STATE</b>
							</font>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>PHONE</b>
							</font>
						</td>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>CITY</b>
							</font>
						</td>
					</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>EMAIL1</b>
							</font>
						</td>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>EMAIL2</b>
							</font>
						</td>
					</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>REFPERSON</b>
							</font>
						</td>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>REFPHONE</b>
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
						<b><%=event.getCid1()%></b>
					</td>



					<td>
						<b><%=event.getClientName()%></b>
					</td>
						<td>
						<b><%=event.getCountry()%></b>

					</td>
                      <td>
						<b><%=event.getClientAddress()%></b>

					</td>
					
					       <td>
						<b><%=event.getState()%></b>

					</td>
				</td>
					       <td>
						<b><%=event.getPhone()%></b>

					</td>
				</td>
					       <td>
						<b><%=event.getCity()%></b>

					</td>
					     <td>
						<b><%=event.getEmail1()%></b>

					</td>
					       
				</td>
					       <td>
						<b><%=event.getEmail2()%></b>

					</td>
					<td>
						<b><%=event.getRperson()%></b>

					</td>
					<td>
						<b><%=event.getRphone()%></b>

					</td>
					
				</td>

										<%} %>
				
			</table>


			
		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
