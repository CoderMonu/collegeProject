<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script language="JavaScript" type="text/javascript"
		src="<%=request.getContextPath()+"/scripts/ts_picker.js"%>">
</script>	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Busdetails.jsp' starting page</title>
    <script type="text/javascript"> 
        function displayForm(c){ 
            if(c.value == "1"){ 

     document.getElementById("ccform").style.visibility='visible'; 
     document.getElementById("paypalform").style.visibility='hidden'; 
            } 
            else if(c.value =="2"){ 
     document.getElementById("ccform").style.visibility='hidden'; 
     document.getElementById("paypalform").style.visibility='visible'; 
            } 
            else{ 
            } 
         }         
    </script>

  </head>
  
  <body bgcolor="#ADD8E6">
 
<jsp:include page="Adminmenu.jsp"></jsp:include>
	<form onsubmit="return validateForm()" action="./PaymentActionPrasad" method="post" name="register" >
		<table width="600" align="center">
			<tr>
				<td colspan="2" align="center">
				</td>
			</tr>
  
		
		<%
		String s2 = (String) request.getAttribute("status");if(s2!=null){%>
		<center>
		<td align=center><font color=red><b><%=s2 %> <%} %></b></font></td></center>
		<br/><br/>
		
		</center>
	
		
		<center>
			<b><h2>
				
				<font color=""><center>Money Receipt Entry</center>
				
				</h2> </b>
		</center>
			<table border='3' cellspacing=2 align="center" bgcolor="" bordercolor="black">
			

				
				
				<th colspan="10" bgcolor="#FFFACD">
							<center>
								Money Receipt
							</center>
						</th>
						<tr></tr>
						<tr></tr>
						<tr>
							<td align='right'>
                           ReceiptNO:
						</td>
						<td>
							<input type="text" name="rno" value="" />
						</td> 
						<td align='right'>
                           Date:
						</td>
						<td>
							<input type="text" name="rdate" value="" />
						</td>
						<td align='right'>
                           FileNo:
						</td>
						<td>
							<input type="text" name="fno" value="" />
						</td> 
						<td align='right'>
                           Client:
						</td>
						<td>
							<input type="text" name="cname" value="" />
						</td><td></td>
						
						</tr>
						<tr>
							<td align='right'>
								CaseNo :
							</td>
							<td>
					<input type="text" name="caseno" size="30">
				
					
				</td>
				<td align='right'>
								Address :
							</td>
							<td>
					<input type="text" name="address" size="30">
				
					
				</td>
				<td align='right'>
								CaseName :
							</td>
							<td>
					<input type="text" name="casename" size="30" >
				
					
				</td>
				<td></td>
                           						</tr>
						<th colspan="10" bgcolor="#FFFACD">
							<center>
								Payment Details
							</center>
						</th>
						<tr><td><label><input value="1" type="radio" name="formselector" 
    onclick="displayForm(this)">Cheque/Draft</label>
            <br> </td>
			<td>
            <label><input value="2" type="radio" name="formselector" 
       onclick="displayForm(this)">Cash</label></td>
	   
	   
	
	   


	   <td>
 <form style="visibility:hidden" id="ccform" action="./PaymentActionPrasad"><table width="500" align="center">
        <label>Enter your Cheque/Draft details :</label>
            
        <p>Cheque/DraftNo&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type="text" id="ccname" 
       name="ccname" ></p>
                <p>Cheque/Draft BankName : <input type="text" id="ccname" 
       name="ccname" >
       
                <p>Cheque/Draft Date : Month : <select 
          name="ccexpdatemonth" required>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                </select>
                <span>Year : <select name="ccexpdateyear" required>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
                </select></span>

        <p>Cheque/Draft Amount&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <input type="text" minlength="3" id="cccvc" 
       name="cccvc"></p>
            </dd>   

            </form>
            <form style="visibility:hidden" id="paypalform" action="./PaymentActionPrasad"><label>Enter 
        Cash Details</label>
            <br>
            <br>
            <dd>Receipt Amount : <input type="text" id="paypal" 
       name="paypal"></dd>
	                    <dd>Enter Note&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type="text" id="paypal" 
       name="paypal1"></dd>
	        <dd>Amount in words : <input type="text" id="paypal" 
       name="paypal2"></dd>
           

                    <td>
							<td align="center">
							
								<font size="3" face="Verdana"> <input type="submit"
										name="register" value="SAVE" />&nbsp; </font>
							</td>
							</td>
							
						</tr>
						<tr></tr>
									</table>
		</form>
	   
	   
	   
	   
	   
	</body>
</html>
