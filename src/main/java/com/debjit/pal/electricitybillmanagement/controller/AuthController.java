package com.debjit.pal.electricitybillmanagement.controller;

import java.io.IOException;

import com.debjit.pal.electricitybillmanagement.model.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/auth")
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AuthController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("customer_register")) {
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			try {
				int consumerId = customerDao.register(firstName, lastName, email, password, phone, address);
				if (consumerId == -1) {
					request.setAttribute("err", "Account does not exists!");
					RequestDispatcher rs = request.getRequestDispatcher("/auth/customer_register.jsp");
					rs.forward(request, response);
				} else {
					request.setAttribute("msg", "Account created sucessfylly with consumer id: " + consumerId);
					RequestDispatcher rs = request.getRequestDispatcher("/auth/customer_login.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				request.setAttribute("err", "Error: " + e.getMessage());
				RequestDispatcher rs = request.getRequestDispatcher("/auth/customer_register.jsp");
				rs.forward(request, response);
			}
		} else if (action.equals("customer_login")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			try {
				Customer c = customerDao.login(username, password);
				if (c != null) {
					request.setAttribute("myInfo", c);
					RequestDispatcher rs = request.getRequestDispatcher("/customer/home.jsp");
					rs.forward(request, response);
				} else {
					request.setAttribute("err", "Unknown Error!");
					RequestDispatcher rs = request.getRequestDispatcher("/auth/customer_login.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				request.setAttribute("err", e.getMessage());
				RequestDispatcher rs = request.getRequestDispatcher("/auth/customer_login.jsp");
				rs.forward(request, response);
			}
		} else if (action.equals("admin_login")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			if (username.equals("admin") && password.equals("admin")) {
				RequestDispatcher rs = request.getRequestDispatcher("/admin/home.jsp");
				rs.forward(request, response);
			} else {
				request.setAttribute("err", "Invalid Username or Password!");
				RequestDispatcher rs = request.getRequestDispatcher("/auth/admin_login.jsp");
				rs.forward(request, response);
			}
		}

	}

}
