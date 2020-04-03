<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page import="com.nit.bean.UserBean"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.*"%>

<%
	if (session.getAttribute("logintype") == null) {

		RequestDispatcher rd = request
				.getRequestDispatcher("./Login.jsp");
		rd.forward(request, response);
%>
<%
	}
%>

<html>
	<head>
<script language="javascript" >
function checkName()
{
re = /^[A-Za-z]+$/;
if(!re.test(document.department.departmentLocation.value))
{
alert('departmentLocation not allows to numaric values');
}
}</script>
		<script language="JavaScript"
			src="<%=request.getContextPath()
					+ "/scripts/gen_validatorv31.js"%>"
			type="text/javascript"></script>
			
	
	<script language="javascript">
function sub() {
	var stationid = document.station.state_id.value;
    if(stationid==""){
      alert("Please select any state");
      return false;
    }else{
	   location.href = "./AddPoliceStation.jsp?state_id=" +stationid;
	   
	}
}
</script>


<script type="text/javascript">


function City()
{

var districtname=document.getElementById('districtname').value;
var statename = document.getElementById('stname').value;
<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewCityForDG?districtname="+districtname+"&statename="+statename;
}
}

</script>








<script type="text/javascript">


function policestation()
{

var cityname=document.getElementById('cityname').value;	
var districtname=document.getElementById('districtname').value;
var statename = document.getElementById('stname').value;
<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewAllPsForDG?cityname="+cityname+"&districtname="+districtname+"&statename="+statename;
}
}

</script>




<script type="text/javascript">

function departname()
{

var districtname=document.getElementById('districtname').value;
var statename=document.getElementById('stname').value;
var stationname=document.getElementById('stationname').value;
<!--alert(sname);-->

if(stationname=="")
alert(stationname);
else{

window.location.href="./ViewDeptNameAction?stationname="+stationname+"&districtname="+districtname+"&statename="+statename;
}
}

