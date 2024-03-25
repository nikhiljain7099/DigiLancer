<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
     <!-- Bootstrap CSS -->
    <script src="https://kit.fontawesome.com/3b161c540c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		
		.dashboard .myproject{
			width:60%;
			background-color:white;
			margin:auto;
		}
		.dashboard .myproject p{
			font-size:18px;
			text-align:center;
			color:black;
		}
		.dashboard .myproject a{
			font-size:18px;
			text-align:center;
			color:blue;
			transition:0.3s;
		}
		.dashboard .myproject a:hover{
			text-decoration:none;
		}
		.dashboard .myproject .head{
			font-weight:600;
		}
		.dashboard .myproject .button-area .button{
			padding:6px 12px;
			border:1px solid #dc2751;
			font-size:18px;
			color:#dc2751;
			border-radius:3px;
			transition:0.3s;
			width:15vw;
			text-align:center;
			font-weight:500;
		}
		.dashboard .myproject .button-area .button:hover{
			text-decoration:none;
			background-color:#dc2751;
			color:white;
		}
		.dashboard .myproject .head{
			background-color:#dc2751;
			padding:4px 20px;
			transition:0.3s;
			border-radius:20px;
			color:white;
		}
		
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<%
		HttpSession session1 = request.getSession();
		session1.setAttribute("category", "Graphic Design");
	%>
   
   <h1 class="text-center text-light mt-5">Completed Projects</h1>
   		<div class="myproject rounded p-3 mt-3">
   			<div class="d-flex flex-column align-items-center justify-content-center">
	   			<div class="details">
		   			<p class="head mb-0">Project Title</p>
		   			<p class="mb-0">Social Media Posts</p>
	   			</div>
	   			<div class="details mt-4">
		   			<p style="width:30%" class="head mb-0 mr-auto ml-auto">Project Description</p>
		   			<p class="mb-0">You have to make 3 social media posts for restaurant with the topic of shifting the location to Mumbai</p>
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Project Category</p>
		   			<p class="mb-0">Graphic Design</p>
		   			
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Amount</p>
		   			<p class="mb-0">5000</p>
	   			</div>
	   			<div class="details mt-4 d-flex flex-column justify-content-center">
		   			<p class="head mb-0">Business</p>
		   			<a class="mr-auto ml-auto" href="viewbusinessprofile.jsp?source=completedprojects" >Marketing Minds </a>
	   			</div>
   			</div>
   			
   		</div>
   
	
</body>
</html>