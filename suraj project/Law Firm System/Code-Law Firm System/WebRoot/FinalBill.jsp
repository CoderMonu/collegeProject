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
	<form onsubmit="return validateForm()" action="./FinalBillAction" method="post" name="register" >
		<table width="600" align="center">
			<tr>
				<td colspan="2" align="center">
				</td>
			</tr>
  
		
		<%
		String s2 = (String) request.getAttribute("status");if(s2!=null){%>
		<center>
		<td align=center><font color=red><b><%=s2 %> <%} %></b></font></td></center>
		<br/><br/>
		
		<center>
	
		
		<center>
			<b><h2>
				
				<font color=""><center>Final Bill Form</center>
				
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
							Random rm=new Random();
							
					%>
			
				
				<th colspan="10" bgcolor="#FFFACD">
							<center>
							Final Bill Details
							</center>
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
                           Bill NO:
						</td>
						<td>
							<input type="text" name="billno" value="<%=rm.nextInt(200)%>" readonly="readonly" />
						</td> 
						<td align='right'>
                           Bill Date:
						</td>
						<td>
							<input type="text" name="bildate" value="">
							
					<a
						href="javascript:show_calendar('document.register.bildate', document.register.bildate.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
						</td>
						<td align='right'>
                           File No:
						</td>
						<td>
							<input type="text" name="fileno" value="<%=event.getFileNo()%>" readonly="readonly" />
						</td> 
						<td></td>
						
						</tr>
						<tr>
							<td align='right'>
                          Client:
						</td>
						<td>
							<input type="text" name="client" value="<%=event.getClientName()%>" readonly="readonly" />
						</td> 
						
						<td align='right'>
                           Case No:
						</td>
						<td>
							<input type="text" name="caseno" value="<%=event.getCaseNo()%>" readonly="readonly" />
						</td> 
						<td></td>
						<tr>
							<td align='right'>
                           Address:
						</td>
						<td>
							<input type="text" name="addresses" value="<%=event.getAddress1()%>" readonly="readonly"/>
						</td>
						<td align='right'>
                           Case Name:
						</td>
						<td>
							<input type="text" name="casename" value="<%=event.getCaseName()%>" readonly="readonly" />
						</td> 
						<td></td>
						</tr>
                           						</tr>
						<th colspan="10" bgcolor="#FFFACD">
							<center>
								Fee Details
							</center>
						</th>
						<tr>
							<td align='right'>
								Case Fee:
							</td>
							<td>
					<input type="text" name="casefee" size="30">
				
					
				</td>
				</tr>
							<td align='right'>
								Court Fee:
							</td>
							<td>
								<input type="text" name="courtfee" value="" size="20"
									onChange="showStatus()" />
							</td>
							
							</tr>
											<th colspan="10" bgcolor="#FFFACD">
							<center>
								Expenses Details
							</center>
						</th>
						<tr>
							<td align='right'>
								Expense Head:
							</td>
							<td>
					<input type="text" name="expensehead" size="30">
				
				</td>
							<td align='right'>
								Amount:
							</td>
							<td>
								<input type="text" name="amount" value="" size="20"
									onChange="showStatus()" />
							</td>
							
							<tr>
							<tr>
							<td></td>
							<tr>
				<th colspan="10" bgcolor="#FFFACD">
							<center>
								Bill Details
							</center>
						</th>
						<tr>
						 <td align='right'>
								Payment Type:
							</td>
							
							<td>
					<font size="3" face="Verdana">
					 <select name="PaymentType">
							<option value="">--Select One--</option>
							<option value="Check/Draft">Check/Draft</option>
							<option value="Cash">Cash</option>
							
							</select> </font>
				
				      </td>
				
							<td align='right'>
								Cheque/Draft No:
							</td>
							
							<td>
					<input type="text" name="cdno" size="30" value="<%=rm.nextInt(2178789)%>" readonly="readonly" >
				
				      </td>
				      <tr>
				      <td align='right'>
								Receipt Amount:
							</td>
							
							<td>
					<input type="text" name="ramount" size="30">
				
				      </td>
				      <td align='right'>
							Note:
							</td>
							
							<td>
					<textarea rows="4" cols="30" name="note"></textarea>
				
				      </td>
				      </tr>
				      </tr><tr>
							<td align='right'>
								Cheque/Draft Date:
							</td>
							<td>
								<input type="text" name="cddate" value="" size="20"
									onChange="showStatus()" />
									<a
						href="javascript:show_calendar('document.register.cddate', document.register.cddate.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
							</td>
							<td align='right'>
								Paid Amount:
							</td>
							<td>
								<input type="text" name="paidmount" value="" size="20"
									onChange="showStatus()" />
							</td>
							</tr>
							<tr>
							<td align='right'>
								Cheque/Draft BankName:
							</td>
							<td>
								<input type="text" name="bankname" value="" size="20"
									onChange="showStatus()" />
							</td>
							</tr><tr>
							<td align='right'>
								Cheque/Draft Amount:
							</td>
							
							<td>
								<input type="text" name="cdamount" value="" size="20"
									onChange="showStatus()" />
							</td>
                           			<td></td>			</tr>
                           			<th colspan="10" bgcolor="#FFFACD">
							<center>
								Final Bill
							</center>
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
                           Total Bill Amount:
						</td>
						<td>
							<input type="text" name="totalbillno" value="" />
						</td> 
						<tr>
							<td align='right'>
                          Advanced Paid:
						</td>
						<td>
							<input type="text" name="advancedpaid" value="" />
						</td> 
						 
						<td></td>
						<tr>
							<td align='right'>
                           Due Bill Amount:
						</td>
						<td>
							<input type="text" name="duebillamount" value="" />
						</td>
						 
						<td></td>
						</tr>
						<tr>
							<td align='right'>
                           Amount in Words:
						</td>
						<td>
							<input type="text" name="amountinwords" value="" />
						</td>
						 
						<td></td>
						</tr>
                           						</tr>
				<%} %>
                           			
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
