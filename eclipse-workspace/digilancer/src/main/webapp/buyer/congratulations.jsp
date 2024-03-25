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
		.section-1{
			height:100vh;
		}
		.card1{
			background-color:rgb(35,35,35);
			color:white;
			width:50vw;
			height:60vh;
			border-radius:10px;
		}
		.section-1 .content p{
			font-size: 17px;
		}
		.section-1 img{
			height:40vh;
		}
		.section-1 .content a{
        	background-color:rgb(35,35,35);
        	border:1px solid #dc2751;
        	padding:10px 40px;
        	color: white;
        	border-radius:2px;
        	transition: 0.3s;
        }
        .section-1 .content a:hover{
        	background-color:#dc2751;
        	color:white;
        	text-decoration:none;
        }
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<div class="section-1 container-fluid d-flex justify-content-center align-items-center">
		<div class="card1 d-flex align-items-center p-5">
			<div class="content">
				<h1 class="mb-4">Congratulations!</h1>
				<p class="mb-4">Your project has been created and posted. You can start shortlisting freelancers in the "Matching Freelancers" section in your project right away.</p>
				<h4 class="mb-5">Happy Digilancing!!</h4>
				<a class="mr-auto" href="http://localhost:8080/digilancer/buyer/dashboard/dashboard.jsp">View Project</a>
			</div>
			<div class="image">
				<img src="images/congratulate.png"/>
			</div>
		</div>
	</div>
</body>
</html>