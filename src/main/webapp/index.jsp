<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

    <head>
      <meta charset="ISO-8859-1">

      <link rel="icon" type="image/png" href="logo.png">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css"
        integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
      <title>E-Bill Portal</title>
      <style>
        a:link {
          color: white;
        }
      </style>
    </head>

    <body>
      <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
          <div>
            <img src="logo.png" style="width: 40px; height: 40px; border-radius: 50%" alt="logo">&nbsp;&nbsp;&nbsp;
          </div>
          <a class="navbar-brand" href="#">EBill Portal</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item"><a class="nav-link active" aria-current="page"
                  href="/src/main/webapp/auth/customer_register.jsp">Register</a></li>
              <li class="nav-item"><a class="nav-link active" aria-current="page"
                  href="/src/main/webapp/auth/customer_login.jsp">Login</a></li>
              <li class="nav-item"><a class="nav-link active" aria-current="page"
                  href="/src/main/webapp/auth/admin_login.jsp">Admin</a></li>
            </ul>
          </div>
        </div>
      </nav>

      <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="img1.jpg" height="500px" class="d-block w-100" alt="first image">
            <div class="carousel-caption d-none d-md-block">
              <h3 style="text-shadow: 2px 2px 2px black;">Welcome to EBill Portal</h3>
              <h4 style="text-shadow: 2px 2px 2px black;">Switching You Onto Power!</h4>
            </div>
          </div>
          <div class="carousel-item">
            <img src="img2.jpg" height="500px" class="d-block w-100" alt="second image">
            <div class="carousel-caption d-none d-md-block">
              <h3 style="text-shadow: 2px 2px 2px black;">Welcome to EBill Portal</h3>
              <h4 style="text-shadow: 2px 2px 2px black;">We Charge Less to Charge You More.</h4>
            </div>
          </div>
          <div class="carousel-item">
            <img src="img3.jpg" height="500px" class="d-block w-100" alt="third image">
            <div class="carousel-caption d-none d-md-block">
              <h3 style="text-shadow: 2px 2px 2px black;">Welcome to EBill Portal</h3>
              <h4 style="text-shadow: 2px 2px 2px black;">Serving Power, Not Just Assurances</h4>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <footer class="footer" style="background-color:black; padding-top:30px;">
        <div class="container">
          <div class="row">

            <!--------- Google Maps --------->
            <div class="col-md-5">
              <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3684.0928570898277!2d88.47842240471171!3d22.575630108444543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a020b5fc26ffbf9%3A0xc0fa86ce0d9fd8bb!2sTCS%20Infospace%20Unitech%20A3!5e0!3m2!1sen!2sin!4v1694063731260!5m2!1sen!2sin"
                width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <!--------- Contact Us --------->
            <div class="col-md-3">
              <span class="text-light">
                <h5>Contact Us</h5>
                <p>
                  DH/01 03/01, DH Block(Newtown), Action Area I, Newtown, Kolkata, Chakpachuria, West Bengal 700135<br>
                  <br>
                  <i class="fa fa-phone" aria-hidden="true"></i> <a href="tel:+919876543210">+91-9876-543-210</a><br>
                  <i class="fa fa-envelope" aria-hidden="true"></i> <a
                    href="mailto:ebillapp@gmail.com">ebillapp@gmail.com</a>
                </p>
              </span>
            </div>
            <!--------- About Us --------->
            <div class="col-md-3">
              <span class="text-light">
                <h5>About Us</h5>
                <p>
                  We are a web-based platform that helps you manage your electricity bills with ease and convenience.
                  Our mission is to provide you with a hassle-free and transparent service that saves you time and
                  money.
                  We are committed to providing you with the best service possible. We hope you have a great experience
                  with us.
                </p>
              </span>
            </div>
          </div>
        </div>

        <!--------- Copyright --------->

        <div>
          <p class="text-center text-light" style="margin:0px;">
            <i class="fa fa-copyright" aria-hidden="true"></i> E-Bill App, 2023
          </p>
          <p class="text-center text-light" style="margin:0px;">
            <i class="fa fa-copyright" aria-hidden="true"></i> All rights reserved
          </p>
        </div>
        <div style="background-color:black">
          <p class="text-center text-light">
            Designed and Developed by Debashis Nandi, Debjit Pal, Debosmita Saha and Dip Bhowmick
          </p>
        </div>
      </footer>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"
        integrity="sha512-X/YkDZyjTf4wyc2Vy16YGCPHwAY8rZJY+POgokZjQB2mhIRFJCckEGc6YyX9eNsPfn0PzThEuNs+uaomE5CO6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"
        integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </body>

  </html>
