import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../authentication.service';
import { Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css',
  standalone: true,
  imports: [FormsModule, CommonModule]
})
export class LoginComponent implements OnInit {
  username = ''
  password = ''
  invalidLogin = false
  constructor(private authenticationService: AuthenticationService, private router: Router) { }
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

  onSubmitAdmin() {
    console.log("Admin logged in");
    this.adminLogin();
  }

}
