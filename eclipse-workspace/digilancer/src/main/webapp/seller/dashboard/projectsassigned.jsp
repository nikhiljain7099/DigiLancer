<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.releatedfreelancers .profile{
			background-color:white;
			color:black;
			width:46%;
		}
		.releatedfreelancers .profile .head{
			width:15vw;	
		}
		.releatedfreelancers .profile .head img{
			width:75px;
		}
		.releatedfreelancers .profile .head p{
			margin-bottom:0px;
		}
		.releatedfreelancers .profile .about p{
			font-size:14px;
			margin-bottom:0px;
		}
		.releatedfreelancers .profile .about .grey{
			color:grey;
		}
		.releatedfreelancers .profile .viewprofile{
			font-size:12px;
			color:#dc2751;
		}
		.releatedfreelancers .profile .viewprofile:hover{
			text-decoration:none;
			color:rgb(40,40,40);
		}
		.releatedfreelancers .profile .shortlist{
			background-color:#dc2751;
			color:white;
			text-align:center;
			padding:5px 10px;
			border-radius:4px;
			transition: 0.3s;
			margin-top:20px;
			width:40%
		}
		.releatedfreelancers .profile .shortlist:hover{
			background-color:rgb(40,40,40);
			color:white;
			text-decoration:none;
		}
</style>
</head>
<body>
	<h1 class="text-center text-light mt-5">Project Assigned</h1>
   		<div class="releatedfreelancers mb-5 flex-wrap d-flex justify-content-around">
   			<div class="profile d-flex flex-column justify-content-center rounded p-3 mt-5">
   				<div class="head d-flex justify-content-between align-items-center">
   					<img class="rounded-circle" src="images/testimonial3.png"/>
   					<div class="d-flex flex-column">
	   					<p>Niedhei Verma</p>
	   					<a class="viewprofile" href="viewfreelancerprofile.jsp">View Profile</a>
   					</div>
   				</div>
   				<h6 class="mt-3">Graphic Designer</h6>
   				<div class="about mt-2">
   					<p class="grey">About Niedhie Verma</p>
   					<p>Working with American Express for the last 8 ears, content writing is my forte</p>
   				</div>
   				<div class="buttons d-flex justify-content-around">
	   				<a class="shortlist" href="">Chat</a>
	   				<a class="shortlist" href="submitreview.jsp">Project Completed</a>
   				</div>
   			</div>
   		</div>
</body>
</html>