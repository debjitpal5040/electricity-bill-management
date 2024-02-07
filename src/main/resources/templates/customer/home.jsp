<%@ page import="java.util.*,com.beans.*" %>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<!DOCTYPE html>
		<html>

			<head>
				<meta charset="ISO-8859-1">
				<link rel="icon" type="image/png" href="../logo.png">
				<title>E-Bill Portal</title>
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css"
					integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg=="
					crossorigin="anonymous" referrerpolicy="no-referrer" />
			</head>

			<body>

				<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
					<div class="container-fluid">
						<div>
							<img src="logo.png" style="width: 40px; height: 40px; border-radius: 50%"
								alt="logo">&nbsp;&nbsp;&nbsp;
						</div>
						<a class="navbar-brand" href="#">
							<% Customer c=(Customer) request.getAttribute("myInfo"); %>
								Hi <%= c.getFirstName() + " " + c.getLastName() %>
						</a>

					</div>
				</nav>


				<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"
					integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>
			</body>

		</html>
