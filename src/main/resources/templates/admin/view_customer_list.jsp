<%@ page import="java.util.*, com.beans.*" %>
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
			<style>
				a {
					text-decoration: none;
					color: black;
				}
			</style>

			<body>
				<%= request.getAttribute("err")==null ? "" : request.getAttribute("err") %>

					<% List<Customer> customers = (List<Customer>) request.getAttribute("customers");%>

							<h2 class="mt-5 text-center">List of Consumers</h2><br><br>

							<table class="table table-striped table-bordered mx-auto text-center" style="width:50rem;">
								<thead>
									<tr>
										<th scope="col">Consumer ID</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
										<th scope="col">Phone</th>
										<th scope="col">Address</th>
										<th scope="col" colspan="2">Actions</th>
									</tr>
								</thead>
								<% for (Customer c: customers) { %>
									<tbody>
										<tr>
											<th scope="row">
												<%=c.getConsumerId()%>
											</th>
											<td>
												<%=c.getFirstName()%>
											</td>
											<td>
												<%=c.getLastName()%>
											</td>
											<td>
												<%=c.getEmail()%>
											</td>
											<td>
												<%=c.getPhone()%>
											</td>
											<td>
												<%=c.getAddress()%>
											</td>

											<td><button type="button" class="btn btn-warning"><a
														href="/Electricity_Bill_Management/admin/update_customer.jsp?<%=c.getQueryString()%>">Edit</a></button>
											</td>
											<td><button type="button" class="btn btn-danger"><a
														href="/Electricity_Bill_Management/admin?action=delete_customer&consumerId=<%=c.getConsumerId()%>">Delete</a></button>
											</td>
										</tr>
										<% } %>
									</tbody>
							</table>
							<script
								src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
			</body>

		</html>
