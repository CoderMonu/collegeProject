<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ page errorPage="userexceptionhandler.jsp"%>
<%@page import="com.pharma.formbeans.profileformbean"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'articles.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<%
			//String path;
			String usertype;
			String s;
		%>
		<%
			if (session.getAttribute("user") == null) {
				RequestDispatcher rd = request
						.getRequestDispatcher("/loginform.jsp");
				rd.forward(request, response);
		%>
		<%
			}
		%>

	
			</head>

			<body bgcolor="">
				&nbsp;


				<jsp:include page="header.jsp"></jsp:include>

				<%
					String report = "";

					report += "<table align=center width='700' border=1> ";
					report += "<tr  bgcolor=#ff9900> <th>Sno</th> <th>Name</th> <th>Gender</th><th>Contact</th> <th>Address</th> <th>Photo</th></tr>";
				%>
				<br />
				<center>
				<span class="style13">Export to :<a href="ExportXLS"
					target="_blank"><font color="brown">XLS</font> </a> </span>
				<center>
				<h1>
					<font color="white">
					<%
						if (request.getParameter("role").equalsIgnoreCase("dealer")) {
										usertype = "DEALER";
									}
                      else if (request.getParameter("role").equalsIgnoreCase("employee")) {
										usertype = "EMPLOYEE";
									}
                        
									else
										usertype = "CUSTOMER";
										
					%>
					<%=usertype%>
					DETAILS
					</font>
				</h1>
				<form action="./DeleteUserAction" name="deleteuser">

					<table border='1' bgcolor="">
						<tr bgcolor='#12345'>
							<%
								if (session.getAttribute("role").equals("Admin")) {
							%>
							<%
								}
							%>

							<tr bgcolor='navyblue'>
								<td width="10">

								</td>
								<td align='center'>
									<b>Sno</b>
								</td>
								<td align='center'>
									<b>Name </b>
								</td>
								<td align='center'>
									<b>Gender </b>
								</td>
								<td align='center'>
									<b>Contact </b>
								</td>
								<td align='center'>
									<b>Address </b>
								</td>
								<td align='center'>
									<b>Photo </b>
								</td>
								<%
									Vector v = (Vector) request.getAttribute("userinfo");
									Iterator it = v.listIterator();
									//System.out.println("no.of profiles is"+v);
									int count = 1;

									while (it.hasNext()) {

										System.out.println(count);
										profileformbean pro = (profileformbean) it.next();
										path = request.getRealPath("/images");
										s = path + "\\" + pro.getPhoto();
										System.out.println("Image Path********" + s);
										System.out.println("Image Path********!!" + pro.getPhoto());
								%>

								<%
									if (!pro.getStatus().equalsIgnoreCase("Active")) {
								%>
								<td align='center'>
									<b>status</b>
								</td>
								<%
									}
								%>

								<%
									report += "<tr><td align=center>" + pro.getFirstName()
												+ "</td>";
										report += "<td align=center>" + pro.getGender() + "</td>";
										report += "<td align=center>" + pro.getEmail();
										report += "<br>" + pro.getPhoneNo();
										report += "<br>" + pro.getPhoneNo() + "</td>";
										report += "<td align=center>" + pro.getPhoneNo() + "</td>";
										report += "<td align=center>" + pro.getHouseNo();
										report += "<br>" + pro.getStreet();
										report += "<br>" + pro.getCity();
										report += "<br>" + pro.getState();
										report += "<br>" + pro.getCountry();
										report += "<br>" + pro.getPin() + "</td>";
										report += "<td ><img src=" + pro.getPhoto()
												+ " height=40 width=40></td></tr>";
								%>
							</tr>
							<tr>
								<td>
									<input type="checkbox" name='ch' value="<%=pro.getUserid()%>">



								</td>

								<td>
									<b><%=count++%></b>
								</td>

								<td>
									<b><%=pro.getFirstName()%></b>
								</td>
								<td>
									<b><%=pro.getGender()%></b>
								</td>
								<td>
									<b>mail :<%=pro.getEmail()%></b>
									<br>
									<b>Ph :<%=pro.getPhoneNo()%></b>
									<br>
									<b>Fax :<%=pro.getFax()%></b>

								</td>
								<td>
									<b>Hno :<%=pro.getHouseNo()%>,<b>Street:<%=pro.getStreet()%>
									</b> <br> <b>City :<%=pro.getCity()%> <br> <b>State:<%=pro.getState()%>,<b>Country:<%=pro.getCountry()%></b>
												<br> <b>pin :</b><%=pro.getPin()%></b> <br> <br>
								</td>
								<td>
									<img src="<%=pro.getPhoto()%>" height='100' width='100'>
								</td>
								<%
									if (!pro.getStatus().equalsIgnoreCase("Active")) {
								%>
								<td>
									<b><a
										href="./UpdateUserStatusAction?userid=<%=pro.getUserid()%>"><%=pro.getStatus()%></a>
									</b>
								</td>
								<%
									}
								%>


								<!-- <input type='hidden' name='userName' value="<%=pro.getStatus()%>"> -->
								<input type='hidden' name='userName'
									value="<%=pro.getUserName()%>">
								<input type='hidden' name='logintype'
									value="<%=pro.getLoginType()%>">

							</tr>


							<%
								}
								report += "</table>";
								session.setAttribute("Report", report);
							%>
						
					</table>
					<table>

						<tr>

							<td>
								<input type="submit" name="deleteuser" value="Delete">
					</table>
				</form>

				</center>
<jsp:include page="footer.jsp"></jsp:include>
			</body>
		</html>