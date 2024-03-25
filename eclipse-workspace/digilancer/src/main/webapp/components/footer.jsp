<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
    <!-- Bootstrap CSS -->
    <script src="https://kit.fontawesome.com/3b161c540c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
	<style>
		body {
			font-family: 'Poppins', sans-serif;
			background-color: rgb(23, 23, 23);
		}

		/* Section: Social media */
		.section-social {
			background-color: #dc2751;
		}

		.section-social .me-5 span {
			color: white;
		}

		.section-social a.text-white {
			color: white;
			margin-right: 4px;
		}

		/* Section: Links */
		.section-links {
			color: white;
		}

		.section-links .col-md-3 h6,
		.section-links .col-md-2 h6,
		.section-links .col-md-4 h6 {
			text-transform: uppercase;
			font-weight: bold;
		}

		.section-links hr {
			margin-left: auto !important;
			margin-right: auto !important;
			background-color: #dc2751;
			height: 2px;
			width: 60px;
			margin: 4px 0;
		}

		/* Section: Contact */
		.section-contact {
			color:white !important;
			background-color: rgba(0, 0, 0, 0.2);
		}

		.section-contact .text-center {
			color: white;
		}
		footer .section-links a:hover{
			text-decoration:none;
			color: #dc2751 !important;
		}
		footer .section-social a:hover{
			text-decoration:none;
			color: rgb(23,23,23) !important;
		}
	</style>

    <title>DigiLancer</title>
  </head>
<body>
	
  <!-- Footer -->
  <footer class="text-center text-lg-start">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-between p-4 section-social">
      <!-- Left -->
      <div class="me-5">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Right -->
      <div>
        <a href="" class="text-white mr-4">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="text-white mr-4">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="text-white mr-4">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="text-white mr-4">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="text-white mr-4">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="text-white mr-4">
          <i class="fab fa-github"></i>
        </a>
      </div>
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="section-links">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6>DigiLancer</h6>
            <hr class="mb-4 mt-0"/>
            <p>
              Dynamic platform bridging freelancers and businesses, facilitating seamless connections for digital marketing endeavors.
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6>Services</h6>
            <hr class="mb-4 mt-0"/>
            <p>
              <a href="#!" class="text-white">IT</a>
            </p>
            <p>
              <a href="#!" class="text-white">Graphic Designing</a>
            </p>
            <p>
              <a href="#!" class="text-white">Product Shoot</a>
            </p>
            <p>
              <a href="#!" class="text-white">Social Media Marketing</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6>Useful links</h6>
            <hr class="mb-4 mt-0"/>
            <p>
              <a href="#!" class="text-white">Home</a>
            </p>
            <p>
              <a href="#!" class="text-white">About</a>
            </p>
            <p>
              <a href="#!" class="text-white">Testimonials</a>
            </p>
            <p>
              <a href="#!" class="text-white">Contact</a>
            </p>
            <p>
              <a href="#!" class="text-white">Services</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6>Contact</h6>
            <hr class="mb-4 mt-0"/>
            <p><i class="fas fa-home mr-3"></i> Ahmedabad, Gujarat, India</p>
            <p><i class="fas fa-envelope mr-3"></i> digilancer@gmail.com</p>
            <p><i class="fas fa-phone mr-3"></i> + 91 95588 34373</p>
            <p><i class="fas fa-phone mr-3"></i> + 91 77279 04006</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-3 section-contact">
      © 2023 Copyright:
      <a class="text-white" href="../index.jsp">DigiLancer.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
</body>
</html>
