

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<html >
<script language="JavaScript1.2">


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
}

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

<head>

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
	
			<center><h2>FeedBack Details</h2></center>
		  <div class="hr"> </div>
          <p></p> 
                    <form  method="post" action="./ViewFeedBackAction" >
                      <fieldset>
                    <table align="center">
                    
                    
                    <c:if test="${not empty FeedBack }">
      
                <c:forEach var="FeedBack" items="${FeedBack}">
		 <tr><td><div>Message::${FeedBack. feedback}</div></td></tr> 
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
                  
     
        <tr><td><div>Name::${FeedBack.name }</div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        
        <tr><td><div>Address::${FeedBack.address }</div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
         
         <tr><td><div>Email:${FeedBack.phone }</div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div>Phone:${FeedBack.email }</div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        
        
  <!--       <tr><td><div align="center"><a href="./jsps/viewallfeedbacks.jsp">Check FeedBack</a></div></td></tr> -->
       <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
        <tr><td><div align="center"></div></td></tr>
         <tr><td><div align="center"></div></td></tr>
         </c:forEach>
        </c:if>
        
       

       </table>
       </fieldset>
       
          <br/><br/>
			
                   <jsp:include page="footer.jsp"></jsp:include>
       </form>
         
</body></html>