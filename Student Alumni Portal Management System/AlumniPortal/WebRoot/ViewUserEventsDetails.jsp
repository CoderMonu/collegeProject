<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page import="java.util.*,com.dts.aoc.dao.EventsDAO,com.dts.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>

<html>
	<head>
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
                <table width="296" border="0" align="center" >
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
					
                  	<p align="center" class="style4">Event Details </p>
                    <table width="496" border="2" align="center" bordercolor="#CD817E" >
                      <tr>
                        <td width="143" bgcolor="skyblue"><div align="center" class="style15">Event Name </div></td>
                        <td width="93"bgcolor="skyblue"><div align="center" class="style15">Date</div></td>
                        <td width="56" bgcolor="skyblue"><div align="center" class="style15">Venue</div></td>
                        <td width="134" bgcolor="skyblue"><div align="center" class="style15">Status</div></td>
                      </tr>
                      <%
                      	 ArrayList al = new EventsDAO().getEventDetails();
                      	 EventsDTO eventdto = null;
                      	 Iterator iterate = al.iterator();
                      	 int eventid=0;
                      	 while(iterate.hasNext())
                      	 {
                      	      eventdto = (EventsDTO)iterate.next();
                      	      eventid = eventdto.getEventid(); 
                       %>
                      <tr>
                        <td ><p class="style12" onClick="showevent(<%=eventid%>)"><%=eventdto.getEventname() %></p></td>
                        <td><span class="style12"><%=DateWrapper.parseDate(eventdto.getEventdate1())%></span></td>
                        <td ><span class="style12"><%=eventdto.getVenue()%></span></td>
                        <td ><span class="style12"><%=eventdto.getStatus()%></span></td>
                      </tr>
                      <%} %>
                    </table>
                  
                  </table></TD>
            </TR></TBODY></TABLE>
        
 </BODY></HTML>
  
   

      

