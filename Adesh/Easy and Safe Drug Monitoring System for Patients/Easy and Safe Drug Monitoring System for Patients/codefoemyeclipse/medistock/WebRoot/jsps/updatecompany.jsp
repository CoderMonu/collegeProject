<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
 <script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
 </head>
  
  <body bgcolor="">
  	
<jsp:include page="header.jsp"></jsp:include>
                   
		<form action="<%=request.getContextPath()+"/UpdateCompanyAction"%>" name="updatecompany">
		
    <table border="10"  align="center">
    
    
    <caption>Update Company Information</caption>
    <tr>
   
                                <c:if test="${not empty companyinfo}">
                                <c:forEach var="companyinfo" items="${companyinfo}">
    
                                    <tr>
                                    
                                    <td ><span class="style1"><font color="#swanjhhhjyt"><b>CompanyID</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="companyid" readonly="readonly" value="${companyinfo.companyid }">
                                </label></td>
                              </tr>
                                    
                                    
                                    <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>CompanyName</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="companyname" value="${companyinfo.companyname }">
                                </label></td>
                              </tr>
                              
                             
 
 

                              <tr>
                                <td><span class="style17"><font color="swanjhhhjyt"><b>Address</b></font></span></td>
                                <td>
                                 
                         
                                <label>
                              <input type="text" name="address" value="${companyinfo.address }" >
                                </label>
                                     
                                    
                                    
                                </td>
                              </tr>
                              
                              <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>PhoneNo</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="phno"  value="${companyinfo.phno }">
                                </label></td>
                              </tr>
                              
                              <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>Email</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="email" value="${companyinfo.email }">
                                </label></td>
                              </tr>
                                
                              
                          <tr>
                             <td align="right">
                             <input type="submit" name="submit" value="UpdateCompany">
                              </td></tr>
                          </c:forEach>
                          </c:if>    
    </table>
    
    
    
    <br/>
			
                    
    </form>
    
      <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("updatecompany");

  frmvalidator.addValidation("companyid","req","Companyid is required");
  frmvalidator.addValidation("companyname","req"," Name of the Company is required");
    frmvalidator.addValidation("companyname","alpha","Company Name is Only Characters");
    frmvalidator.addValidation("address","req","Address is required");
     frmvalidator.addValidation("phoneNo","req");
  
  frmvalidator.addValidation("phno","maxlen=15");
  frmvalidator.addValidation("phno","numeric");
 frmvalidator.addValidation("phno","Phone");
    frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
    
    
  </script>
  <br/>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
