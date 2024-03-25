<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/testimonials/testimonial-3/assets/css/testimonial-3.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		/* heading-css */
		/* Parallax section */
        #promo {
            background: url('https://images.unsplash.com/photo-1588064643233-49210b27b82e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') fixed center no-repeat;
            background-size: cover;
            position: relative;
            color: #fff;
            text-align: center;
            padding: 100px 0; /* Adjust padding as needed */
        }

        /* Black overlay */
        #promo::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Adjust the overlay color and opacity */
        }

        /* Container styles */
        #promo .container {
            position: relative;
            z-index: 1;
        }

        /* Text styles */
        #promo h5,
        #promo h1 {
            margin: 0;
            font-size: 40px; /* Adjust the font size */
        }

        #promo h1 {
            margin-top: 10px;
            font-size: 70px; /* Adjust the font size */
        }
		.bg-dark1{
			color:white;
		}
		.bg-dark1 hr{
			border-top:3px solid #dc2751 !important;
			opacity:1;
		}
		.card-body{
			transition: 0.5s;
		}
		.card-body:hover{
			color:white;
			background-color:#dc2751;
		}
		.card-body img{
			width:160px;
			height:160px;
		}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<!-- navbar-html -->
   <%@ include file="components/navbar.jsp" %>
	<!-- parallax -->
	 <section id="promo" class="parallax-one parallax">
        <div class="container">
            <h1>Testimonials</h1>
        </div>
    </section>
	<!-- Testimonial 3 - Bootstrap Brain Component -->
	<section class="bg-dark1 py-5 py-xl-8">
	  <div class="container">
	    <div class="row justify-content-md-center">
	      <div class="col-12 col-md-10 col-lg-8 col-xl-9 col-xxl-6">
	        <h2 class="fs-6 mb-2 text-uppercase text-center">Happy Customers</h2>
	        <p class="display-5 mb-4 mb-md-5 text-center">We deliver what we promise.<br>See what users are expressing about us.</p>
	        <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
	      </div>
	    </div>
	  </div>
	
	  <div class="container overflow-hidden">
	    <div class="row gy-4 gy-md-0 gx-xxl-5">
	      <div class="col-12 col-md-4">
	        <div class="card border-0 border-bottom border-primary shadow-sm">
	          <div class="card-body text-center p-4 p-xxl-5">
	            <figure>
	              <img class="img-fluid rounded-circle mb-1 border-5" loading="lazy" src="images/testimonial4.png" alt="Luna John">
	              <figcaption>
	                <div class="bsb-ratings text-warning mb-3" data-bsb-star="5" data-bsb-star-off="0"></div>
	                <blockquote class="bsb-blockquote-icon mb-4">DigiLancer transformed my freelancing experience! Efficient project matching and secure payments make it stand out. A game-changer for freelancers seeking quality projects.</blockquote>
	                <h4 class="mb-2">Luna John</h4>
	                <h5 class=" fs-6 mb-0">UX Designer</h5>
	              </figcaption>
	            </figure>
	          </div>
	        </div>
	      </div>
	      <div class="col-12 col-md-4">
	        <div class="card border-0 border-bottom border-primary shadow-sm">
	          <div class="card-body text-center p-4 p-xxl-5">
	            <figure>
	              <img class="img-fluid rounded rounded-circle border-5" loading="lazy" src="images/testimonial5.png" alt="Mark Smith">
	              <figcaption>
	                <div class="bsb-ratings text-warning mb-3" data-bsb-star="4" data-bsb-star-off="1"></div>
	                <blockquote class="bsb-blockquote-icon mb-4">As a client, DigiLancer's intuitive platform simplified project management. Access to skilled freelancers and seamless transactions exceeded my expectations. Highly recommended!</blockquote>
	                <h4 class="mb-2">Angela Kinsey</h4>
	                <h5 class="fs-6 mb-0">Marketing Specialist</h5>
	              </figcaption>
	            </figure>
	          </div>
	        </div>
	      </div>
	      <div class="col-12 col-md-4">
	        <div class="card border-0 border-bottom border-primary shadow-sm">
	          <div class="card-body text-center p-4 p-xxl-5">
	            <figure>
	              <img class="img-fluid rounded rounded-circle border-5" loading="lazy" src="images/testimonial6.png" alt="Luke Reeves">
	              <figcaption>
	                <div class="bsb-ratings text-warning mb-3" data-bsb-star="5" data-bsb-star-off="0"></div>
	                <blockquote class="bsb-blockquote-icon mb-4">DigiLancer revolutionizes digital collaboration. Finding projects is seamless, and the learning center adds immense value. An indispensable platform for freelancers and clients alike!</blockquote>
	                <h4 class="mb-2">Luke Reeves</h4>
	                <h5 class="fs-6 mb-0">Web Developer</h5>
	              </figcaption>
	            </figure>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	
	<!-- footer -->
	<%@ include file="components/footer.jsp" %>
</body>
</html>