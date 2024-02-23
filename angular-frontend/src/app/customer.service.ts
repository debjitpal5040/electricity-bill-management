import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { Customer } from './customer';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {
  private baseURL = "http://localhost:8100/api/v1/customers";

  constructor(private httpClient: HttpClient) { }

  getCustomersList(): Observable<Customer[]> {
    return this.httpClient.get<Customer[]>(`${this.baseURL}`);
  }

  createCustomer(customer: Customer): Observable<Object> {
    return this.httpClient.post(`${this.baseURL}`, customer);
  }

  getCustomerById(customerId: number): Observable<Customer> {
    return this.httpClient.get<Customer>(`${this.baseURL}/${customerId}`);
  }

  updateCustomer(customerId: number, customer: Customer): Observable<Object> {
    return this.httpClient.put(`${this.baseURL}/${customerId}`, customer);
  }

  deleteCustomer(customerId: number): Observable<Object> {
    return this.httpClient.delete(`${this.baseURL}/${customerId}`);
  }
}
