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
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		
		.bg-dark1 {
    		background-color: black !important;
		}
		.navbar-image{
			width:150px !important;
			margin:0px 100px;
		}
		.nav-link1{
			font-size:16px;
			text-align:right;
			margin: 0px 20px;
			color:white !important;
			transition : 0.3s;
			font-weight: 500 !important;
		}
		.nav-link1:hover{
			color:#dc2751 !important;
		}
		
		
	</style>
    <title>DigiLancer</title>
  </head>
<body>
<!-- navbar-html -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark1">
	  <a class="navbar-brand" href="index.jsp">
	  	<img src="images/logowhite.png" class="navbar-image" alt="...">
	  </a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link nav-link1" style="margin-left:440px;" href="index.jsp">Home</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link nav-link1" href="about.jsp">About</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link nav-link1" href="testimonials.jsp">Testimonials</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link nav-link1" href="services.jsp">Services</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link nav-link1" href="contact.jsp">Contact</a>
	      </li>
	    </ul>
	  </div>
	</nav>
</body>
</html>