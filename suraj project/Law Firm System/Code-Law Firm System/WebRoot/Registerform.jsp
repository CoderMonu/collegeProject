<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.*"%>



<html>
	<head>

		<script type="text/javascript" src="jquery.js">
</script>

<script type="text/javascript">

$(document).ready(function(){
$('#tab').hide();

$('#b').click(function(){

var fname=$('#fname').val();
$('#firstname').val(fname);

var lname=$('#ltname').val();
$('#lastname').val(lname);

var uname=$('#Uname').val();
$('#UserName').val(uname);

$('#tab').show();

});



});
</script>


		<script language="javascript">
function checkName() {
	re = /^[A-Za-z]+$/;
	if (!re.test(document.department.departmentLocation.value)) {
		alert('departmentLocation not allows to numaric values');
	}
}</script>
		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
			type="text/javascript">
</script>


		<script language="javascript">
function sub() {
	var stationid = document.station.state_id.value;
	if (stationid == "") {
		alert("Please select any state");
		return false;
	} else {
		location.href = "./AddPoliceStation.jsp?state_id=" + stationid;

	}
}
</script>

		<script type="text/javascript">

function policestation() {
	var cityname = document.getElementById('cityname').value;
	var districtname = document.getElementById('districtname').value;
	var statename = document.getElementById('stname').value;
<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewpsnameAction?cityname="+cityname+"&districtname="+districtname+"&statename="+statename;
}
}

</script>

		<script type="text/javascript">

function departname() {

	var districtname = document.getElementById('districtname').value;
	var statename = document.getElementById('stname').value;
	var stationname = document.getElementById('stationname').value;
<!--alert(sname);-->

if(stationname=="")
alert(stationname);
else{

window.location.href="./ViewDeptNameAction?stationname="+stationname+"&districtname="+districtname+"&statename="+statename;
}
}

</script>





		<script type="text/javascript">

function City() {

	var districtname = document.getElementById('districtname').value;
	var statename = document.getElementById('stname').value;
<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewCityForCitizen?districtname="+districtname+"&statename="+statename;
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
	<body background="./images/111.jpg">





		<div align="left">
			<center>
				<img height="248" width="984" border="1" align="top"
					src="./images/33.jpg">
				<b><font size="100" color="#da0d00"></font> </b>
			</center>
		</div>


		<jsp:include page="generaloptions.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
		<center>
			<b><h2>

		<%
		String s2 = (String) request.getAttribute("status");if(s2!=null){%>
		<center>
		<td align=center><font color=red><b><%=s2 %> <%} %></b></font></td></center>
		<br/><br/>


					<font color="#BDB76B"><center>
							USER REGISTRATION FORM
						</center>
				</h2> </b>
		</center>
		<form method='post'
action="<%=request.getContextPath() + "/RegisterAction"%>"
name="station">
			<table border='5' cellspacing=2 align="center" bgcolor="orange">

				<th colspan="6" bgcolor="#BDB76B">
					User Details
				</th>

				<tr>
					<td align='right'>
						<b>First Name:</b>
					</td>
					<td>
						<input type="text" name="fname" value=""  id="fname" />
					</td>
					<tr>
						<td align='right'>
							<b>Last Name:</b>
						</td>
						<td>
							<input type="text" name="ltname" value="" id="ltname"/>
					</tr>
					</td>
					<tr>
						<td align="right">
							<font size="4">UserType:</font>
						</td>
						<td>
							<font size="3" face="Verdana"> <select name="USertype" id="USertype">
									<option value="">
										--Select One--
									</option>
									<option value="admin">
										Adminstrater
									</option>
									<option value="NormalUser">
										NormalUser
									</option>


								</select> </font>
							<!--<input type="text" name="username"/>
				-->
						</td>
					</tr>
					<tr>
						<td align='right'>
							<b>UserName :</b>
						</td>
						<td>
							<input type="text" name="Uname" id="Uname"/>
						</td>
					</tr>
					<tr>
						<td align='right'>
							Password :
						</td>
						<td>
							<input type="password" name="password" value="" id="password"/>
						</td>
						<tr>
							<td align='right'>
								Conform Password :
							</td>
							<td>
								<input type="password" name="cpass" value="" id="cpass"/>
						</tr>
						</td>

						<tr>
							<td></td>
							<td align="center">
								<a href="./ViewUserAction">view</a>
								<font size="3" face="Verdana"> <input type="button"
										name="register" value="Save" id="b"/>&nbsp; </font>
							</td>
							<td>&gt;</td>
						</tr>
						
						<tr><td>
						<table id="tab">
							<tr ><td><input type="text" id="firstname" readonly="readonly"/></td></tr>
		            <tr ><td><input type="text" id="lastname" readonly="readonly"/></td></tr>
						<tr ><td><input type="text" id="UserName" readonly="readonly"/></td></tr>
						
						
						<tr><td><input type="submit"	name="register" value="Save" /></td></tr>
				</table>
					</td></tr>
							</table>
			<table >
		</form>
		<br />
 <jsp:include page="Footer.jsp"></jsp:include>
	</body>
</html>

