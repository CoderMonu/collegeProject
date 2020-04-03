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
                  <td width="412" valign="top">
                    <table width="412" border="0" align="center">
                      <tr>
                        <td><div align="center" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <span class="style3"><%=request.getParameter("status")%></span>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table>
					
                  	<p align="center" class="style4"> Inbox </p>
                  	<form action="DeleteMessage.jsp" name="f" method="post">
                  	<input type="hidden" name="page" value="ViewInbox.jsp"/>
                  	<table width="559" border="0" align="center" bordercolor="#655FE2" bgcolor="#D1C33C">
                      <tr>
						<td width="20" bgcolor="skyblue"><div align="center" class="style15">
						  
						  <input type="checkbox" name="ch" value="0" onClick="SetChecked('ch')">
						 
						</div></td>                       
                        <td width="153" bgcolor="skyblue"><div align="center" class="style15"> From </div></td>
                        <td width="221" bgcolor="skyblue"><div align="center" class="style15">Subject</div></td>
                        <td width="147" bgcolor="skyblue"><div align="center" class="style15">Send Date</div></td>
                      </tr>
                      <%
                         String loginname = (String)session.getAttribute("user");
                      	 ArrayList al = new MessageDAO().viewInbox(loginname);
                      	 MessageDTO messagedto = null;
                      	 Iterator iterate = al.iterator();
                      	 int messageid=0;
						 String from="";
						 String subject="";
						 String senddate="";
                      	 while(iterate.hasNext())
                      	 {
                      	      messagedto = (MessageDTO)iterate.next();
                      	      messageid = messagedto.getMessageid(); 
							  from = messagedto.getFrom();
							  subject = messagedto.getSubject();
							  senddate = DateWrapper.parseDate(messagedto.getSenddate1());
                       %>
                      <tr>
                        <td  bgcolor="#FFD7AE"><label>
                          <input type="checkbox" name="ch" value="<%=messageid%>">
                        </label></td>
                        <td bgcolor="#FFD7AE">
                          <span class="style12"><a href="viewmail.jsp?messageid=<%=messageid%>&page=ViewInbox.jsp"><%=from%></a></span></td>
                        <td bgcolor="#FFD7AE"><span class="style12"><a href="viewmail.jsp?messageid=<%=messageid%>&page=ViewInbox.jsp">
						<%=subject%></a></span></td>
						 <td bgcolor="#FFD7AE"><span class="style12"><a href="viewmail.jsp?messageid=<%=messageid%>&page=ViewInbox.jsp"><%=senddate%></a></span></td>
                      </tr>
                      <%} %>
                      <tr>
                        <td colspan="4"  bgcolor="#FFFFFF"><label>
                          <div align="center">
                            <input type="submit" name="Submit" value="Delete">
                            &nbsp;
                            <input type="reset" value="Clear">
                            </div>
                        </label></td>
                        </tr>
                     
                    </table>
                    </form>
                  	<div align="center"></div></td>
                </tr>
                  </table></TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
          </TABLE>
 </BODY></HTML>
  
   

      

