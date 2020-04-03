<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<title>Style 12 (Gray) - Menu by Apycom.com</title>
		<link type="text/css" href="menu/menu.css" rel="stylesheet" />
		<script type="text/javascript" src="menu/jquery.js">
</script>
		<script type="text/javascript" src="menu/menu.js">
</script>
	</head>
	<body>


		<div id="menu">
			<ul class="menu">
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span>Home</span> </a>
				</li>



				<li>
					<a href="#" class="parent"><span>Encryption</span> </a>
					<div>
						<ul>

							<li>
								<a href="./FileEncription.jsp">Encryption</a>
							</li>
							<li>
								<a href="./FileDescription.jsp">Decryption</a>
							</li>

						</ul>
					</div>
				</li>


				<li>
					<a href="#" class="parent"><span>Mail</span> </a>
					<div>
						<ul>
							<li>
								<a href="#" class="parent"><span>Inbox</span> </a>
								<div>
									<UL>
										<li>
											<a
												href="./OutboxAction?empid=<%=session.getAttribute("userid")%>&requesttype=inbox">InboxMails</a>
										</li>
										<li>
											<a
												href="./OutboxWaterMarkingImageAction?empid=<%=session.getAttribute("userid")%>&requesttype=inbox">InboxAttachment</a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<a href="#" class="parent"><span>Outbox</span> </a>
								<div>
									<UL>
										<li>
											<a
												href="./OutboxAction?empid=<%=session.getAttribute("userid")%>&requesttype=outbox">OutboxMails</a>
										</li>
										<li>
											<a
												href="./OutboxWaterMarkingImageAction?empid=<%=session.getAttribute("userid")%>&requesttype=outbox">OutboxAttachment</a>
										</li>
									</ul>
								</div>
							</li>

							<li>
								<a href="./ComposeMail">Composemail</a>
							</li>
							<li>
								<a href="./Chat.jsp">Chat</a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Intellectual</span> </a>
					<div>
						<ul>
							<li>
								<a href="<%=request.getContextPath() + "/TextWaterMark.jsp"%>"
									class="parent"><span>TextWaterMark</span> </a>
							</li>
							<li>
								<a href="<%=request.getContextPath() + "/ImageWaterMark.jsp"%>"
									class="parent"><span>ImageWaterMark</span> </a>
							</li>
							<li>
								<span>VideoAudioWaterMark</span>
								<div>
									<UL>
										<li>
											<a href="VideoAudioWaterMark.jsp">EmbedWaterMarkMessage</a>
										</li>
										<li>
											<a href="FileDeembed.jsp">DeEmbedWaterMarkMessage</a>
										</li>
									</ul>
								</div>

							</li>

						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Profile</span> </a>
					<div>
						<ul>
							<li>
								<a
									href="./ViewProfileAction?userid=<%=session.getAttribute("user")%>&requesttype=view">ViewProfile</a>
							</li>
							<li>
								<a
									href="./ViewProfileAction?userid=<%=session.getAttribute("user")%>&requesttype=update">UpdateProfile</a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>Security</span> </a>
					<div>
						<ul>
							<li>
								<a
									href="./Changepassword.jsp?userid=<%=session.getAttribute("user")%>">changepassword</a>
							</li>
						</ul>
					</div>
				</li>
				<li class="last">
					<a href="./LogoutAction"><span>Logout</span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				<li>
					<a href="#" class="parent"><span></span> </a>
				</li>
				
				
			</ul>
		</div>
		<div id="copyright">
			<a href="http://apycom.com/"></a>
		</div>
	</body>
</html>