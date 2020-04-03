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
    
    
    <li><a href="Userhome.jsp"><span>HOME</span></a></li>
    
    
     <li><a href="" class="parent"><span>FIRM MASTER</span></a>
            <div><ul>
    
          <li><a href="Busdetails.jsp" class="parent"><span>FIRM MASTER REGISTER</span></a>
                   
                 
                 
                 
                     
                 
                 
        
               </ul></div>
                 </li>      
    
        
        <li><a href="" class="parent"><span>COURT MASTER</span></a>
            <div><ul>
            
                  
                        
                      
            
                <li><a href="CourtMaster.jsp" class="parent"><span>REGISTER COURT MASTER</span></a>
                  
                          
                
                
                
                
                
                
                
                 
                 
                 
                 
                 
                 
            </ul></div>
        </li>
        
      
      
      
     <li><a href="" class="parent"><span>CLIENT MASTER</span></a>
            <div><ul>
                
               <li>
						<a href="ClientMaster.jsp">REGISTER CLIENT MASTER</a>
					</li>
				
                 
            </ul></div>
        </li>
      
     <li><a href="" class="parent"><span>ADVOCATE MASTER</span></a>
            <div><ul>
                
               <li>
						<a href="./AdvocateRegister">REGISTER ADVOCATE MASTER</a>
					</li>
				
                 
            </ul></div>
        </li>
          
     <li><a href="" class="parent"><span>FEE MASTER</span></a>
            <div><ul>
                
               <li>
						<a href="./FeeAction">REGISTER FEE MASTER</a>
					</li>
				
                 
            </ul></div>
        </li>
        
        
        
     <li><a href="" class="parent"><span>Expense Master</span></a>
            <div><ul>
                
               <li>
						<a href="./ExpensiveAction">REGISTER Expense Master</a>
					</li>
				
                 
            </ul></div>
        </li><!--
        
        
       
      
          --><li class="last"><a href="Login.jsp"><span>Logout</span></a></li>
        
   </ul>
</div>
    <a href="http://apycom.com/"></a>
    
 </body>
</html>
