import { Component, OnInit } from '@angular/core';
import { Customer } from '../customer';
import { ActivatedRoute } from '@angular/router';
import { CustomerService } from '../customer.service';

@Component({
  selector: 'app-customer-details',
  templateUrl: './customer-details.component.html',
  styleUrl: './customer-details.component.css'
})
export class CustomerDetailsComponent implements OnInit{
  customerId!: number
  customer!: Customer
  constructor(private route: ActivatedRoute, private customerService: CustomerService) { }

  ngOnInit(): void {
    this.customerId = this.route.snapshot.params['customerId'];

    this.customer = new Customer();
    this.customerService.getCustomerById(this.customerId).subscribe(data => {
      this.customer = data;
    });
  }

}
