package com.debjit.pal.electricitybillmanagement.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.debjit.pal.electricitybillmanagement.model.Customer;
import com.debjit.pal.electricitybillmanagement.repository.CustomerJDBCRepository;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin")
@RestController
@RequestMapping("/api/v1/")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminController() {
		super();
	}

	@Autowired
    private CustomerJDBCRepository customerJDBCRepository;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("all_customer")) {
			try {
				request.setAttribute("customers", customerJDBCRepository.getAllCustomers());
			} catch (Exception e) {
				request.setAttribute("err", "Cannot get customer details. Error: " + e.getMessage());
			}
			RequestDispatcher rs = request.getRequestDispatcher("/admin/view_customer_list.jsp");
			rs.forward(request, response);
		} else if (action.equals("delete_customer")) {
			int consumerId = Integer.parseInt(request.getParameter("consumerId"));
			try {
				customerJDBCRepository.deleteCustomerById(consumerId);
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
				customerJDBCRepository.update(new Customer(consumerId, firstName, lastName, email, password, phone, address));
			} catch (Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher rs = request.getRequestDispatcher("/admin?action=all_customer");
			rs.forward(request, response);
		} else
			response.getWriter().append("Served at: ").append(request.getContextPath());
	}
}
