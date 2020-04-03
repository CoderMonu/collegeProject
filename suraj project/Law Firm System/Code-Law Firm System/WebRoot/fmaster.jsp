<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.*"%>
<%@page import="com.nit.bean.RegisterBean"%>
<%
	if (session.getAttribute("logintype") == null) {

		RequestDispatcher rd = request
				.getRequestDispatcher("./fmaster.jsp");
		rd.forward(request, response);
%>
<%
	}
%>

<html>
	<head>
	
	
			
			<script language="JavaScript" src="scripts/gen_validatorv31.js"
				type="text/javascript">
</script>
			<script language="JavaScript" type="text/javascript"
				src="scripts/ts_picker.js">
</script>
			<script language="JavaScript1.1" src="scripts/pass.js">
</script>
			<script type="text/javascript" src="scripts/image.js">
</script>
			<script type="text/javascript" src="scripts/general.js">
</script>
			<script type="text/javascript" src="scripts/adi.js">
</script>
			<script type="text/javascript" src="scripts/form_validation.js">
</script>

			<script language="JavaScript" src="images/javascripts.js">
</script>
			<script language="JavaScript" src="scripts/pop-closeup.js">
</script>
			
		
			
	</head>
	<body>
		<jsp:include page="Header.jsp"></jsp:include>
		<center>
			<b><h2>
				
				<font color=""><center>FIRM MASTER REGISTRATION FORM</center>
				
				</h2> </b>
		</center>
		<form method='post'
			action="<%=request.getContextPath() + "./AddFirmMaterAction"%>" name="master">
			<table border='3' cellspacing=2 align="center" bgcolor="" bordercolor="black">
			

				
				
				<th colspan="6" bgcolor="#FFFACD">
							<center>
								FIRM MASTER DETAILS
							</center>
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
                           Frim Name:
						</td>
						<td>
							<input type="text" name="fname" value="" />
						</td> <td></td>
                         <td align='right'>
								Short Name :
							</td>
                            <td>						
							<input type="text" name="sname" value="" />
						
							

							</td>
						
						</tr>
						<tr>
							<td align='right'>
								Street Address :
							</td>
							<td>
								<input type="text" name="address" value="" size="20" />
							</td><td></td>
                           
                           <td align='right'>
								Country:
							</td>
							<td>
								<font size="3" face="Verdana">
					 <select name="Ctype1">
							<option value="">--Select One--</option>
							<option value="India">India</option>
							<option value="America">America</option>
							<option value="Austrial">Austrial</option>
							<option value="Nezland">Nezland</option>
							<option value="pakistan">pakistan</option>
							<option value="Chaina">Chaina</option>
							<option value="Japan">Japan</option>
							<option value="Singpor">Singpor</option>
							
							</select> </font>
				
							</td>
							
							
							
						</tr>
						
						<tr>
							<td align='right'>
								phone :
							</td>
							<td>
							<input type="text" name="phone" value="" />
						</td><td></td>
						<td align='right'>
								State:
							</td>
							<td>
								<font size="3" face="Verdana">
					 <select name="Stype">
							<option value="">--Select One--</option>
							<option value="Telgna">Telgna</option>
							<option value="AP">AP</option>
							<option value="MP">Mp</option>
							<option value="Karntaka">Karntaka</option>
							<option value="maharstra">maharstra</option>
							
							
							</select> </font>
				 
							</td>
													<tr>
							<td align='right'>
								Mobile No :
							</td>
							<td>
								<input type="text" name="mobile" value="" size="20"
									onBlur="ValidateForm()" />
							</td><td></td>
							<td align='right'>
								City:
							</td>
							<td>
								<font size="3" face="Verdana">
					 <select name="Ctype">
							<option value="">--Select One--</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Chennai">Chennai</option>
							<option value="Bengulor">Bengulor</option>
							<option value="vizg">vizg</option>
							<option value="Vijawada">Vijawada</option>
							<option value="khammam">khammam</option>
							<option value="Thripathi">Thripathi</option>
							</select> </font>
				
							</td>
						</tr>
						<tr>
							<td align='right'>
								Email :
							</td>
							<td>
								<input type="text" name="email" value="" size="20"
									onBlur="ValidateForm()" />
							</td><td></td>
							<td align='right'>
								Fax:
							</td>
							<td>
								<input type="text" name="fax" value="" size="20"
									onChange="showStatus()" />
							</td>
						</tr>
						<tr>
							<td align='right'>
								Contact Person:
							</td>
							<td>
								<input type="text" name="cperson" value="" size="20"
									onBlur="ValidateForm()" />
							</td><td></td>
							<td align='right'>
								CPhone:
							</td>
							<td>
								<input type="text" name="cphone" value="" size="20"
									onChange="showStatus()" />
							</td>
							
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
						<tr></tr>
						<th colspan="6" bgcolor="#FFFACD">
							FRIM MASTER DEATILS
						</th>
						<tr></tr>
						<tr></tr>
						<tr>

					

						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Fname</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Lname</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Logintype</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Changepasswors</b>
							</font>
						</td><td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Edit</b>
							</font>
						</td>
						<td align="left" bgcolor="">
							<font size="4" color="#CF0000"><b>Delete</b>
							</font>
						</td>				
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

