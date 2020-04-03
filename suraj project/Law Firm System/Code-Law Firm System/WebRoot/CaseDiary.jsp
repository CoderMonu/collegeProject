<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.nit.bean.CaseBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script language="JavaScript" type="text/javascript"
		src="<%=request.getContextPath()+"/scripts/ts_picker.js"%>">
</script>	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Busdetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#ADD8E6">
 <!--<jsp:include page="Header.jsp"></jsp:include>
-->
<jsp:include page="Adminmenu.jsp"></jsp:include>
	<form onsubmit="return validateForm()" action="./CaseDiary" method="post" name="register" >
		<%
		String s2 = (String) request.getAttribute("status");if(s2!=null){%>
		<center>
		<td align=center><font color=red><b><%=s2 %> <%} %></b></font></td></center>
		<br/><br/>
		
		<center>
	
		
		</center>
			<b><h2>
				
				<font color=""><center>CASE DAIRY FORM</center>
				
				</h2> </b>
		</center>
			<table border='3' cellspacing=2 align="center" bgcolor="" bordercolor="black">
			

              <%
					Vector c = (Vector) request.getAttribute("packdetails");
						Iterator it = c.listIterator();
						int count = 1;
						while (it.hasNext()) {
							System.out.println(count);
							CaseBean event = (CaseBean) it.next();
					%>
				
						
						<tr>
							<td align='right'>
                          Case No:
						</td>
						<td>
								<input type="text" name="caseno1"
							value="<%=event.getCaseNo()%>" readonly="readonly"/>
					  <td></td>
                         <td align='right'>
								CaseName :
							</td>
                            <td>
                            <input type="text" name="casename1"
							value="<%=event.getCaseName()%>" readonly="readonly"/>						
							
						
							

							</td>
                            <td align='right'>
								Client :
							</td>
                            <td>
                             <input type="text" name="client1"
							value="<%=event.getClientName()%>" readonly="readonly"/>						
							
						
							

							</td>
						 <td align='right'>
								Opposite :
							</td>
                            <td>
                            <input type="text" name="opposite1"
							value="<%=event.getOppositePartyName()%>" readonly="readonly"/>						
							
						
							

							</td>
<td></td>
						
						</tr>
						<tr>
							<td align='right'>
								Set Next Hiring Date :
							</td>
							<td>
					<input type="text" name="nhd" size="30" readonly="readonly">
				
					<a
						href="javascript:show_calendar('document.register.nhd', document.register.nhd.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
				</td><td></td>
                           						</tr>
						<th colspan="10" bgcolor="#FFFACD">
							<center>
								Appointment Details
							</center>
						</th>
						<tr>
							<td align='right'>
								Appointment Date:
							</td>
							<td>
					<input type="text" name="ad" size="30" readonly="readonly">
				
					<a
						href="javascript:show_calendar('document.register.ad', document.register.ad.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
				</td>
							<td align='right'>
								Appointment Time:
							</td>
							<td>
								<input type="text" name="at" value="" size="20"
									onChange="showStatus()" />
							</td>
							<td align='right'>
								Name:
							</td>
							<td>
								<input type="text" name="name1" value="" size="20"
									onChange="showStatus()" />
							</td>
							<td align='right'>
								Purpose:
							</td>
							<td>
								<input type="text" name="purpose1" value="" size="20"
									onChange="showStatus()" />
							</td>
							</tr>
											<th colspan="10" bgcolor="#FFFACD">
							<center>
								Call To Make
							</center>
						</th>
						<tr>
							<td align='right'>
								Call Date:
							</td>
							<td>
					<input type="text" name="cd" size="30" readonly="readonly">
				
					<a
						href="javascript:show_calendar('document.register.cd', document.register.cd.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
				</td>
							<td align='right'>
								Call Time:
							</td>
							<td>
								<input type="text" name="ct" value="" size="20"
									onChange="showStatus()" />
							</td>
							<td align='right'>
								Name:
							</td>
							<td>
								<input type="text" name="name2" value="" size="20"
									onChange="showStatus()" />
							</td>
							<td align='right'>
								Purpose:
							</td>
							<td>
								<input type="text" name="purpose2" value="" size="20"
									onChange="showStatus()" />
							</td>
							</tr>
							<%} %>
							<tr>
							<td></td>
							<td>
							<td align="center">
							
								<font size="3" face="Verdana"> <input type="submit"
										name="register" value="SAVE" />&nbsp; </font>
							</td>
							</td>
							
						</tr>
						<tr></tr>
									</table>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("station");


  frmvalidator.addValidation("statename", "req", "Please select  statename");
  frmvalidator.addValidation("photo", "req", "Please enter  photo");
  frmvalidator.addValidation("districtname", "req", "Please select  districtname");
  frmvalidator.addValidation("cityname", "req", "Please select  cityname");
  frmvalidator.addValidation("stationname", "req", "Please select  stationname");
  //frmvalidator.addValidation("deptname", "req", "Please enter  deptname");
  //frmvalidator.addValidation("firstName", "maxlen=20","Max length for FirstName is 20");
  //frmvalidator.addValidation("firstName", "alpha"," First Name Alphabetic chars only");

 
   frmvalidator.addValidation("loginid", "req", "Please enter loginid");
   frmvalidator.addValidation("loginid", "maxlen=20","Max length for loginid is 20");
   frmvalidator.addValidation("loginid", "alpha","  loginid Alphabetic chars only");


   frmvalidator.addValidation("password", "req", "Please enter password");
   frmvalidator.addValidation("password", "maxlen=20","Max length for password is 20");

   frmvalidator.addValidation("firstname", "req", "Please enter firstname");
   frmvalidator.addValidation("firstname", "maxlen=20","Max length for firstname is 20");
   frmvalidator.addValidation("firstname", "alpha","  firstname Alphabetic chars only");

   frmvalidator.addValidation("middlename", "req", "Please enter middlename");
   frmvalidator.addValidation("middlename", "maxlen=20","Max length for middlename is 20");
   frmvalidator.addValidation("middlename", "alpha","  middlename Alphabetic chars only");


   frmvalidator.addValidation("lastname", "req", "Please enter lastname");
   frmvalidator.addValidation("lastname", "maxlen=20","Max length for lastname is 20");
   frmvalidator.addValidation("lastname", "alpha","  lastname Alphabetic chars only");


 frmvalidator.addValidation("email", "maxlen=50");
 frmvalidator.addValidation("email", "req");
 frmvalidator.addValidation("email", "email");
    
 frmvalidator.addValidation("dob", "req", "Please enter  dob");
 //frmvalidator.addValidation("city", "req", "Please enter city");
 //frmvalidator.addValidation("city", "maxlen=20","Max length for city is 20");
 //frmvalidator.addValidation("city", "alpha","  city Alphabetic chars only");


 frmvalidator.addValidation("houseno", "req", "Please enter  houseno");
   
 frmvalidator.addValidation("street", "req", "Please enter street");
 frmvalidator.addValidation("street", "maxlen=20","Max length for street is 20");
 frmvalidator.addValidation("street", "alpha","  street Alphabetic chars only");


