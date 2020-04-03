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
  
  <body>
    
    <div id="menu">
    <ul class="menu">
    
    
     <li><a href="DGHome.jsp"><span>HOME</span></a></li>
        
        <li><a href="DGHome.jsp" class="parent"><span>POLICESTATION</span></a>
            <div><ul>
            
            
             
            
            <li><a href="DGHome.jsp" class="parent"><span>STATION</span></a>
                    <div><ul>
                        
                        <li><a href="./SubmitDistrictIDForPs.jsp"><span>ViewPoliceStationDistrictWise</span></a></li>
                         
                    </ul></div>
                </li>
                
                 <li><a href="DGHome.jsp" class="parent"><span>SI'S</span></a>
                    <div><ul>
                        
                        <li><a href="./SubmitAreaforSI.jsp"><span>ViewallSIsinAreaWise</span></a></li>
                         
                    </ul></div>
                </li>
                
                 <li><a href="DGHome.jsp" class="parent"><span>SP'S</span></a>
                    <div><ul>
                        
                        <li><a href="./SubmitDistrictidForSp.jsp"><span>ViewallSPsinDistrictWise</span></a></li>
                         
                    </ul></div>
                </li>
                 
                 
            </ul></div>
        </li>
        
         <li><a href="DGHome.jsp" class="parent"><span>PROFILE</span></a>
            <div><ul>
                <li><a href="DGHome.jsp" class="parent"><span>Profile</span></a>
                    <div><ul>
                      
                        <li><a href="./ViewDGProfileAction"><span>ViewProfile</span></a></li>
                         
                    </ul></div>
                </li>
                
                 
                 
            </ul></div>
        </li>
        
        <li><a href="DGHome.jsp" class="parent"><span>DEPARTMENT</span></a>
            <div><ul>
            
            <li><a href="DGHome.jsp" class="parent"><span>LAW & ORDER</span></a>
                    <div><ul>
                      <li><a href="./ViewStationNameForLawOrderDept"><span>deptwiseemployee</span></a></li>
                 
                  
                         
                    </ul></div>
                </li>
                
                
                <li><a href="DGHome.jsp" class="parent"><span>WOMEN PROTECTION</span></a>
            <div><ul>
                
                  <li><a href="./ViewStationNameforWomenProtection"><span>deptwiseemployee</span></a></li>
                 
                
                 
            </ul></div>
        </li>
        
        
         <li><a href="DGHome.jsp" class="parent"><span>CYBER</span></a>
            <div><ul>
                
                  <li><a href="./ViewStateNameForCyberAction"><span>deptwiseemployee</span></a></li>
               
                
                 
            </ul></div>
        </li>
        
         <li><a href="DGHome.jsp" class="parent"><span>TRAFFIC&CONTROL</span></a>
            <div><ul>
                
                 <li><a href="./ViewStationNameForTrafficandControl"><span>deptwiseemployee</span></a></li>
               
                 
                 
            </ul></div>
        </li>
        
        
         <li><a href="DGHome.jsp" class="parent"><span>CBI</span></a>
            <div><ul>
                
                 <li><a href="./ViewStationNameForCbi"><span>deptwiseemployee</span></a></li>
                 
                 
                 
            </ul></div>
        </li>
        
                
                 
            </ul></div>
        </li>
        
        
         <li><a href="DGHome.jsp" class="parent"><span>CRIMINAL</span></a>
            <div><ul>
                
                   
                 
                 <li><a href="DGHome.jsp" class="parent"><span>VIEW CRIMINAL</span></a>
                 <div><ul>
                        <li><a href="./ViewStateforCriminals"><span>Statewise</span></a></li>
                         <li><a href="./CriminalArea.jsp"><span>Areawise</span></a></li>
                          <li><a href="./CrimeAgePage.jsp"><span>Agewise</span></a></li>
                    </ul></div>
                 </li>
                 
            </ul></div>
        </li>
        
        
         <li><a href="DGHome.jsp" class="parent"><span>MAILS</span></a>
            <div><ul>
                
               <li>
						<a href="./ComposeMailAction">Composemail</a>
					</li>
					<li>
						<a
							href="./OutboxAction?loginid=<%=session.getAttribute("username")%>&requesttype=inbox">Inbox</a>
					</li>
					<li>
						<a
							href="./OutboxAction?loginid=<%=session.getAttribute("username")%>&requesttype=outbox">Outbox</a>
					</li>  
                 
                 
                 
            </ul></div>
        </li>
        
        
        
        <li><a href="DGHome.jsp" class="parent"><span>SECURITY</span></a>
            <div><ul>
                
                 <li><a href="Changepassword.jsp"><span>Changepassword</span></a></li>
                 
                 
            </ul></div>
        </li>
        
        <li><a href="Login.jsp"><span>Logout</span></a></li>
        
        </ul>
</div>
    <a href="http://apycom.com/"></a>
    
 </body>
</html>
