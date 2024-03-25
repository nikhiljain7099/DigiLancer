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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		.viewprofile{
			width:50vw;
		}
		.viewprofile .header{
			background-color:white;
		}
		.viewprofile .header img{
			width:90px;
			height:90px;
			object-fit:cover;
			border-radius:50%;
		}

		.viewprofile .header .button-area a{
			background-color:#dc2751;
			padding:6px 20px;
			color:white;
			transition:0.3s;
			text-align:center;
			width:12vw;
			margin:auto;
		}
		.viewprofile .header .button-area a:hover{
			background-color:rgb(40,40,40);
			text-decoration:none;
		}
		.viewprofile .about,.skills,.portfolio,.education,.reviews{
			background-color:white;
		}
		.viewprofile ul{
			list-style-type:none ;
			padding:0px;;
			margin:0px;
		}
		.viewprofile .reviews img{
			width:4vw;	
			height:9vh;
			border-radius:50%;
			object-fit:cover;
		}
		.viewprofile .reviews span{
			font-weight:500;
			font-size:14px;
		}
		.viewprofile .reviews a{
			font-size:14px;
			color:#dc2751;
			display:inline-block;
		}
		.viewprofile .reviews a:hover{
			color:rgb(40,40,40);
			text-decoration:none;
		}
		.viewprofile .portfolio a{
			color:blue;
		}
		.viewprofile .portfolio a:hover{
			color:#dc2751;
			text-decoration:none;
		}
		
		.viewprofile .education .schools h6{
			font-size:20px;
			margin-bottom:4px;
		}
		.viewprofile .education .schools p{
			font-size:14px;
			margin:0px;
		}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<% String source=request.getParameter("source"); %>
	<!-- navbar -->
	<%@ include file="../navbar.jsp" %>
	<div class="d-flex justify-content-center">
		<div class="viewprofile m-5">
			<div class="header rounded d-flex flex-column p-3 align-items-center">
				<div class="profile-image d-flex flex-column align-items-center">
					<img src="../images/freelancer.jpg"/>
					<h5 class="m-2">Marketing Minds</h5>
				</div>
				<div class="button-area w-75 mt-2 d-flex justify-content-<%= (source != null && source.equals("completedprojects")) ? "center" : "between" %>">
					<a class="rounded" href="">Chat</a>
				</div>
			</div>
			<div class="about rounded mt-4 p-3">
				<h4 style="color:#dc2751">About</h4>
				<p class="m-0">We help elevating brand with our cutting-edge Social Media Marketing services. Boosting engagement, reaching new audiences, and driving results & let businesses transform their online presence into a social success story</p>
			</div>
			<div class="about rounded mt-4 p-3">
				<h4 style="color:#dc2751">Total Projects Posted</h4>
				<p class="m-0">10</p>
			</div>
			<div class="about rounded mt-4 p-3">
				<h4 style="color:#dc2751">Total Amount Spent</h4>
				<p class="m-0">120000</p>
			</div>
			<div class="portfolio rounded mt-4 p-3">
				<h4 style="color:#dc2751">Company Website</h4>
				<ul>
					<li><a href="">www.company.com</a></li>
				</ul>
			</div>
			<div class="reviews rounded mt-4 p-3">
				<h4 style="color:#dc2751">Reviews</h4>
				<div class="content d-flex mt-3">
					<img src="../../images/testimonial3.png"/>
					<p class="m-0 ml-3">The Work is really nice<br><span>- Nidhie Verma</span></p>
				</div>
				<div class="content d-flex mt-3">
					<img src="../../images/testimonial3.png"/>
					<p class="m-0 ml-3">I must say the designing is very good<br><span>- Nidhie Verma</span></p>
				</div>
				<a class="ml-2 mt-3" href="reviews.jsp">See all reviews</a>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="../../components/footer.jsp" %>
</body>
</html>