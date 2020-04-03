<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page import="java.util.*,com.dts.aoc.dao.EventsDAO,com.dts.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.dts.aoc.dao.VacancyDAO,com.dts.aoc.dto.VacancyDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.dts.aoc.dao.MessageDAO,com.dts.aoc.dto.MessageDTO,com.dts.core.util.DateWrapper" %>
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
                <td width="43"><br></td>
                <td width="462"><form action="DeleteMessage.jsp" method="post" name="compose">
                  <table width="200" border="0">
                    <tr>
                      <td height="33"><div align="center" class="style25">
					  
					  
					  </div></td>
                    </tr>
                    <tr>
                      <td><table width="481" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE">
                        <tr>
                          <td width="7" height="57" valign="top">&nbsp;</td>
                          <td width="471"><div align="center"><span class="style11">C o m p o s e</span></div></td>
                          <td width="10">&nbsp;</td>
                        </tr>
                        <%
                        int messageid=Integer.parseInt(request.getParameter("messageid"));
                        String pagestring=request.getParameter("page");
                        MessageDTO messagedto = new MessageDAO().viewMessage(messageid);
                        %>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td>
                          <input name="ch" type="hidden" value="<%=messageid%>">
                          <input name="page" type="hidden" value="<%=pagestring%>">
                          <table width="367" height="216" border="0" align="center">
                            <tr>
                              <td width="95" height="27"><span class="style23">Form</span></td>
                              <td width="262"><span class="style23"></span>
                                  <label>
                                  <%=messagedto.getFrom()%>
                                  </label>
                              </td>
                            </tr>
                            <tr>
                              <td height="27"><span class="style23">To</span></td>
                              <td><span class="style37">
                               <%=messagedto.getTo()%>
                              </span></td>
                            </tr>
                            <tr>
                              <td height="27"><span class="style23">Date</span></td>
                              <td><span class="style37">
                               <%=DateWrapper.parseDate(messagedto.getSenddate1())%>
                              </span></td>
                            </tr>
                            <tr>
                              <td height="27"><span class="style23">Subject </span></td>
                              <td><span class="style37">
                              
                                <%=messagedto.getSubject() %>
                               
                              </span></td>
                            </tr>
                            <tr>
                              <td height="43"><span class="style23">Message</span></td>
                              <td><span class="style37">
                                  <%=messagedto.getMessage()%>
                              </span></td>
                            </tr>
                            <tr>
                              <td height="54" colspan="2"><div align="center">
                                  <input name="submit" type="submit" value="Delete"/>&nbsp;
                                <input name="submit" type="button" value="Back" onClick="javascript:history.go(-1)"/>
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
  
   

      

