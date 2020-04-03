<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
		<jsp:include page="Adminmenu.jsp"></jsp:include>
		<center>
			<b><h2>
				<%
		String s2 = (String) request.getAttribute("status");if(s2!=null){%>
		<center>
		<td align=center><font size='4' color=red><b><%=s2 %> <%} %></b></font></td></center>
		<br/><br/>
		
				<font color=""><center>CASE DETAILS FORM</center>
				
				</h2> </b>
		</center>
		<form method='post' action="./CaseDetailAction" name="register">
			<table border='3' cellspacing=2 align="center" bgcolor="" bordercolor="black">
			
					<%


					Random rm=new Random();
					 %>
				
				
				<th colspan="10" bgcolor="#FFFACD">
							<center>
								CASE DETAILS
							</center>
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
                          CaseType:
						</td>
						<td>
								<font size="3" face="Verdana">
					 <select name="Ctype1">
							<option value="">--Select One--</option>
							<option value="O">Original Side</option>
							<option value="A">Appellate Side</option>
							<option value="L">Lower Court</option>
							<option value="S">Supreme Court</option>
							<option value="T">Tribunal Case</option>
							<option value="D">Documentation </option>
							
							</select> </font>
				
							</td> <td></td>
                         <td align='right'>
								File NO :
							</td>
                            <td>						
							<input type="text" name="fn" value="<%=rm.nextInt(100)%>" readonly="readonly" />
						
							

							</td>
                            <td align='right'>
								CaseName :
							</td>
                            <td>						
							<input type="text" name="cname" value="" />
						
							

							</td>
						
						</tr>
						<tr>
							<td align='right'>
								Client Name :
							</td>
							<td>
								<input type="text" name="clientname" value="" size="20" />
							</td><td></td>
                           
                           <td align='right'>
								Address:
							</td><td>
								
					<textarea rows="4" cols="30" name="address"></textarea>
					
				
							</td>
												
							</td>
							<td align='right'>
								Phone :
							</td>
							<td>
								<input type="text" name="ph" value="" size="20" />
							</td><td></td>
                           
							
							
						</tr>
						
						<tr>
							<td align='right'>
								Court Name :
							</td>
							<td>
							<input type="text" name="cn1" value="" />
						</td><td></td>
						<td align='right'>
								Date of Brief:
							</td>
							<td>
							<input type="text" name="db" value="" />
							<a
						href="javascript:show_calendar('document.register.db', document.register.db.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
											</td>
											<td align='right'>
								Date of Filling :
							</td>
							<td>
							<input type="text" name="df" value="" />
							<a
						href="javascript:show_calendar('document.register.df', document.register.df.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
						</td>
							<tr>
							<td align='right'>
								Case No :
							</td>
							<td>
								<input type="text" name="cno" value="<%=rm.nextInt(1500)%>" size="20"
									onBlur="ValidateForm()" readonly="readonly" />
							</td><td></td>
							<td align='right'>
								Sr.Advocate :
							</td>
                            <td>						
							<input type="text" name="srname" value="" />
						
							

							</td>

								<td align='right'>
								Jr.Advocate :
							</td>
							<td>
								<input type="text" name="jrname" value="" size="20" />
							</td>
							</td>
						</tr>
						<tr>
							<td align='right'>
								Opposite party name:
							</td>
							<td>
								<input type="text" name="opn" value="" size="20"
									onBlur="ValidateForm()" />
							</td><td></td>
							<td align='right'>
								Address:
							</td>
							<td>
								
					<textarea rows="4" cols="30" name="opnaddress"></textarea>
					
				
							</td>
							<td align='right'>
								Phone:
							</td>
							<td>
								<input type="text" name="fax" value="" size="20"
									onChange="showStatus()" />
							</td>
						</tr>
						<tr>
							<td align='right'>
								Opposite Advocate:
							</td>
							<td>
								<input type="text" name="operson" value="" size="20"
									onBlur="ValidateForm()" />
							</td><td></td>
							<td align='right'>
								Address:
							</td>
							<td>
								
					<textarea rows="4" cols="30" name="oaddress"></textarea>
					
				
							</td>
							<td align='right'>
								Phone:
							</td>
							<td>
								<input type="text" name="ophone" value="" size="20"
									onChange="showStatus()" />
							</td>
						
						<tr>
							<td align='right' size="50" width="30" hight="20">
                          Note:
						</td>
						<td>
								
					<textarea rows="4" colspan="6" name="note"></textarea>
					
				
							</td>
							<tr>
							<td align='right' size="50" width="30" hight="20">
                          Attached File:
						</td>
						<td>
						
						<input type="file" name="ufile"
							 size="20"  />
					
				
							</td>
							<!--<td align='right'>
								Attach:
							</td>
							<td>
								
					<textarea rows="4" cols="30" name="address">
					</textarea>
					
				
							</td>							--><td>&nbsp;</td>
												
				</tr>
							<tr><td>
							<td align="center">
								<font size="3" face="Verdana"> <input type="submit"
										name="register" value="SAVE" />&nbsp; </font>
							</td>
							</td>
							
						</tr>
						<tr></tr>
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
		<jsp:include page="Footer.jsp"></jsp:include>
	</body>
</html>

