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
                    <table width="200" border="0" align="center">
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
					
                  	<p align="center" class="style4">Vacancy Details </p>
                  	<table width="454" border="1" align="center">
                      <tr>
                        <td width="143" bgcolor="skyblue"><div align="center" class="style15">Company Name </div></td>
                        <td width="93" bgcolor="skyblue"><div align="center" class="style15">Vacancy Position</div></td>
                        <td width="56" bgcolor="skyblue"><div align="center" class="style15">Experience</div></td>
                        <td width="134" bgcolor="skyblue"><div align="center" class="style15">Expiry Date</div></td>
                      </tr>
                      <%
                      	 ArrayList al = new VacancyDAO().getVacancyDetails();
                      	 VacancyDTO vacancydto = null;
                      	 Iterator iterate = al.iterator();
                      	 int vacancyid=0;
                      	 while(iterate.hasNext())
                      	 {
                      	      vacancydto = (VacancyDTO)iterate.next();
                      	      vacancyid = vacancydto.getVacancyid(); 
                       %>
                      <tr>
                        <td ><p onClick="showvacancy(<%=vacancyid%>)" class="style12"><%=vacancydto.getCompanyname() %></p></td>
                        <td ><span class="style12"><%=vacancydto.getVacancyposition() %></span></td>
                        <td ><span class="style12"><%=vacancydto.getDesiredexp()%></span></td>
                        <td ><span class="style12"><%=DateWrapper.parseDate(vacancydto.getExpirydate1())%></span></td>
                      </tr>
                      <%} %>
                    </table>
                  	<div align="center"></div></td>
                </tr>
                  </table></TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
          </TABLE>
 </BODY></HTML>
  
   

      

