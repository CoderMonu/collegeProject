
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<%
	String st = "";
	if (request.getParameter("userid") != null) {
%>
<%
	st = request.getParameter("userid");
%>
<%
	}
%>
<html>
<head>
	<script type="text/javascript">
	 
	 function CheckAvailable()
	 {
	   
	    var userid=document.getElementById("userid").value;
	    var user="";
	    if(userid==user)
	    {
	        alert("user id is required");
	        return false;
	    }
	    window.location.href="<%=request.getContextPath()%>/ChekUserAction?userid="+userid+"&path=./RegistrationForm.jsp";
	 }
	 
	 function  checkPass()
	 {	 
	   var pwd1=document.getElementById("userpwd").value;
	   var pwd2=document.getElementById("repwd").value;
	   if(pwd1!=pwd2){
	     alert("password not mathed");
	     return false;
	   }
	 }
	 
   
   </script>
   
   <script language="javascript">
function showAmount()
{

 var selectWidget = document.getElementById("acctype").value ;
 alert(selectWidget);
 if(selectWidget=="")
 {

alert("Plz select U R account type");
return false;
 
}
else if(selectWidget=="Current")
{
document.getElementById("accbal").value='1000';
 
 
}
else if(selectWidget=="JointAccount")
{
document.getElementById("accbal").value='5000';
  
}else if(selectWidget=="SavingAccount")
{
document.getElementById("accbal").value='500';
  
}
}
</script>
	<script language="JavaScript" type="text/javascript"
		src="<%=request.getContextPath()+"/scripts/ts_picker.js"%>"></script>
		
		<script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>" type="text/javascript"></script>

<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
	
 </head>
  
  <body bgcolor="#F5FFFA">
	

 <jsp:include page="Header.jsp"></jsp:include>
<br/>
         
      
										<table width="878" height="555" border="0" align="right">
											<tr>
												<td width="242"><jsp:include page="scroll.html" /></td>
												
												<td width="562">
													<form action="RegisterAction.jsp" method="post"
														name="register">
														<table width="200" border="0" height="10">
															<tr>
																<td height="10">
																	<div align="center" class="style25">

																		<%
																			if (request.getParameter("status") != null) {
																		%>
																		<%=request.getParameter("status")%>
																		<%
																			}
																		%>
																	</div>
																</td>
															</tr>
															<tr>
																<td>
																	<table width="481" border="0" align="center"
																		bordercolor="#CD817E" bgcolor="#F5FFFA">
																		<tr>
																			<td width="7" height="57" valign="top">
																				&nbsp;
																			</td>
																			<td width="471">
																				<div align="center">
																					<span class="style11">R e g i s t r a t i o
																						n</span>
																				</div>
																			</td>
																			<td width="10">
																				&nbsp;
																			</td>
																		</tr>
																		<tr>
																			<td align="right">
																				&nbsp;
																			</td>
																			<td>
																				<table width="407" border="0" align="center">
																					<tr>
																						<td width="128">
																							<span class="style17">First Name </span>
																						</td>
																						<td width="269">
																							<label>
																								<input type="text" name="fname">
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Last Name </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="lname">
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Birth Date </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="bdate" readonly>
																								<a
																									href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
																									<img src="images/cal.gif" width="18"
																										height="18" border="0" /> </a>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">City</span>
																						</td>
																						<td>
																							<label>
																								<select name="city">
																									<option>
																										Hyderabad
																									</option>
																									<option>
																										Mumbai
																									</option>
																									<option>
																										RANCHI
																									</option>
																								</select>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">State</span>
																						</td>
																						<td>
																							<label>
																								<select name="state">
																									<option>
																										Andhra pradesh
																									</option>
																									<option>
																										Maharashtra
																									</option>
																									<option>
																										Chandighar
																									</option>
																								</select>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Country</span>
																						</td>
																						<td>
																							<label>
																								<select name="country">
																									<option>
																										India
																									</option>
																								</select>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Login Name </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="loginname">
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Password</span>
																						</td>
																						<td>
																							<label>
																								<input name="password" type="password"
																									id="password">
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17"> <label>
																									Secret Question
																								</label> </span>
																						</td>
																						<td>
																							<select name="squest">
																								<option value="1">
																									What is your favorite pastime?
																								</option>
																								<option value="2">
																									Who was your childhood hero?
																								</option>
																								<option value="3">
																									What was the name of your first school?
																								</option>
																								<option value="4">
																									Where did you meet your spouse?
																								</option>
																								<option value="5">
																									What is your favorite sports team?
																								</option>
																								<option value="6">
																									What is your father's middle name?
																								</option>
																								<option value="7">
																									What was your high school mascot?
																								</option>
																								<option value="8">
																									What make was your first car or bike?
																								</option>
																								<option value="9">
																									What is your pet's name?
																								</option>
																										<option value="9">
																									Hai how are u?
																								</option>
																							</select>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="2">
																							<span class="style17"> </span><span
																								class="style18"> <label>
																									<input type="checkbox" name="ch" value="1"
																										onClick="check()">
																									<span class="style20">Own Question</span>
																								</label> </span><span class="style17"> </span>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Own Question </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="ownquest" disabled>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17">Secret Answer </span>
																						</td>
																						<td>
																							<input name="sanswer" type="text">
																						</td>
																					</tr>
																					<tr>
																						<td colspan="2">
																							<div align="center">
																								<input name="Input" type="submit"
																									value="Register">
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td>
																				&nbsp;
																			</td>
																		</tr>
																		<tr>
																			<td>
																				&nbsp;
																			</td>
																			<td valign="baseline">
																				<img src="images/regisbot.gif" alt="a" width="465"
																					height="4">
																			</td>
																			<td>
																				&nbsp;
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</form>
												</td>
											</tr>
										</table>
										<h1 align="center">
											&nbsp;
										</h1>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
				<TR vAlign=top>
					<TD height="2" colSpan=4>
		</TABLE>
	</BODY>
</html>