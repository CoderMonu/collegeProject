<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
 <script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
 </head>
  
  <body bgcolor="">
  	
<jsp:include page="header.jsp"></jsp:include>
                   
		<form action="<%=request.getContextPath()+"/UpdateMedicineAction"%>" name="updatemedicine">
		
    <table border="3"  align="center">
    
    
    <caption>Update Medicine Information</caption>
    <tr>
   
                                <c:if test="${not empty medicalinfo}">
                                <c:forEach var="medicalinfo" items="${medicalinfo}">
    
                                    <tr>
                                    
                                    <td ><span class="style1"><font color="#swanjhhhjyt"><b>ProductID</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="productid" readonly="readonly" value="${medicalinfo.productid }">
                                </label></td>
                              </tr>
                                    
                                    
                                    <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>MedicineName</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="medicinename" value="${medicalinfo.medicinename }">
                                </label></td>
                              </tr>
                              
                             
 
 

                              <tr>
                                <td><span class="style17"><font color="swanjhhhjyt"><b>ManufactureDate</b></font></span></td>
                                <td>
                                 
                         
                                <label>
                              <input type="text" name="manufacturedate" value="${medicalinfo.manufacturedate }" readonly="readonly">
                                </label>
                                     
                                    
                                    
                                </td>
                              </tr>
                              
                              <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>ExpiryDate</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="expirydate"  value="${medicalinfo.expirydate }">
                                </label></td>
                              </tr>
                              
                              <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>TimePeriod<br/>(BestBefore)</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="timeperiod" value="${medicalinfo.timeperiod }">
                                </label></td>
                              </tr>
                               <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>UsedFor<br/>(Purpose Of Medicine) </b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="purpose" value="${medicalinfo.purpose }">
                                </label></td>
                              </tr>
                               
                              
                          <tr>
                             <td align="right">
                             <input type="submit" name="submit" value="UpdateMedicine">
                              </td></tr>
                          </c:forEach>
                          </c:if>    
    </table>
    
    
    
    <br/>
			
                    
    </form>
    
      <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("updatemedicine");

  frmvalidator.addValidation("productid","req","productid is required");
  frmvalidator.addValidation("medicinename","req"," Name of the Medicine is required");
    //frmvalidator.addValidation("hname","alpha","Hospital Name is Only Characters");
    frmvalidator.addValidation("manufacturedate","req","manufacture date is required");
    frmvalidator.addValidation("expirydate","req","expiry date is required");
    frmvalidator.addValidation("timeperiod","req","Time period is required");
     //frmvalidator.addValidation("timeperiod","numeric");
    frmvalidator.addValidation("purpose","req","Purpose of the medicine is required");
    
  </script>
  <br/>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
