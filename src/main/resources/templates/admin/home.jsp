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
			<form class="text-center mx-auto mt-5 p-5" action="<%=request.getContextPath()%>/admin?action=all_customer"
				method="post">
				<input class="btn btn-primary" type="Submit" value="Manage Customer Accounts" class="center">
			</form>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"
				integrity="sha512-X/YkDZyjTf4wyc2Vy16YGCPHwAY8rZJY+POgokZjQB2mhIRFJCckEGc6YyX9eNsPfn0PzThEuNs+uaomE5CO6A=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		</body>

	</html>
