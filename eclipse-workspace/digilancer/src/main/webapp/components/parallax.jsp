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
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<!-- heading -->
	 <section id="promo" class="parallax-one parallax">
        <div class="container">
            <h5>DigiLancer's</h5>
            <h1>Top Microgigs</h1>
        </div>
    </section>
</body>
</html>