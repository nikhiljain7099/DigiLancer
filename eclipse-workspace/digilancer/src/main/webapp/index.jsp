<!doctype html>
<%@page import="com.model.ClientModel"%>
<%@page import="com.model.FreelancerModel"%>
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
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		
		/* navbar-css  */
		.bg-dark1 {
    		background-color: black !important;
		}
		.navbar-image{
			width:200px !important;
			margin:0px 100px;
		}
		.nav-link1{
			font-size:22px;
			text-align:right;
			margin: 0px 20px;
			color:white !important;
			transition : 0.3s;
			font-weight: bold !important;
		}
		.nav-link1:hover{
			color:#dc2751 !important;
		}
		
		/* wantto-css */
		.wantto {
            margin: 20px;
            position: relative;
        }

        .wantto-image {
            height: 64vh;
            filter: gray;
            border-radius:10px;
            -webkit-filter: grayscale(1);
            -webkit-transition: all 0.3s;
        }

        .overlay-button {
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
        }

        .custom-button {
            background-color: #333 !important;
            color: white !important;
            padding: 20px 50px !important;
            font-size: 28px !important;
            border: none !important;
            border-radius: 5px !important;
            transition: background-color 0.3s !important;
        }
        .custom-button:hover {
            background-color: #dc2751 !important;
        }
        
        /* welcome-css */
        .welcome h1{
        	color:#dc2751;
        	margin-top:60px;
        	font-size:60px;
        	font-weight:bold;
        	text-align:center;
        }
        .welcome p{
        	color: white;
        }
        .welcome div{
        	width:80vw;
        }
        .wedo{
        	display:flex;
        	justify-content:space-around;
        	margin:auto;
        }
        
        .wedo .item{
        	background-color: rgb(23,23,23);
        }
        .wedo .item img{
        	filter: grayscale(0%);
    		transition: filter 0.3s ease-in-out;
        }
        .wedo .item img:hover{
        	filter: grayscale(100%);
        }
		.wedo .card h3{
			font-size:30px;
		}
		.wedo .card p{
			font-size:20px;
			line-height: 1.7;
		}
		
		/* industries-css */
		.industries h2{
			color:#dc2751;
			font-size:40px;
		}
		.image {
			position: relative;
			width: 400px;
		}
		
		.image__img {
			display: block;
			width: 100%;
			height:300px;
		}
		
		.image__overlay {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: rgba(0, 0, 0, 0.6);
			color: #ffffff;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			opacity: 0;
			transition: opacity 0.25s;
		}
		
		.image__overlay--blur {
			backdrop-filter: blur(5px);
		}
		
		.image__overlay--primary {
			background: #000000;
		}
		
		.image__overlay>* {
			transform: translateY(20px);
			transition: transform 0.25s;
		}
		
		.image__overlay:hover {
			opacity: 0.85;
		}
		
		.image__overlay:hover>* {
			transform: translateY(0);
		}
		
		.image__title {
			font-size: 2em;
			font-weight: bold;
		}
		
	</style>
    <title>DigiLancer</title>
  </head>
  <body>
   <!-- navbar-html -->
   <%@ include file="components/navbar.jsp" %>
	
	<!-- wantto-html -->
	<div class="wantto d-flex justify-content-around">
	    <div class="position-relative">
	        <img src="images/client.jpg" class="wantto-image" alt="Client">
	        <div class="overlay-button">
	        	<% 
	        		if(session.getAttribute("cmodel")!=null){
	        		%>
	        			<a href="buyer/dashboard/dashboard.jsp" class="btn btn-dark custom-button" href="#" role="button">I WANT TO HIRE FREELANCERS </a>
	        	<%	}
	        		else {
	        	%>		<a href="buyer/registration.jsp" class="btn btn-dark custom-button" href="#" role="button">I WANT TO HIRE FREELANCERS</a>
	        	<% } %>
	            
	        </div>
	    </div>
	    <div class="position-relative">
	        <img src="images/welcome.jpg" class="wantto-image" alt="Freelancer">
	        <div class="overlay-button">
	        	<% 	
	        		if(session.getAttribute("fmodel")!=null){
	        		%>
	        			<a href="seller/dashboard/dashboard.jsp" class="btn btn-dark custom-button" href="#" role="button">I WANT TO MAKE MONEY</a>
	        	<%	}
	        		else {
	        	%>		<a href="seller/registration.jsp" class="btn btn-dark custom-button" href="#" role="button">I WANT TO MAKE MONEY</a>
	        	<% } %>
	        </div>
	    </div>
	</div>
   
   <!-- Welcome -->
   <div class="welcome pt-3 pb-5">
   		<h1>WELCOME TO DIGILANCER</h1>
   		<div class="pt-3 wedo">
   			<div class="item">
		       <img src="images/freelancer.jpg" class="rounded img-fluid">
		     </div>
		     <div class="justify-content-center d-flex item card pl-5">
		       <h3 class="pb-3 pt-5" style="color:#dc2751" >What do we do?</h3>
		       <p>
		       Digilancer is India's premier online platform for businesses and freelancers to find and transact with each other. By bringing verified freelancers and businesses to the table, we bring in a certain standard of quality so that both parties can interact with a sense of security and ease.
		       </p>
		     </div>
		</div>
   </div>
	
   <!-- industries -->
   <div class="industries p-5">
	   <h2 class="pl-5 pb-3">Which Industries Do We Cover?</h2>
	   <div class="industries d-flex justify-content-around">
		   <div class="image">
				<img class="image__img" src="images/it.jpg" alt="Bricks">
				<div class="image__overlay image__overlay--primary">
					<div class="image__title">IT</div>
				</div>
			</div>
			<div class="image">
				<img class="image__img" src="images/sm2.jpg" alt="Bricks">
				<div class="image__overlay image__overlay--primary">
					<div class="image__title">Social Media</div>
				</div>
			</div>
			<div class="image">
				<img class="image__img" src="images/design.jpg" alt="Bricks">
				<div class="image__overlay image__overlay--primary">
					<div class="image__title">Designing</div>
				</div>
			</div>
		</div>
   </div>
   
   <!-- start -->
    <div class="industries p-5">
	   <h2 class="pl-5">So How Do You Start? Click One Of The Buttons Below</h2>
	   <div class="wantto d-flex justify-content-around">
	   <div class="position-relative">
	        <img src="images/business.jpg" class="wantto-image" alt="Freelancer">
	        <div class="overlay-button">
	            <a href="buyer/registration.jsp" class="btn btn-dark custom-button">View Business Page</a>
	        </div>
	    </div>
	    <div class="position-relative">
	        <img src="images/freelancer2.jpg" class="wantto-image" alt="Client">
	        <div class="overlay-button">
	            <a class="btn btn-dark custom-button" href="seller/registration.jsp" role="button">View Freelancer Page</a>
	        </div>
	    </div>
	</div>
   </div>
   
   
   <!-- footer -->
	<%@ include file="components/footer.jsp" %>
   
   
   
   
   
   
   
   
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>