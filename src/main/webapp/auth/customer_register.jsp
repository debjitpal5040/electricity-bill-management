<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

		<head>
			<meta charset="ISO-8859-1">
			<link rel="icon" type="image/png" href="../logo.png">
			<title>E-Bill Portal</title>

			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css"
				integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg=="
				crossorigin="anonymous" referrerpolicy="no-referrer" />
		</head>

		<body>
			<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">EBill Portal</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active" aria-current="page"
									href="/src/main/webapp/auth/customer_register.jsp">Register</a></li>
							<li class="nav-item"><a class="nav-link active" aria-current="page"
									href="/src/main/webapp/auth/customer_login.jsp">Login</a></li>
							<li class="nav-item"><a class="nav-link active" aria-current="page"
									href="/src/main/webapp/auth/admin_login.jsp">Admin</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<form class="col-lg-6 p-5 mx-auto mt-5 text-center shadow"
				action="<%=request.getContextPath()%>/auth?action=customer_register" method="post">
				<h1 class="text-center mb-5">Customer Register</h1>

				<div>
					<%= request.getAttribute("err")==null ? "" : request.getAttribute("err") %>
				</div>

				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="firstName" name="firstName"
						placeholder="Enter your username">
					<label for="firstName">First Name</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="lastName" name="lastName"
						placeholder="Enter your password">
					<label for="lastName">Last Name</label>
				</div>
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="email" name="email" placeholder="Enter your username">
					<label for="email">Email</label>
				</div>
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="Enter your password">
					<label for="password">Password</label>
				</div>
				<div class="form-floating mb-3">
					<input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your username">
					<label for="phone">Phone</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="address" name="address"
						placeholder="Enter your username">
					<label for="address">Address</label>
				</div>
				<button class="form-control btn btn-primary mb-5" type="submit">Register</button>
				<br><br>
				If you are customer login <a href="/Electricity_Bill_Management/auth/customer_login.jsp">here</a>
			</form>

			<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"
				integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		</body>

	</html>
