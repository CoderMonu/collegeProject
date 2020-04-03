
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

 if(session.getAttribute("loginuser")==null){
 
   RequestDispatcher rd=request.getRequestDispatcher("./LoginForm.jsp");
  rd.forward(request,response);
   
 %>
 <%} %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

</head>
  
	<body>  	
<jsp:include page="Header.jsp"></jsp:include>
                   
		
<center><h3><font color="#D87093"><b><i>View All Customers Details</b></font></h3></center>
   
  
      
      <input type="hidden" name="type" value="projcode"/>
      <input type="hidden" name="value" value="<%=request.getParameter("projcode")%>"/>
      
      
      <table width="900" ><tr>
       <td width="200">
		
		<c:choose>
   				<c:when test="${sessionScope.role eq 'admin'}">
   				<jsp:include page="./Adminmenu.jsp"></jsp:include>
   				</c:when>
   		        
   				
   				<c:when test="${sessionScope.role eq 'user'}">
   				<jsp:include page="./UsernMenu.jsp"></jsp:include>
   				
   				</c:when>
                 
                 
								<c:otherwise>
								<jsp:include page="./Menu.jsp"></jsp:include>
								</c:otherwise>
						
					</c:choose>
		
       </td>
       
    <td width="700">
    <table width="" border="0" align="center" bordercolor="#F4F5F7">
    
      <tr bgcolor="#8FBC8F">
        <td width="80"><div align="center" class="style8"><b>UserID</b></div></td>
        <td width="80"><div align="center" class="style8"><b>UserName</b></div></td>
        <td width="80"><div align="center" class="style8"><b>Password</b></div></td>
        <td width="80"><div align="center" class="style8"><b>FirstName</b></div></td>
        <td width="80"><div align="center" class="style8"><b>DOB</b></div></td>
        <td width="80"><div align="center" class="style8"><b>Phone</b></div></td>
        <td width="110"><div align="center" class="style8"><b>Email</b></div></td>
        <td width="64"><div align="center" class="style8"><b>UserImage</b></div></td>
         <td width="50"><div align="center" class="style8"><b>Action</b></div></td>
        
      </tr>
      
      <c:if test="${not empty UserInfo}">
      <c:forEach var="UserInfo" items="${UserInfo}">
         
      <tr bgcolor="#CEC9FA" >
    
         <td bgcolor="#F4F5F7"><div align="center" class="style7">${UserInfo.userid}</div></td>
         <td bgcolor="#F4F5F7"><div align="center" class="style7">${UserInfo.login}</div></td>
        <td bgcolor="#F4F5F7"><div align="center"><span class="style7">${UserInfo.userpwd }</span></div></td>
        <td bgcolor="#F4F5F7"><div align="center" class="style7">${UserInfo.fname }</div></td>
        <td bgcolor="#F4F5F7" ><div align="center" class="style7">  ${UserInfo.dob }</div></td> 
           <td bgcolor="#F4F5F7" ><div align="center" class="style7">  ${UserInfo.mobile }</div></td>
        <td bgcolor="#F4F5F7"><div align="center" class="style7">${UserInfo.email }</div></td>
        
       </td>
        <td><a href="./DeleteUserAction?userid=${UserInfo.userid }">Delete</a></td>
     </tr>
      </c:forEach>
      </c:if>
      
      <c:if test="${ empty UserInfo}">
     
         <tr><td height="24" colspan="8"><div align="center" class="style3"><strong>No Records Found</strong></div></td>
         </tr>
    
         </c:if>
 </table></td></tr></table>
 
 
 
 <br/><br/> <jsp:include page="Footer.jsp"></jsp:include>
</body></html>