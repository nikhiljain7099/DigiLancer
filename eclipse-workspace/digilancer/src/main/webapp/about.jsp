<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha384-o7s5E2Bt9z2+fOWgYxm9pjAf9z0Kl+SLh/6EXDAdNEt1Wh3IsQp4ISD4tP2paPL" crossorigin="anonymous"></script>
    
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		/* heading-css */
		/* Parallax section */
        #promo {
            background: url('https://png.pngtree.com/background/20230611/original/pngtree-employees-at-tables-in-this-purple-office-picture-image_3170335.jpg') fixed center no-repeat;
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
            background: rgba(0, 0, 0, 0.6); /* Adjust the overlay color and opacity */
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
        
        /* section-1 */
        .section-1-image img{
        	width:45vw;
        }
        .section-1-content{
        	width:35vw;
        	color:white;
        }
        .section-1-content ul{
        	list-style-type:none;
        	padding:0px !important;
        	font-size:13px;
        }
        .section-1-content ul i{
        	/* color:#dc2751; */
        }
        .section-1-content a{
        	background-color:rgb(23,23,23);
        	border:1px solid #dc2751;
        	padding:10px 40px;
        	color: white;
        	border-radius:2px;
        	transition: 0.3s;
        }
        .section-1-content a:hover{
        	background-color:#dc2751;
        	color:white;
        	text-decoration:none;
        }
        /* counters */
		#counters {
		    padding: 50px 0;
		    background-color: #dc2751; /* Adjust the background color as needed */
		    color:white;
		}
		.counter h2 {
		    font-size: 48px;
		    margin: 0;
		}
		
		.counter p {
		    margin-top: 10px;
		    font-size: 18px;
		}
        
        /* section-2 */
        .section-2{
        	margin-top:40px;
        }
        .section-2-content{
        	width:40%;
        	color:white;
        }
        .section-2-content p{
        	font-size:14px;
        	line-height: 1.8;
        }
        .section-2-content i{
        	font-size:25px;
        }
        .section-2-img img{
        	width:50vw;
        }
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	
	<!-- navbar-html -->
   <%@ include file="components/navbar.jsp" %>
   <!-- heading -->
	 <section id="promo" class="parallax-one parallax">
        <div class="container">
            <h1>About Us</h1>
        </div>
    </section>
    <!-- about section-1  -->
    <div class="about section-1 container-fluid d-flex justify-content-around">
    	<div class="section-1-image">
    		 <img src="images/about.png"/>
    	</div>
    	<div class="section-1-content mt-5">
    		<h2 class="mt-5 mb-5">Join World's Best Marketplace for Workers</h2>
    		<p class="mb-5">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
    		<div class="list-style2">
    			<ul class="mb-5">
    			<li class="mb-3"><i class="fa fa-check mr-3"></i>Connect to freelancers with proven business experience</li>
    			<li class="mb-3"><i class="fa fa-check mr-3"></i>Get matched with the perfect talent by a customer success manager</li>
    			<li class="mb-3"><i class="fa fa-check mr-3"></i>Unmatched quality of remote, hybrid, and flexible jobs</li></ul>
    		</div>
    		<a href="buyer.jsp">Find Talent</a>
    	</div>
    </div>
    
    <!-- counter  -->
	<!-- counter section -->
	<section id="counters" class="container-fluid text-center">
	    <div style="margin:auto" class="row justify-content-center d-flex">
	        <div class="counter col-md-2">
	            <h2 id="clients-counter">0</h2>
	            <p>Total Freelancer</p>
	        </div>
	        <div class="counter col-md-2">
	            <h2 id="freelancers-counter">0</h2>
	            <p>Positive Reviews</p>
	        </div>
	        <div class="counter col-md-2">
	            <h2 id="users-counter">0</h2>
	            <p>Orders Received</p>
	        </div>
	        <div class="counter col-md-2">
	            <h2 id="gigs-counter">0</h2>
	            <p>Projects Completed</p>
	        </div>
	    </div>
	</section>
	
	<!-- about section-2  -->
	<div class="container-fluid about section-2 mt-5 mb-5 p-5 d-flex justify-content-between">
		<div class="section-2-content mt-5 pt-5">
			<h2 class="mb-5">A whole world of freelance talent at your fingertips</h2>
			<div class="d-flex flex-row mt-5">
				<i class="fa-solid fa-medal mt-1 mr-3"></i>
				<div class="list-content flex-grow-1 ml20">
					<h5>Proof of quality</h5>
					<p>Check any pro’s work samples, client reviews, and identity<br/>verification.</p>
				</div>
			</div>
			<div class="d-flex flex-row mt-5">
				<i class="fa-solid fa-dollar-sign mt-1 mr-3"></i>
				<div class="list-content flex-grow-1 ml20">
					<h5>No cost until you hire</h5>
					<p>Interview potential fits for your job, negotiate rates, and only pay<br> for work you approve.</p>
				</div>
			</div>
			<div class="d-flex flex-row mt-5">
				<i class="fa-solid fa-lock mt-1 mr-3"></i>
				<div class="list-content flex-grow-1 ml20">
					<h5>Safe & Secure</h5>
					<p>Focus on your work knowing we help protect your data and privacy. We’re here with 24/7 support if you need it.</p>
				</div>
			</div>
		</div>
		<div class="section-2-img">
			<img src="images/about2.jpg"/>
		</div>
	</div>
	
	<!-- frequently asked questions -->
	
	
   <!-- footer -->
	<%@ include file="components/footer.jsp" %>
	
	
	<script>
	/* Counter */
	   function startCounterAnimation() {
	       let counters = document.querySelectorAll('.counter h2');
	       let counterValues = [0, 0, 0, 0];
	
	       function updateCounters() {
	           const targetValues = [834, 732, 90, 236];
	           
	           counters.forEach((counter, index) => {
	               const targetValue = targetValues[index];
	               const increment = Math.ceil(targetValue / 100);
	
	               counterValues[index] += increment;
	
	               if (counterValues[index] > targetValue) {
	                   counterValues[index] = targetValue;
	               }
	
	               counter.textContent = counterValues[index];
	           });
	       }
	
	       let countingStarted = false;
	
	       // Function to check if an element is in the viewport
	       function isInViewport(element) {
	           const rect = element.getBoundingClientRect();
	           return (
	               rect.top >= 0 &&
	               rect.left >= 0 &&
	               rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
	               rect.right <= (window.innerWidth || document.documentElement.clientWidth)
	           );
	       }
	
	       // Function to handle scroll events
	       function handleScroll() {
	           if (isInViewport(document.getElementById('counters')) && !countingStarted) {
	               // Start the counter animation when the counters section comes into view
	               countingStarted = true;
	               setInterval(updateCounters, 20); // Adjust the interval as needed
	           }
	       }
	
	       // Attach the scroll event listener
	       window.addEventListener('scroll', handleScroll);
	
	       // Initial check to start animation if counters are already in view
	       handleScroll();
	   }
	
	   startCounterAnimation();
	   
	   /* FAQs */
   </script>
	
</body>
</html>