package com.debjit.pal.electricitybillmanagement.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.debjit.pal.electricitybillmanagement.model.Customer;

public class CustomerJDBCRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    class CustomerRowMapper implements RowMapper<Customer> {
        @Override
        public Customer mapRow(@SuppressWarnings("null") ResultSet rs, int rowNum) throws SQLException {
            Customer customer = new Customer();
            customer.setConsumerId(rs.getInt("consumerId"));
            customer.setFirstName(rs.getString("firstName"));
            customer.setLastName(rs.getString("lastName"));
            customer.setEmail(rs.getString("email"));
            customer.setPassword(rs.getString("password"));
            customer.setPhone(rs.getString("phone"));
            customer.setAddress(rs.getString("address"));
            return customer;
        }
    }

    public List<Customer> getAllCustomers() {
        return jdbcTemplate.query("select * from customer", new CustomerRowMapper());
    }

    @SuppressWarnings("deprecation")
    public Customer login(String email, String password) throws Exception {
        return jdbcTemplate.queryForObject("select * from customer where email = ? and password = ?",
                new Object[] { email, password },
                Customer.class);
    }

    public int deleteCustomerById(int consumerId) {
        return jdbcTemplate.update("delete from customer where consumerId=?", new Object[] {
                consumerId
        });
    }

    public int register(Customer customer) {
        return jdbcTemplate.update(
                "insert into customer (firstName, lastName, email, password, phone, address) "
                        + "values(?, ?, ?, ?, ?, ?)",
                new Object[] {
                        customer.getFirstName(), customer.getLastName(), customer.getEmail(), customer.getPassword(),
                        customer.getPhone(), customer.getAddress()
                });
    }

    public int update(Customer customer) {
        return jdbcTemplate.update(
                "update customer "
                        + " set firstName = ?, lastName = ?, email = ?, password = ?, phone = ?, address = ? "
                        + " where consumerId = ?;",
                new Object[] {
                        customer.getFirstName(), customer.getLastName(), customer.getEmail(), customer.getPassword(),
                        customer.getPhone(), customer.getAddress(), customer.getConsumerId()
                });
    }

}
