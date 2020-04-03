<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta http-equiv="content-type" content="text/html;charset=utf-8" />
   
    <link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>

  </head>
  
  <body background="./images1/laoa7.jpg">
      <div align="left"><center> 
	<img height="284" width="988" border="1" align="top" src="./images/33.jpg"> 
	<b><font size="100" color="#da0d00"></font> 
	</b> 
 </center></div>
		

	
    <div id="menu">
    <ul class="menu">
    
    
    <li><a href="Adminhome.jsp"><span>HOME</span></a></li>
    
    
     <li><a href="Adminhome.jsp" class="parent"><span>VIEW</span></a>
            <div><ul>
    
                  <li><a href="./ViewUserDeatil" class="parent"><span>View User</span></a>
                           
                  </li>
                 
                         <li><a href="./FMViewAction" class="parent"><span>Firm Master</span></a>
                           
                 </li>   
                 
                   <li><a href="./CMViewAction" class="parent"><span>Court Master</span></a>
                           
                 </li>       
                  <li><a href="./CientMAction" class="parent"><span>Client Master</span></a>
                            
                 </li>
                  <li><a href="./AMAction" class="parent"><span>Advocate Master</span></a>
                            
                 </li>
                
                     
                 
                 
        
               </ul></div>
                 </li>      
    
        
        <li><a href="#" class="parent"><span>FEE </span></a>
            <div><ul>
            
                  
                        
                      
            
                <li><a href="./ViewFee" class="parent"><span>View Fee Master</span></a>
                   
                </li>
                
                 <li><a href="./ViewExpenseive" class="parent"><span>Expense Master</span></a>
                           
                 </li>   
                 
            </ul></div>
        </li>
               
        
        
        <li><a href="#" class="parent"><span>Case Details</span></a>
           <div><ul>
                <li><a href="CaseDetails.jsp" class="parent"><span>Add Case Details</span></a>
                   
                </li>
                <li><a href="SearchCaseDetail.jsp" class="parent"><span>Search Case Details</span></a>
                   
                </li>
            </div></li>
            <li><a href="#" class="parent"><span>Case Proceeding Detail</span></a>
            <div><ul>
                <li><a href="CaseSearch.jsp" class="parent"><span>Case Proceeding</span></a>
                   
                </li>
                <li><a href="./ViewCaseProceding" class="parent"><span>View Case Proceeding</span></a>
                   
                </li>
                                <li><a href="CaseSearch1.jsp" class="parent"><span>Case Diary</span></a>
                   <div><ul>
                                <li><a href="./ViewCaseProceding"><span>View CaseProcding</span></a></li>
                                <li><a href="./ViewCaseDairyACtion"><span>View CaseDairy</span></a></li>
                                <li><a href="./ViewAppointmentAction"><span>View Appointments</span></a></li>
                            </ul></div>
                </li>
            </div></li>
        <li><a href="" class="parent"><span>Expense Details</span></a>
           <div><ul>
                <li><a href="SearchExpense.jsp" class="parent"><span>Add Expense Details</span></a>
                   
                </li>
                <li><a href="ViewExpensedao.jsp" class="parent"><span>Search Expense Details</span></a>
                   
                </li>
                <li><a href="SearchMoney.jsp" class="parent"><span>Money Details</span></a>
                   
                </li>
                <li><a href="SearchFinallBill.jsp" class="parent"><span>Final Bill Details</span></a>
                   
                </li>
            </div></li>
             <li><a href="#" class="parent"><span>Mail</span></a>
            <div><ul>
       
                  <li><a href="Mailbody.jsp"><span>Send Mail</span></a></li>
                 
            </ul></div>
        <li><a href="Adminhome.jsp" class="parent"><span>SECURITY</span></a>
            <div><ul>
                
                  <li><a href="Changepassword.jsp"><span>Changepassword</span></a></li>
                 
            </ul></div>
        </li>
       
       
      
          <li class="last"><a href="Login.jsp"><span>Logout</span></a></li>
        
   </ul>
</div>
    <a href="http://apycom.com/"></a>
    
 </body>
</html>
