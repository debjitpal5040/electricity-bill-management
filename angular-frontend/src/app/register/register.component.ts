import { Component, OnInit } from '@angular/core';
import { Customer } from '../customer';
import { CustomerService } from '../customer.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrl: './register.component.css'
})
export class RegisterComponent implements OnInit {
  customer: Customer = new Customer();
  constructor(private customerService: CustomerService,
    private router: Router) { }

  ngOnInit(): void {
  }

  saveCustomer() {
    this.customerService.createCustomer(this.customer).subscribe(data => {
      console.log(data);
      this.goToLogin();
    },
      error => console.log(error));
  }

  goToCustomerList() {
    this.router.navigate(['/customers']);
  }

  goToLogin() {
    this.router.navigate(['/login']);
  }

  onSubmit() {
    console.log(this.customer);
    this.saveCustomer();
  }

}
