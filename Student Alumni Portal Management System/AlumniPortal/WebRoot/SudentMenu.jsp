<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<title>Style 12 (Teal) - Menu by Apycom.com</title>
		<link type="text/css" href="menu/menu.css" rel="stylesheet" />
		<script type="text/javascript" src="menu/jquery.js">
</script>
		<script type="text/javascript" src="menu/menu.js">
</script>
<%
if(session.getAttribute("role")==null || session.getAttribute("user")==null)
{
   RequestDispatcher rd = request.getRequestDispatcher("LoginForm.jsp?status=Session Expired");
   rd.forward(request,response);
}      
%>



	</head>
	<body>

		<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

div#menu {
	margin-left: 10px;
	position: relative;
	top: 05px;
}

div#copyright {
	display: none;
}
</style>

		<div id="menu">
			<ul class="menu">
				<li>
					<a href="userhome.jsp" class="parent"><span>Home</span> </a>
					

				</li>
				
				<li>
					<a href="#" class="parent"><span>Mails</span> </a>
					<div>
						<ul>
							
							<li>
								<a href="ViewInbox.jsp"><span>ViewMails</span> </a>
							</li>
							<li>
								<a href="ViewOutbox.jsp"><span>SendMails</span> </a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>View Friend</span> </a>
					<div>
						<ul>
							<li>
								<a href="ViewFriendsDetails.jsp"><span>View Friend</span> </a>
							</li>
							
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Search Friend</span> </a>
					<div>
						<ul>
							<li>
								<a href="search.jsp"><span>Search Friend</span> </a>
							</li>
						</ul>
					</div>
				</li>
				
				<li>
					<a href="#" class="parent"><span>Events</span> </a>
					<div>
						<ul>

							<li>
								<a href="ViewUserEventsDetails.jsp"><span>ViewEvents</span> </a>
							</li>


						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Opportunities</span> </a>
					<div>
						<ul>


							<li>
								<a href="ViewUserVacanciesDetails.jsp"><span>ViewOpportunities</span> </a>
							</li>
						</ul>
					</div>
				</li>
				
				<li>
					<a href="#" class="parent"><span>Profile</span> </a>
					<div>
						<ul>
							<li>
								<a href="viewpersonalinfo.jsp"><span>Personal Info</span> </a>
							</li>
							
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Academic</span> </a>
					<div>
						<ul>
							
							<li>
								<a href="viewacadamicdetails.jsp"><span>Academic Info</span> </a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Security</span> </a>
					<div>
						<ul>
							<li>
								<a href="Changepassword.jsp?role=user'"><span>Change Password</span> </a>
							</li>
							<li>
								<a href="Changequestion.jsp?role=user'"><span>Change Question</span> </a>
							</li>
						</ul>
					</div>
				</li>
				
	
				<li class="last">
					<a href="LogoutAction.jsp"><span>Logout</span> </a>
				</li>
				

				
				

			</ul>
		</div>
		<div id="copyright">
			<a href="http://apycom.com/"></a>
		</div>
	</body>
</html>