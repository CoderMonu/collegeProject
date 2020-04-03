<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page import="com.dts.dae.dao.ProfileDAO,com.dts.dae.dto.RegistrationBean,com.dts.core.util.DateWrapper" %>

<%@ page import="java.util.*,com.dts.aoc.dao.EventsDAO,com.dts.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.dts.aoc.dao.VacancyDAO,com.dts.aoc.dto.VacancyDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.dts.aoc.dao.MessageDAO,com.dts.aoc.dto.MessageDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.dts.aoc.dao.FriendDAO,com.dts.aoc.dto.FriendDTO,com.dts.core.util.DateWrapper" %>
<HTML><HEAD>


	<script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>" type="text/javascript"></script>
		<style type="text/css">
.Title {
font-family:Verdana;
font-weight:bold;
font-size:8pt
}
.Title1 {font-family:Verdana;
font-weight:bold;
font-size:8pt
}
        </style>
        
        <script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<script type="text/javascript" src="scripts/validate.js"></script>
<script type="text/javascript" src="scripts/ts_picker.js"></script>
	</head>
	<body bgcolor="#F5FFFA">
	

 <jsp:include page="Header.jsp"></jsp:include>
<br/>         
        
       
        
            <TABLE width=900 height="358" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
             
                <TD vAlign=top align=right colSpan=2><div align="left">
                    <span class="style1"><FONT size="2" color="red"> <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script></FONT></span><BR>
                </div></TD>
                </TR>
             
         
             
            <TR>
                <TD height="381" colspan="5" align="right" vAlign=top><table width="888" height="448" border="0" align="right">
                <tr>
                  <td width="242">
				 <jsp:include page="scroll.html"/> 
				  </td>
                  <td width="412" valign="top">
                        <td width="462"><form action="UpdateProfileAction.jsp" method="post" name="register">
                  <table width="200" border="0">
                    <tr>
                      
                    </tr>
                    <tr>
                      <td><table width="481" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE">
                        <tr>
                          <td width="7" height="57" valign="top">&nbsp;</td>
                          <td width="471"><div align="center"><span class="style11">P e r s o n a l D e t a i l s</span></div></td>
                          <td width="10">&nbsp;</td>
                        </tr>
                        <%
                        String username=(String)session.getAttribute("user");
                        RegistrationBean rb = new ProfileDAO().getProfile(username);
                        %>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td>
                          <input name="loginname" type="hidden" value="<%=rb.getLoginID()%>">                          
                          <table width="407" border="0" align="center">
                              <tr>
                                <td width="128"><span class="style17">First Name </span></td>
                                <td width="269"><label>
                                  <input type="text" name="fname" value="<%=rb.getFirstName()%>">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Last Name </span></td>
                                <td><label>
                                  <input type="text" name="lname" value="<%=rb.getLastName()%>">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Birth Date </span></td>
                                <td><label>   
                                  <input type="text" name="bdate" readonly value="<%=DateWrapper.parseDate(rb.getBirthDate1())%>"><a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
<img src="images/cal.gif" width="18" height="18" border="0"/></a>
                                </label></td> 
                              </tr>
                              <tr>
                                <td><span class="style17">City</span></td>
                                <td><label>
                                  <select name="city">
                                    <option>Hyderabad</option>
                                    <option>Mumbai</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">State</span></td>
                                <td><label>
                                  <select name="state">
                                    <option>Andhra pradesh</option>
                                    <option>Maharashtra</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Country</span></td>
                                <td><label>
                                  <select name="country">
                                    <option>India</option>
                                  </select>
                                </label></td>
                              </tr>
                              
                              <tr>
                                <td colspan="2"><div align="center">
                                    <input name="Input" type="submit" value="Update">
                                </div></td>
                              </tr>
                          </table></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td valign="baseline"><img src="images/regisbot.gif" alt="a" width="465" height="4"></td>
                          <td>&nbsp;</td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
                </form></td>
              </tr>
            </table>
			<h1 align="center">&nbsp;</h1>
			</TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
</TABLE>
</BODY></HTML>
  
   

      

