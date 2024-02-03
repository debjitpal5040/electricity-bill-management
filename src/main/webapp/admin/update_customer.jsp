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
			<% int consumerId=Integer.parseInt(request.getParameter("consumerId")); String
				firstName=request.getParameter("firstName"); String lastName=request.getParameter("lastName"); String
				email=request.getParameter("email"); String password=request.getParameter("password"); String
				phone=request.getParameter("phone"); String address=request.getParameter("address"); %>
				<form class="col-lg-6 p-5 mx-auto mt-5 text-center shadow"
					action="<%=request.getContextPath()%>/admin?action=update_customer" method="post">
					<h1 class="text-center mb-5">Update Customer Details</h1>

					<div>
						<%= request.getAttribute("err")==null ? "" : request.getAttribute("err") %>
					</div>

					<div class="form-floating mb-3 d-none">
						<input type="text" class="form-control" id="consumerId" name="consumerId"
							value="<%= consumerId %>">
						<label for="consumerId">Consumer Id</label>
					</div>

					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="firstName" name="firstName"
							placeholder="Enter your first name" value="<%= firstName %>">
						<label for="firstName">First Name</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="lastName" name="lastName"
							placeholder="Enter your password" value="<%= lastName %>">
						<label for="lastName">Last Name</label>
					</div>
					<div class="form-floating mb-3">
						<input type="email" class="form-control" id="email" name="email"
							placeholder="Enter your username" value="<%= email %>">
						<label for="email">Email</label>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control" id="password" name="password"
							placeholder="Enter your password" value="<%= password %>">
						<label for="password">Password</label>
					</div>
					<div class="form-floating mb-3">
						<input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your username"
							value="<%= phone %>">
						<label for="phone">Phone</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="address" name="address"
							placeholder="Enter your username" value="<%= address %>">
						<label for="address">Address</label>
					</div>
					<button class="form-control btn btn-primary mb-5" type="submit">Update Details</button>
					<br><br>
					If you are customer login <a href="/src/main/webapp/auth/customer_login.jsp">here</a>
				</form>

				<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"
					integrity="sha512-X/YkDZyjTf4wyc2Vy16YGCPHwAY8rZJY+POgokZjQB2mhIRFJCckEGc6YyX9eNsPfn0PzThEuNs+uaomE5CO6A=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		</body>

	</html>
