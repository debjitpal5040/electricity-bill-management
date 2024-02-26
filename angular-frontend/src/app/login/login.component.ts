import { Component, OnInit } from '@angular/core';
import { Customer } from '../customer';
import { Admin } from '../admin';
import { CustomerService } from '../customer.service';
import { AdminService } from '../admin.service';
import { AuthenticationService } from '../authentication.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent implements OnInit {
  customer: Customer = new Customer();
  admin: Admin = new Admin();
  username = ''
  password = ''
  invalidLogin = false
  constructor(private customerService: CustomerService, private adminService: AdminService, private authenticationService: AuthenticationService, private router: Router) { }
  ngOnInit(): void {
  }

  adminLogin() {
    if (this.authenticationService.authenticate(this.username, this.password)
    ) {
      this.router.navigate(['admin']);
      this.invalidLogin = false;
    } else {
      this.invalidLogin = true;
      console.log("Incorrect userName or password");
    }
  }

  customerLogin() {

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
