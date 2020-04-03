<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.dts.core.dao.*,com.dts.core.model.*,com.dts.dae.dao.*,com.dts.dae.model.*,com.dts.btisqr.dao.*,com.dts.btisqr.model.*"%>
<%@ page import="com.dts.core.util.*,java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 16px;
	font-weight: bold;
}
.style5 {color: #000000; font-weight: bold; }
.style11 {
	font-size: 12px
}
.style14 {font-size: 12px; font-weight: bold; color: #000000; }
-->
</style>
 <script type="text/javascript" src="scripts/general.js"> </script>
   <script type="text/javascript" src="scripts/ts_picker.js"> </script>
   <script language="JavaScript" src="scripts/pop-closeup.js"></script>
		<script language="JavaScript" src="scripts/gen_validatorv31.js"></script>
<script language="javascript">
function validate()
{
   var temp = document.register;
   if(temp.fname.value=="" || temp.lname.value=="" || temp.bdate.value=="" || temp.loginname.value=="" || temp.password.value=="" || temp.sanswer.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   if(temp.ch.checked && temp.ownquest.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   return true;
}
function check()
{
    var form = document.register;
    if(!form.ch.checked){
          form.ownquest.disabled=true;
          form.squest.disabled=false;
    }
    else{
          form.ownquest.disabled=false;
          form.squest.disabled=true;
    }
}
</script>
</head>
<body>
<!-- start header -->
<div id="logo">
	<h1><jsp:include page="header.html"/></h1>
	
</div>
<div id="menu">
	<ul>
	 <jsp:include page="Adminoptions.html"/> 
	</ul>
</div>
<!-- end header -->
<hr />
<!-- start latest post -->
<div id="latest-post" class="wide-post">
	<h1 class="title"><a href="#">Welcome to Defect Tracking System!</a></h1>
	<div class="entry">
	  <p>&nbsp;</p>
	   
	    <table width="646" height="255" border="0">
          <tr>
            <td width="255" height="208" valign="top"><img src="images/img07.jpg" alt="" width="114" height="114" class="left" /></td>
            <td width="381" valign="top"><p>&nbsp;</p>
            
            <fieldset>
               <legend class="style1">New Member</legend>
               <br /> 
            <form name="register" method="post" action="NewMemberAction.jsp">
                   
                    <input type="hidden" name="tpage" value="<%=request.getParameter("tpage")%>"/>
                    <table width="320" border="0" align="center">
                      <tr>
                        <td class="tiny style5 style11">First Name </td>
                        <td><input type="text" name="fname" class="textfield"/>                        </td>
                      </tr>
                      <tr>
                        <td><span class="style14">Last Name </span></td>
                        <td><input type="text" name="lname" class="textfield"/>                        </td>
                      </tr>
                      <tr>
                        <td class="style5">Role</td>
                        <td><label>
                          <select name="role" id="role">
                            <option value="manager">Manager</option>
                            <option value="developer">Developer</option>
                            <option value="tester">Tester</option>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td><span class="style14">Birth Date </span></td>
                        <td><input type="text" name="bdate" value="1-1-1980" />
                          <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
                      </tr>
                      <tr>
                        <td class="style14">House No</td>
                        <td><input type="text" name="hno" class="textfield"/></td>
                      </tr>
                      <tr>
                        <td class="style14">Street</td>
                        <td><input type="text" name="street" class="textfield"/></td>
                      </tr>
                      <tr>
                        <td><span class="style14">City</span></td>
                        <td><select name="city">
                            <option>Hyderabad</option>
                            <option>Mumbai</option>
                          </select>                        </td>
                      </tr>
                      <tr>
                        <td><span class="style14">State</span></td>
                        <td><select name="state">
                            <option>Andhra pradesh</option>
                            <option>Maharashtra</option>
                          </select>                        </td>
                      </tr>
                      <tr>
                        <td><span class="style14">Country</span></td>
                        <td><select name="country">
                            <option>India</option>
                          </select>                        </td>
                      </tr>
                      <tr>
                        <td class="style14">Pincode</td>
                        <td><input type="text" name="pincode" class="textfield"/></td>
                      </tr>
                      <tr>
                        <td class="style14">Contact No</td>
                        <td><input type="text" name="phoneno" class="textfield"/></td>
                      </tr>
                      <tr>
                        <td class="style14">Email</td>
                        <td><input type="text" name="email" class="textfield"/></td>
                      </tr>
                      <tr>
                        <td><span class="style14">Login Name</span></td>
                        <td><input type="text" name="loginname" />                        </td>
                      </tr>
                      <tr>
                        <td><span class="style14">Password</span></td>
                        <td><input name="password" type="password" id="password" />                        </td>
                      </tr>
                      <tr>
                        <td><span class="style14"> Secret Question </span></td>
                        <td><select name="squest">
                            <option value="1">What is your favorite pastime?</option>
                            <option value="2">Who your childhood hero?</option>
                            <option value="3">What is the name of your first school?</option>
                            <option value="4">Where did you meet your spouse?</option>
                            <option value="5">What is your favorite sports team?</option>
                            <option value="6">What is your father's middle name?</option>
                            <option value="7">What was your high school mascot?</option>
                            <option value="8">What make was your first car or bike?</option>
                            <option value="9">What is your pet's name?</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td colspan="2"><span class="style14">
                        <input type="checkbox" name="ch" value="1" onclick="check(register)" />
                         Own Question </span></td>
                      </tr>
                      <tr>
                        <td><span class="style14">Own Question</span></td>
                        <td><input type="text" name="ownquest" disabled="disabled" />                        </td>
                      </tr>
                      <tr>
                        <td><span class="style14">Secret Answer</span></td>
                        <td><input name="sanswer" type="text" /></td>
                      </tr>
                      <tr>
                        <td height="11" colspan="2"></td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <input name="Input" type="submit" value="Register" />
                        </div></td>
                      </tr>
                    </table>
            </form>
            <script language="JavaScript" type="text/javascript">
            var frmvalidator  = new Validator("register");
            frmvalidator.addValidation("fname","req","Please enter your First Name");
            frmvalidator.addValidation("fname","maxlen=20",	"Max length for FirstName is 20");
            frmvalidator.addValidation("fname","alpha"," First Name Alphabetic chars only");

            frmvalidator.addValidation("lname","req","Please enter your Last Name");
            frmvalidator.addValidation("lname","maxlen=20","Max length is 20");
            frmvalidator.addValidation("lname","alpha"," Last Name Alphabetic chars only");
            frmvalidator.addValidation("bdate","req","Please enter your DOB"); 
            frmvalidator.addValidation("hno","req","Please enter your House Number");

            frmvalidator.addValidation("street","req","Please enter your Street ");
            frmvalidator.addValidation("street","maxlen=20","Max length is 20");
            frmvalidator.addValidation("street","alpha"," Street Alphabetic chars only");

            frmvalidator.addValidation("pincode","req","Please enter your pin Number");
            frmvalidator.addValidation("pincode","maxlen=10");
            frmvalidator.addValidation("pincode","numeric");
           frmvalidator.addValidation("pincode","Pin");

           frmvalidator.addValidation("phoneno","req","Please enter your phone Number");
           
           frmvalidator.addValidation("phoneno","maxlen=10");
           frmvalidator.addValidation("phoneno","numeric");
          frmvalidator.addValidation("phoneno","Phone");

          frmvalidator.addValidation("email","maxlen=30");
          frmvalidator.addValidation("email","req","Please enter your emailid");
          frmvalidator.addValidation("email","email");

          frmvalidator.addValidation("loginname","req","Please enter your Username");
          frmvalidator.addValidation("password","req","Please enter your Password");
          //frmvalidator.addValidation("squest","dontselect=0");
          frmvalidator.addValidation("sanswer","req","Please enter your Answer");

            
            </script>
            
            
            </fieldset></td>
          </tr>
      </table>
    
	  
  </div>
  <div class="bottom"></div>
</div>
<!-- end latest post -->
<!-- start recent posts & comments -->
<div id="recents" class="two-columns"></div>
<!-- end recent posts & comments -->
<!-- start submenu -->
<div id="submenu"></div>
<!-- end submenu -->

</body>
</html>
