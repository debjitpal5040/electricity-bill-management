import { Injectable, Inject, PLATFORM_ID } from '@angular/core';
import { isPlatformBrowser } from '@angular/common';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {

  constructor(@Inject(PLATFORM_ID) private platformId: Object) { }

  authenticate(username: string, password: string): boolean {
    if (username === "admin" && password === "admin") {
      if (isPlatformBrowser(this.platformId)) {
        sessionStorage.setItem('username', username)
      }
      return true;
    } else {
      return false;
    }
  }

  isUserLoggedIn(): boolean {
    if (isPlatformBrowser(this.platformId)) {
      let user = sessionStorage.getItem('username');
      console.log(!(user === null));
      return !(user === null);
    }
    return false;
  }

  logOut(): void {
    if (isPlatformBrowser(this.platformId)) {
      sessionStorage.removeItem('username');
    }
  }
}
