import { Component, OnInit } from '@angular/core';
import { Customer } from '../customer';
import { Admin } from '../admin';
import { CustomerService } from '../customer.service';
import { AdminService } from '../admin.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent implements OnInit {
  customer: Customer = new Customer();
  admin: Admin = new Admin();
  constructor(private customerService: CustomerService, private adminService: AdminService, private router: Router) { }
  ngOnInit(): void {
  }

  customerLogin() {

  }
  adminLogin() {

  }

  onSubmitCustomer() {
    console.log(this.customer);
    this.customerLogin();
  }
  onSubmitAdmin() {
    console.log(this.admin);
    this.adminLogin();
  }

}
