

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'feedback.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="JavaScript1.2">
/*Number check script-
By JavaScript Kit (www.javascriptkit.com)
Over 200 free scripts here!


function checknumber(){
var x=document.f.accno.value
var anum=/(^\d+$)|(^\d+\.\d+$)/
if (anum.test(x))
testresult=true
else{
alert("Please input a valid number!")
testresult=false
}
return (testresult)
}*/

</script>
<script>
function checkban(){
if(validateFields())
{
if (document.layers||document.all||document.getElementById)
return checknumber()
else
return true;
}
else
return false; 
}
</script>
<script type="text/javascript" src="js/project.js"></script>



    <style type="text/css">
<!--
.style1 {
	font-size: 50px
}
-->
    </style>
    </head><body onload="mainOnLoad();">
	<!-- providing keyboard shortcuts to important links -->
	
	 	
<jsp:include page="header.jsp"></jsp:include>

			<center><h2>All FeedBacks</h2></center>
		  <div class="hr"> </div>
          <p></p>                       <fieldset>
          
          
         
          
           <table width="637" border="0" align="center" bordercolor="#8692E3">
         <tr bgcolor="">
        <td width="233" height="16"><div align="center" class="style8">FeedBack ID</div></td>
        <td width="372"><div align="center" class="style8">Address</div></td>
        <td width="372"><div align="center" class="style8">MailID</div></td>
        <td width="372"><div align="center" class="style8">Content</div></td>
      </tr>
		   <c:if test="${not empty Feedbackvector}" >
          <c:forEach var="Feedbackvector" items="${Feedbackvector}">
         	
      <tr bgcolor="">
              <td bgcolor=""><div align="center"><span class="style7">${Feedbackvector.fid }</span></div></td>
        <td bgcolor=""><div align="center" class="style7">${Feedbackvector.address }</div></td>
        <td bgcolor=""><div align="center"><span class="style7">${Feedbackvector.email }</span></div></td>
        <td bgcolor=""><div align="center" class="style3">
         
        <strong><a href="ViewFeedBackAction?fid=${Feedbackvector.fid }">READ</a></strong>
      
        </div></td>
        
     
      <td bgcolor=""><div align="center" class="style3">
              
        <strong><a href="DeleteFeedBack?fid=${Feedbackvector.fid }">DELETE</a></strong>
      
        </div></td>
      </tr>   
      </c:forEach>
      </c:if>
      <c:choose>
      <c:when test="${ empty Feedbackvector}">
     
    
         <tr><td height="24" colspan="6"><div align="center" class="style3"><strong>No Records Found</strong></div></td>
        
         </tr>
         </c:when>
         </c:choose>
         
   
       </table>
       </fieldset>
       
      
    <br/><br/>
			
                   <jsp:include page="footer.jsp"></jsp:include>
                
        
</body></html>








