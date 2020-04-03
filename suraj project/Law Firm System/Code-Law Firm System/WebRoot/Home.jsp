<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="BDB76B" background="./images/111.jpg">
   
   
   <div align="left"><center> 
	<img height="256" width="1004" border="1" align="top" src="./images/33.jpg"> 
	<b><font size="100" color="#da0d00"></font> 
	</b> 
 </center></div>
		
		<jsp:include page="generaloptions.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		<center>
			<img src="./images/1.jpg" height='300' width='500'>
			<b><font size='100' color='dasd'></font>
			</b>
		</center>
   
		
		
		
		
		
		
	 <jsp:include page="Footer.jsp"></jsp:include>
	</body>
	
      
  
   
   
   
  <body><br></body>
</html>
