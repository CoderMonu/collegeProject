<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page import="com.dts.aoc.dao.AcadamicDAO,com.dts.aoc.dto.AcadamicDTO,com.dts.core.util.DateWrapper" %>

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
                                <td width="412" valign="top"> <form action="AcadamicUpdateAction.jsp" method="post" name="acadamicupdate">
                  <input type="hidden" name="loginname" value="<%=(String)session.getAttribute("user")%>"/>
                    <table width="200" border="0" align="center">
                      <tr>
                        <td><div align="center" class="style25">
                            <% if(request.getParameter("status")!=null)
					  		{%>
                            <strong><%=request.getParameter("status")%></strong>
                            <%}%>
                        </div></td>
                      </tr>
                      <tr>
                        <td>
                         <%
                        String username=(String)session.getAttribute("user");
                        AcadamicDTO acdto = new AcadamicDAO().getAcademicDetails(username);
                        %>
                        
                        <table width="296" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE">
                            <tr>
                              <td width="1" height="57" valign="top"></td>
                              <td width="300"><div align="center" class="style24">A c a d a m i c D e t a i l s </div></td>
                              <td width="10"></td>
                            </tr>
                            <tr>
                              <td align="right"></td>
                              <td><table width="374" border="0" align="center">
                                  <tr>
                                    <td width="150"><span class="style23">Year of Passed out </span></td>
                                    <td width="214"><label>
                                      <select name="yearofpass">
									  <%
									     String select="";
									     for(int year=1980;year<=2011;year++)
										 {
										   select="";
										   if(acdto.getYearofpass()==year)
										      select="selected";
									  %>
									      <option <%=select%>><%=year%></option>
										  <%}%>
                                      </select>
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style23">Year of Joining </span></td>
                                    <td><label>
                                      <select name="yearofjoin">
									  <%
									     for(int year=1980;year<=2008;year++)
										 {
										   select="";
										   if(acdto.getYearofjoining()==year)
										      select="selected";
									  %>
									      <option <%=select%>><%=year%></option>
										  <%}%>
                                      </select>
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style28">Profession</span></td>
                                    <td>
                                      <select name="profession">
									  <OPTION>Accounting/Finance
          							  <OPTION>Computer related (IS,MIS,DP)
         							  <OPTION>Computer related (www)
     							      <OPTION>Consulting
  							          <OPTION>Customer service/support
          							  <OPTION>Education/training
 							          <OPTION>Engineering
 							          <OPTION>Executive/senior management
  							          <OPTION>Administrative/supervisory
  							          <OPTION>Government/Military
						              <OPTION>Manufacturing  Production
							          <OPTION>Professional Services
							          <OPTION>Research and development
 							          <OPTION>Retired 
 							          <OPTION>Sales/Marketing/Advertising
							          <OPTION>Self-employed/Owner
							          <OPTION>Student
  							          <OPTION>Unemployed/Between Jobs
  							          <option>Any Other
                                      </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><span class="style28">Roll No </span></td>
                                    <td>
                                      <input type="text" name="rollno" value="<%=acdto.getRollno()%>">
                                   </td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><div align="center">
                                      <input type="submit" name="Submit" value="Update">
                                     &nbsp; <input name="Input2" type="reset" value="Clear">
                                    </div></td>
                                  </tr>
                              </table></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="21">&nbsp;</td>
                              <td valign="baseline"><div align="center"><img src="images/regisbot.gif" alt="a" width="280" height="3"></div></td>
                              <td>&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                    </table>
                    <p>&nbsp;</p>
                  </form>			</td>
                </tr>
                  </table></TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
</TABLE>
</BODY></HTML>
  
   

      