frmvalidator.addValidation("gender", "dontselect=0");

frmvalidator.addValidation("country", "req", "Please enter country");
frmvalidator.addValidation("country", "maxlen=20","Max length for country is 20");
frmvalidator.addValidation("country", "alpha","  country Alphabetic chars only");

frmvalidator.addValidation("phoneno", "req", "Please enter phoneno");
frmvalidator.addValidation("phoneno", "maxlen=10");
frmvalidator.addValidation("phoneno", "numeric");
frmvalidator.addValidation("phoneno", "phoneno");

frmvalidator.addValidation("pincode", "req", "Please enter pincode");
frmvalidator.addValidation("pincode", "maxlen=6");
frmvalidator.addValidation("pincode", "numeric");
frmvalidator.addValidation("pincode", "pincode");

//frmvalidator.addValidation("logintype", "req", "dontselect=0");


//frmvalidator.addValidation("dob", "req", "Please enter  dob");

frmvalidator.addValidation("desig", "req", "Please enter desig");
frmvalidator.addValidation("desig", "maxlen=20","Max length for desig is 20");
frmvalidator.addValidation("desig", "alpha","  desig Alphabetic chars only");


frmvalidator.addValidation("hiredate", "req", "Please enter  hiredate");

frmvalidator.addValidation("logintype", "dontselect=0");



//frmvalidator.addValidation("dob", "req", "Please enter  dob");


 </script>
		<br />
		
	</body>
</html>
