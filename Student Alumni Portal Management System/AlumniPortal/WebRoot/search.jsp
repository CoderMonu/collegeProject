<<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
                      
                  <td width="412" valign="top"> <form action="ViewSearchDetails.jsp" method="post" name="register">
                  <input type="hidden" name="loginname" value="<%=request.getParameter("loginname")%>"/>
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
                        <td><table width="296" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE">
                            <tr>
                              <td width="1" height="57" valign="top"></td>
                              <td width="300"><div align="center" class="style24">
                                <p>S e a r c h </p>
                                <p align="left" class="style29">Search with any of the criteria </p>
                              </div></td>
                              <td width="10"></td>
                            </tr>
                            <tr>
                              <td align="right"></td>
                              <td><table width="374" border="0" align="center">
                                  <tr>
                                    <td width="150"><span class="style23">Year of Passed out </span></td>
                                    <td width="214"><label>
                                    <input type="text" name="search">
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style23">Year of Joining </span></td>
                                    <td><label>
                                    <input type="text" name="search">
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style28">Name</span></td>
                                    <td><label>
                                      <input type="text" name="search">
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style28">Roll No </span></td>
                                    <td>
                                      <input type="text" name="search">
                                   </td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><div align="center">
                                      <input type="submit" name="Submit" value="Search">
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
  
   

      

