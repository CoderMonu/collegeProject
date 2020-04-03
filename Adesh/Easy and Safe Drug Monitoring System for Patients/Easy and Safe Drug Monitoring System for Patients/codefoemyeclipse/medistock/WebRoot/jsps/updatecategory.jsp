<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
 <script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
 </head>
  
  <body bgcolor="">
  	
<jsp:include page="header.jsp"></jsp:include>
                   
		<form action="<%=request.getContextPath()+"/UpdateCategoryAction"%>" name="updatecategory">
		
    <table border="10"  align="center">
    
    
    <caption>Update Category Information</caption>
    <tr>
   
                                <c:if test="${not empty categoryinfo}">
                                <c:forEach var="categoryinfo" items="${categoryinfo}">
    
                                    <tr>
                                    
                                    <td ><span class="style1"><font color="#swanjhhhjyt"><b>CategoryID</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="categoryid" readonly="readonly" value="${categoryinfo.categoryid }">
                                </label></td>
                              </tr>
                                    
                                    
                                    <tr>
                                    <td width="128"><span class="style17"><font color="swanjhhhjyt"><b>CategoryName</b></font> </span></td>
                                <td width="269"><label>
                              <input type="text" name="categoryname" value="${categoryinfo.categoryname }">
                                </label></td>
                              </tr>
                              
                             
 
 

                              <tr>
                                <td><span class="style17"><font color="swanjhhhjyt"><b>CategoryPhoto</b></font></span></td>
                                <td>
                                 
                         
                                <label>
                              <input type="hidden" name="categoryphoto" value="${categoryinfo.categoryphoto }" >
                              <input type="file" name="categoryphoto" value="${categoryinfo.categoryphoto }" >
                                </label>
                                     
                                    
                                    
                                </td>
                              </tr>
                              
                             
                              
                          <tr>
                             <td align="right">
                             <input type="submit" name="submit" value="UpdateCategory">
                              </td></tr>
                          </c:forEach>
                          </c:if>    
    </table>
    
    
    
    <br/>
			
                    
    </form>
    
      <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("updatecategory");

  frmvalidator.addValidation("categoryid","req","Categoryid is required");
  frmvalidator.addValidation("categoryname","req"," Name of the Category is required");
   // frmvalidator.addValidation("companyname","alpha","Company Name is Only Characters");
    frmvalidator.addValidation("categoryphoto","req","Category Photo is required");
    
    
  </script>
  <br/>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
