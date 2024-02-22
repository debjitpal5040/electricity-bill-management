package com.debjit.pal.springbootbackend.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "admins")
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long adminId;

    @Column(name = "userName", nullable = false)
    private String userName;

    @Column(name = "password", nullable = false)
    private String password;

    public Admin() {

    }

    public Admin(String userName, String password) {
        super();
        this.userName = userName;
        this.password = password;
    }

    @Override
    public String toString() {
        return "Admin [adminId=" + adminId + ", userName=" + userName + ", password=" + password + "]";
    }

    public long getadminId() {
        return adminId;
    }

    public void setadminId(long adminId) {
        this.adminId = adminId;
    }

    public String getuserName() {
        return userName;
    }

    public void setuserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
