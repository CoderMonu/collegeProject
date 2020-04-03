<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String user=(String)session.getAttribute("ownuser");
	if (user.equals(null)) {
		response.sendRedirect("/Logout.jsp");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script language="JavaScript" type="text/javascript"
			src="scripts/ts_picker.js"></script>
		<script type="text/javascript">
     
    
     function ShowTimeTable()
    {     
          var xmlHttp=null;
          try{
              if(window.XMLHttpRequest){
                xmlHttp=new XMLHttpRequest();
            }else{
                 xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }          
        }catch(e){
           alert("xmlHttp object creation failed");
        }   
                   xmlHttp.onreadystatechange=function()
                   {  
                     if(xmlHttp.readyState==4){                       
                        document.getElementById("result").innerHTML = xmlHttp.responseText;                      
                        xmlHttp.responseText=null;
                        xmlHttp.abort();
                        }
                    }
           var url="./ViewTimeTable.jsp"         
           xmlHttp.open("GET", url , true);
           xmlHttp.send(null);   
    }
    
    function HowManyPointNeed()
    {     
          var xmlHttp1=null;
          try{
              if(window.XMLHttpRequest){
                xmlHttp1=new XMLHttpRequest();
            }else{
                 xmlHttp1=new ActiveXObject("Microsoft.XMLHTTP");
            }          
        }catch(e){
           alert("xmlHttp object creation failed");
        }   
                   xmlHttp1.onreadystatechange=function()
                   {  
                     if(xmlHttp1.readyState==4){                       
                        document.getElementById("result").innerHTML = xmlHttp1.responseText;                      
                        xmlHttp1.responseText=null;
                        xmlHttp1.abort();
                        }
                    }
           var url="./HowManyPointsINeed.jsp"         
           xmlHttp1.open("GET", url , true);
           xmlHttp1.send(null);   
    }
    function CheckPointsNeed(){
	       var from=document.getElementById("from").value;
	       var to=document.getElementById("to").value;
	       var xmlHttpcp=null;
           try{
              if(window.XMLHttpRequest){
                xmlHttpcp=new XMLHttpRequest();
            }else{
                 xmlHttpcp=new ActiveXObject("Microsoft.XMLHTTP");
            }          
        }catch(e){
           alert("xmlHttp object creation failed");
        }   
                xmlHttpcp.onreadystatechange=function()
                 {  
                    if(xmlHttpcp.readyState==4){                       
                    document.getElementById("result").innerHTML = xmlHttpcp.responseText;                      
                    xmlHttpcp.responseText=null;
                    xmlHttpcp.abort();
                     }
                  }
           var url="./HowManyPointsINeed?from="+from+"&to="+to;         
           xmlHttpcp.open("GET", url , true);
           xmlHttpcp.send(null);
           xmlHttpcp.abort();   
	  }
     function ChangePass()
    {     
          var xmlHttpf=null;
          try{
              if(window.XMLHttpRequest){
                xmlHttpf=new XMLHttpRequest();
            }else{
                 xmlHttpf=new ActiveXObject("Microsoft.XMLHTTP");
            }          
        }catch(e){
           alert("xmlHttp object creation failed");
        }   
                   xmlHttpf.onreadystatechange=function()
                   {  
                     if(xmlHttpf.readyState==4){                       
                        document.getElementById("result").innerHTML = xmlHttpf.responseText;                      
                        xmlHttpf.responseText=null;
                        xmlHttpf.abort();
                        }
                    }
           var url="./ChangePassword.jsp"         
           xmlHttpf.open("GET", url , true);
           xmlHttpf.send(null);   
    }
    function UpdateNewPass()
    {
    alert("dskkldskjf");
    var uid=document.getElementById("userid").value;
    var pwd=document.getElementById("pwd").value;
    var newpwd=document.getElementById("newpwd").value;
    if(pwd==""){
      alert("please enter new password");
      document.forms.password.pwd.focus();
      return false;
    }
    if(pwd!=newpwd){
      alert("password not matched");
      document.forms.password.newpwd.focus();
      return false;
    }
     var xmlHttp=null;
          try{
              if(window.XMLHttpRequest){
                xmlHttp=new XMLHttpRequest();
            }else{
                 xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }          
        }catch(e){
           alert("xmlHttp object creation failed");
        }   
                   xmlHttp.onreadystatechange=function()
                   {  
                     if(xmlHttp.readyState==4){                       
                        document.getElementById("success").innerHTML = xmlHttp.responseText;                      
                        xmlHttp.responseText=null;
                        xmlHttp.abort();
                        }
                    }
           var url="./ChangeUserPass?pwd="+pwd;         
           xmlHttp.open("GET", url , true);
           xmlHttp.send(null);   
    }
      function ShowPoints(){
	     var xmlHttpg=null;
           try{
              if(window.XMLHttpRequest){
                xmlHttpg=new XMLHttpRequest();
            }else{
                 xmlHttpg=new ActiveXObject("Microsoft.XMLHTTP");
            }          
        }catch(e){
           alert("xmlHttp object creation failed");
        }   
                xmlHttpg.onreadystatechange=function()
                 {  
                    if(xmlHttpg.readyState==4){                       
                    document.getElementById("result").innerHTML = xmlHttpg.responseText;                      
                    xmlHttpg.responseText=null;
                    xmlHttpg.abort();
                     }
                  }
           var url="./ShowMyPoints";         
           xmlHttpg.open("GET", url , true);
           xmlHttpg.send(null); 
	  }
      
  </script>
	</head>
	<body bgcolor="#ff0ffff">
		<table width="960">
			<tr>
				<td colspan="3">
					<jsp:include page="./FlyerHeader.jsp"></jsp:include>
				</td>
			</tr>
			<tr>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td colspan="3" bgcolor="pink"></td>
			</tr>
			<tr>
				<td colspan="3" height="240" valign="top">
					<table width="960">
						<tr>
							<td width="100" valign="top">
								<table width="100">
									<tr>
										<td>
											<a href="./GetUserProfile"
												onmouseover="javascript:document.img1.src='images/icon_myaccount1.gif' "
												onmouseout="javascript:document.img1.src='images/icon-myaccount-trans.png' ">
												<img src="images/icon_myaccount1.gif" width="120"
													height="40" name="img1" border="0"> </a>
										</td>
									</tr>
									<tr>
										<td></td>
									</tr>
									<tr>
										<td>
											<a href="./FlyerChangePass.jsp"
												onmousemove="javascript:document.img2.src='images/changepass_2.jpg'"
												onmouseout="javascript:document.img2.src='images/change_pass_on.gif' ">
												<img width="100" height="30" src="images/changepass_2.jpg"
													name="img2" border="0"> </a>
										</td>
									</tr>
									<tr>
										<td align="center">
											<a href="./ShowMyPoints"
												style="text-decoration: none">MyPoints</a>
										</td>
									</tr>
									<tr>
										<td align="center">
											<a href="./GetUserMails" style="text-decoration: none">Inbox</a>
										</td>
									</tr>
									<tr>
										<td align="center">
											<a href="./ViewServicesToFlyer" style="text-decoration: none;">FlightDetails</a>
										</td>
									</tr>
									<tr>
										<td align="center">
											<a href="./MailBox.jsp" style="text-decoration: none">ComposeMail</a>
										</td>
									</tr>
									<tr>
										<td align="center">
											<a href="./LogoutAction">Logout</a>
										</td>
									</tr>
								</table>
							</td>
							<td width="720" bgcolor="#ff0ffff" align="left" valign="top">
								<table width="700">
									<tr>
										<td align="right">
											<font color="gray" size="4"> Welcome To <c:out
													value='${sessionScope.ownuser}'></c:out> </font>
										</td>
									</tr>
									<tr>
										<td>
											<a href="./BookAFlight.jsp"
												style="font-weight: 150; text-decoration: none">Book A
												Flight Now</a>
											<br>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#" style="font-weight: 150; text-decoration: none"
												onclick="HowManyPointNeed();">How many points do you
												need?</a>
										</td>
									</tr>
									<tr>
										<td bgcolor="lightgray">
										</td>
									</tr>
									<tr>
										<td>
										</td>
									</tr>
									<tr>
										<td align="center">
											<div id="result">
												<table width="720">
													<tr>
														<td>
															<font face="verdana" size="2"> *Flights are not
																available for requested date(s). See other dates below.<br>
																*click the below link to see flights time table and
																Flight names and Number.<br> *we are providing
																services based on week days.<br>
																<br> <a href="#" style="text-decoration: none"
																onclick="ShowTimeTable();">FlightsTimeTable</a> </font>
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<td width="180">
								<marquee behavior="scroll" direction="up"
									style="padding: 200px 0pt;" scrollamount="10">
									<img width="140" src="images/flier2.jpg">
									<br>
									<img width="140" src="images/f7.jpg" height="140">
									<br>
									<img width="140" src="images/f3.gif">
								</marquee>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3" width="960">
					<jsp:include page="./Footer.jsp"></jsp:include>
				</td>
			</tr>
		</table>
	</body>
</html>