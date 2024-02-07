package com.debjit.pal.electricitybillmanagement.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminController() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action.equals("all_customer")) {
			try {
				request.setAttribute("customers", customerDao.getAllCustomers());
			} catch (Exception e) {
				request.setAttribute("err", "Cannot get customer details. Error: " + e.getMessage());
			}
			RequestDispatcher rs = request.getRequestDispatcher("/admin/view_customer_list.jsp");
			rs.forward(request, response);
		} else if (action.equals("delete_customer")) {
			int consumerId = Integer.parseInt(request.getParameter("consumerId"));
			try {
				customerDao.deleteCustomerById(consumerId);
			} catch (Exception e) {
				request.setAttribute("err", "Error: " + e.getMessage());
			}
			RequestDispatcher rs = request.getRequestDispatcher("/admin?action=all_customer");
			rs.forward(request, response);
		} else if (action.equals("update_customer")) {
			int consumerId = Integer.parseInt(request.getParameter("consumerId"));
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			try {
				customerDao.update(consumerId, firstName, lastName, email, password, phone, address);
			} catch (Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher rs = request.getRequestDispatcher("/admin?action=all_customer");
			rs.forward(request, response);
		} else
			response.getWriter().append("Served at: ").append(request.getContextPath());
	}
}
