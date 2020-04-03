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
					<a href="./jsps/adminhome.jsp" class="parent"><span>Home</span>
					</a>


				</li>
				<li>
					<a href="#" class="parent"><span>UsersInfo</span> </a>
					<div>
						<ul>
							<li>
								<a href="#" class="parent"><span>Customers</span> </a>
								<div>
									<ul>
										<li>
											<a href="./ViewUserAction?role=customer&user_status=Active"
												class="parent"><span>ViewCustomers</span> </a>
										</li>
										<li>
											<a href="./ViewUserAction?role=customer&user_status=request"
												class="parent"><span>RequestedCustomers</span> </a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<a href="#" class="parent"><span>Dealers</span> </a>
								<div>
									<ul>
										<li>
											<a href="./ViewUserAction?role=dealer&user_status=Active"
												class="parent"><span>ViewDealers</span> </a>
										</li>
										<li>
											<a href="./ViewUserAction?role=dealer&user_status=request"
												class="parent"><span>RequestedDealers</span> </a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<a href="#" class="parent"><span>Employees</span> </a>
								<div>
									<ul>
										<li>
										<li>
											<a href="./ViewUserAction?role=employee&user_status=Active"
												class="parent"><span>ViewEmployees</span> </a>
										</li>
										<li>
											<a href="./ViewUserAction?role=employee&user_status=request"
												class="parent"><span>RequestedEmployees</span> </a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
				

				<li>
					<a href="#" class="parent"><span>CompanyInfo</span> </a>
					<div>
						<ul>

							<li>
								<a href="./jsps/addcompany.jsp" class="parent"><span>AddCompany</span>
								</a>

							</li>
							<li>
								<a href="./ViewCompanyAction" class="parent"><span>ViewCompany</span>
								</a>

							</li>

						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>CategoryInfo</span> </a>
					<div>
						<ul>

							<li>
								<a href="./ViewCompanyDetailsAction" class="parent"><span>AddCategory</span>
								</a>

							</li>
							<li>
								<a href="./ViewCategoryAction" class="parent"><span>ViewCategory</span>
								</a>

							</li>

						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>ProductsInfo</span> </a>
					<div>
						<ul>

							<li>
								<a href="./ViewCompaniesForMedicineActions" class="parent"><span>AddMedicines</span>
								</a>

							</li>
							<li>
								<a href="./ViewMedicinesAction" class="parent"><span>ViewMedicines</span>
								</a>

							</li>

						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>FeedBacks</span> </a>
					<div>
						<ul>
							<li>
								<a href="./ViewAllFeedbacksAction"
									class="parent"><span>ViewFeedbacks</span> </a>

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