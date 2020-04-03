<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<title>Style 11 (Black) - Menu by Apycom.com</title>
		<link type="text/css" href="menu.css" rel="stylesheet" />
		<script type="text/javascript" src="jquery.js">
</script>
		<script type="text/javascript" src="menu.js">
</script>
	</head>

	<body>


		<div id="menu">
			<ul class="menu">
				<li>
					<a href="./jsps/customerhome.jsp" class="parent"><span>Home</span>
					</a>


				</li>
				<li>
					<a href="#" class="parent"><span>Profile</span> </a>
					<div>
						<ul>
							<li>
								<a
									href="./ViewProfileAction?user=<%=session.getAttribute("user")%>&requesttype=view"
									class="parent"><span>ViewProfile</span> </a>

							</li>
							<li>
								<a
									href="./ViewProfileAction?user=<%=session.getAttribute("user")%>&requesttype=update"
									class="parent"><span>UpdateProfile</span> </a>

							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>ProductsInfo</span> </a>
					<div>
						<ul>

							<li>
								<a href="./ViewMedicalDetailsAction" class="parent"><span>Medicines</span>
								</a>

							</li>
							<li>
								<a href="./ViewMedicineNamesAction" class="parent"><span>ViewMedicines</span>
								</a>

							</li>


						</ul>
					</div>
				</li>


				<li>
					<a href="#" class="parent"><span>PaymentInfo</span> </a>
					<div>
						<ul>

							<li>
								<a href="./ViewPaymentsAction" class="parent"><span>ViewBills</span>
								</a>

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
									href="./jsps/changepassword.jsp?userid=<%=session.getAttribute("user")%>"
									class="parent"><span>ChangePassword</span> </a>

							</li>

						</ul>
					</div>
				</li>
				<li class="last">
					<a href="./LogOutAction"><span>Logout</span> </a>
				</li>
			</ul>
		</div>

		<a href="http://apycom.com/"></a>
		<br />
		<br />

	</body>
</html>