</script>
	
	
			
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
				
				<font color=""><center>DG REGISTRATION FORM</center>
				
				</h2> </b>
		</center>
		<form method='post'
			action="<%=request.getContextPath() + "/AddDGAction"%>"
			name="station">
			<table border='7' cellspacing=2 align="center" bgcolor="" bordercolor="FAFAD2">
			
			     <th colspan="6" bgcolor="#FFFACD">
						Station Details
					</th>     
			
				<tr>
					<td align='right'>
						<b>State Name:</b>
					</td>
					<td>
					
					<select name="statename" id="select"
							onchange="javascript:if(document.station.statename.value==''){alert('Select Any State');} else{ location.href='./ViewDistrictNameForDG?statename='+document.station.statename.value;}">
							<c:choose>
								<c:when test="${requestScope.statename ne null}">
									<option value="${requestScope.statename}">
										${requestScope.statename}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty stateinfo}">
										<c:forEach var="State" items="${stateinfo}">
											<option value="${State.statename}">
												${State.statename}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						<input type="hidden" value="${requestScope.statename}" name="stname">
							
					
					</td>
					<td align='right'>
							Browse Photo :
						</td>
						<td>
							<input type="file" name="photo" class="textfield"
								onChange="preview(this)" />
						</td>
					
				</tr>
				<tr>
					<td align='right'>
						<b>District :</b>
					</td>
					<td>
						
						<select name="districtname" id="select" onchange="return City();">
							<c:choose>
								<c:when test="${requestScope.districtname ne null}">
									<option value="${requestScope.districtname}">
										${requestScope.districtname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
								</c:otherwise>
							</c:choose>



							<c:if test="${not empty distinfo}">
								<c:forEach var="State" items="${distinfo}">
									<option value="${State.districtname}">
										${State.districtname}
									</option>
								</c:forEach>
							</c:if>



						</select>
					
						
						</td>
						
						<td border="0" align="left" rowspan="5" colspan='2'>


							<img alt="See Photo Here" id="previewField" src="images/flag.gif"
								height="150" width="120" />

						</td>
				</tr>
				
				
				
				
				<tr>
					<td align='right'>
						<b>CityName:</b>
					</td>
					<td>
					
					<select name="cityname" id="select" onchange="return policestation();">
							<c:choose>
								<c:when test="${requestScope.cityname ne null}">
									<option value="${requestScope.cityname}">
										${requestScope.cityname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty cityinfo}">
										<c:forEach var="station" items="${cityinfo}">
											<option value="${station.cityname}">
												${station.cityname}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						
			
					
					</td>
					
				</tr>
				
				
				
				
			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<tr>
					<td align='right'>
						<b>PoliceStationName:</b>
					</td>
					<td>
					
					<select name="stationname" id="select" >
							<c:choose>
								<c:when test="${requestScope.stationname ne null}">
									<option value="${requestScope.stationname}">
										${requestScope.stationname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty psinfo}">
										<c:forEach var="station" items="${psinfo}">
											<option value="${station.stationname}">
												${station.stationname}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						
			
					
					</td>
					
				</tr>
				

				
				
				
				
				<tr>
					<td align='right'>
						<b>Loginid :</b>
					</td>
					<td>
						<input type='text' name="loginid">
					</td>
				<tr>
				
				<tr>
					<td align='right'>
						<b>password :</b>
					</td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
						<td align='right'>
							First Name :
						</td>
						<td>
							<input type="text" name="firstname" value="" />
						</td>
						</tr>
						<tr>
						<td align='right'>
							Middle Name :
						</td>
						<td>
							<input type="text" name="middlename" value="" size="20" />
						</td>
			 </tr>
			 <tr>
						<td align='right'>
							Last Name :
						</td>
						<td>
							<input type="text" name="lastname" value="" size="20" />
						</td>
						<td align='right'>
                           
						</td>
						<td>
                      
						</td>
					</tr>			
				
				
				<td></td>
						<td></td>
						<tr>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
						<tr></tr>
						<tr></tr>
				
				
				
				
				
				<th colspan="6" bgcolor="#FFFACD">
							<center>
								Contact Details
							</center>
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
                           Email:
						</td>
						<td>
                         <input type="text" name="email" value="" size="20" />
                         <td align='right'>
								Birth Date :
							</td>
							<td width='256'>
								<input type="text" name="dob" value="" size="20"
									readonly="readonly" />
								<a
									href="javascript:show_calendar('document.station.dob', document.station.dob.value);">
									<img src="images/cal.gif" alt="a" width="18" height="18"
										border="0" /> </a>
							</td>
							<td>

							</td>
						
						</tr>
						<tr>
							<td align='right'>
								House No :
							</td>
							<td>
								<input type="text" name="houseno" value="" size="20" />
							</td>
                           
                           <td align='right'>
								Street :
							</td>
							<td>
								<input type="text" name="street" value="" size="20" />
							</td>
							
							
							
						</tr>
						
						<tr>
							<td align='right'>
								Gender :
							</td>
							<td align='right'>
							<select name="gender">
									<option value="select" selected="true">
										<font size="3" face="Verdana">Select </font>
									</option>

									<option value="Male">
										<font size="3" face="Verdana">Male</font>
									</option>
									<option value="Female">
										<font size="3" face="Verdana">Female</font>
									</option>
									
								</select>
							<td align='right'>
								Country :
							</td>
							<td>
								<input type="text" name="country" value="" size="20" />
							</td>
						</tr>
						<tr>
							<td align='right'>
								Phone No :
							</td>
							<td>
								<input type="text" name="phoneno" value="" size="20"
									onBlur="ValidateForm()" />
							</td>
							<td align='right'>
								Pin :
							</td>
							<td>
								<input type="text" name="pincode" value="" size="20"
									onChange="showStatus()" />
							</td>
						</tr>
						<th colspan="5">
							&nbsp;
						</th>
						<tr></tr>
						<tr></tr>
						<th colspan="6" bgcolor="#FFFACD">
							Office Details
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
								Designation :
							</td>
							<td>
								<input type="text" name="desig" value="" size="20" />
							</td>
							<td align='right'>
								Hire Date :
							</td>
							<td width='256'>
								<input type="text" name="hiredate" value="" size="20"
									readonly="readonly" />
								<a
									href="javascript:show_calendar('document.station.hiredate', document.station.hiredate.value);">
									<img src="images/cal.gif" alt="a" width="18" height="18"
										border="0" /> </a>
							</td>
						</tr>
						
						<tr>
							<td align='right'>
								Logintype Type :
							</td>
							<td>
								<select name="logintype">
									<option value="select" selected="true">
										<font size="3" face="Verdana">Select </font>
									</option>

									<option value="DG">
										<font size="3" face="Verdana">DG</font>
									</option>
									
								</select>
							</td>
							
						</tr>
						
						<tr>
							<td></td>
							<td align="right">
								<font size="3" face="Verdana"> <input type="submit"
										name="register" value="Register" />&nbsp; </font>
							</td>
							<td align="left">
								<font size="3" face="Verdana"> <input type="reset"
										name="cancel" value="Cancel" /> </font>
							</td>
							<td></td>
						</tr>
				
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

