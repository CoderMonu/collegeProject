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
							<font size="4" color="#CF0000"><b>AID</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>ANAME</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>QUALIFICATION</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>ALEVEL</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>ADDRESS</b>
							</font>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>MOBILE</b>
							</font>
						</td>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>EMAIL</b>
							</font>
						</td>
					</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>PINCODE</b>
							</font>
						</td>
																<%
							c = (Vector) request.getAttribute("packdetails");
											Iterator it = c.listIterator();
											int count = 1;
											while (it.hasNext()) {
												System.out.println(count);
												AdvocateBean event = (AdvocateBean) it.next();
						%>





				<tr>


					





					<td>
						<b><%=event.getAid()%></b>
					</td>



					<td>
						<b><%=event.getAdvocateName()%></b>
					</td>
						<td>
						<b><%=event.getQualification()%></b>

					</td>
                      <td>
						<b><%=event.getAdvocateLevel()%></b>

					</td>
					
					       <td>
						<b><%=event.getStreetAddress()%></b>

					</td>
				</td>
					       <td>
						<b><%=event.getMobile()%></b>

					</td>
				</td>
					       <td>
						<b><%=event.getEmail()%></b>

					</td>
					       <td>
						<b><%=event.getPinCode()%></b>

					</td>					    
										<%} %>
				
			</table>


			
		</form>
	</center>

	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
