<%@page import="com.model.ClientModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
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
        
        /* card-css */
        /* card-css */
        /* card-css */
		@import url('https://fonts.googleapis.com/css?family=Libre+Baskerville:400,700');
		
		.cards{
		  float:left;
		  width:100%;
		  padding:30px 0; 
		  position:relative; 
		  overflow:hidden; 
		  background:#6F8D8A;
		  margin: 30px;
		}
		
		.cards:before{
		  content:"";
		  position:absolute; 
		  width:110%; 
		  height:100%;   
		  background-color:rgb(23,23,23); 
		  filter: blur(10px); 
		  z-index:0; 
		  transform: scale(2);-ms-transform: scale(2); 
		  -webkit-transform: scale(2);
		}
		
		.btn-default{
		  background:rgb(23,23,23); width: 100%; color:#fff; font-weight:700; text-shadow:1px 1px 0 rgba(0,0,0,0.2); font-size:14px;
		}
		.card{
		  border:none; margin-bottom:30px;
		  background-color:rgb(12,12,12) !important;
		  color: #ffffff;
		}
		.card:hover{
		  transform: scale(1.05);
		  transition: all 1s ease;
		  z-index: 999;
		  background-color:#dc2751 !important;
		  color:white;
		}
		.card-01 .card-body{
		  position:relative; padding-top:40px;
		}
		
		
		.card-01 .badge-box{
		  position:absolute; 
		  top:-20px; left:50%; width:100px; height:100px;margin-left:-50px; text-align:center;
		}
		.card-01 .badge-box i{
		  background:#000000; color:#fff; border-radius:50%;  width:50px; height:50px; line-height:50px; text-align:center; font-size:20px;
		}
		.card-01 .height-fix{
		  height:455px; overflow:hidden;
		}
		
		.card-01 .height-fix .card-img-top{
			width:auto !impotant;
			height: 270px !important;
		}
		.card-img-top{
			width:auto !impotant;
			height: 270px !important;
		}
		.a-tag:hover{
			color:#dc2751 !important;
		}
		        
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<%
		HttpSession session1 = request.getSession();
		String category = request.getParameter("name");
	  session1.setAttribute("category", category);
	%>
	<!-- navbar -->
	 <%@ include file="navbar.jsp" %>
	 
	<!-- heading -->
	 <section id="promo" class="parallax-one parallax">
        <div class="container">
            <h5>DigiLancer's</h5>
            <h1>Top Microgigs</h1>
        </div>
    </section>
    
    <!-- cards -->
    <section class="cards">
    <div class="container">
        <div class="row">    
	        <div class="col-md-4">
	          <div class="card card-01" style="border:0px solid black">
	          <img class="card-img-top" src="https://images.unsplash.com/photo-1593720213428-28a5b9e94613?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Card image cap">
	          <div class="card-body">
	            <span class="badge-box"><i class="fa fa-code"></i></span>
	            <h4 class="card-title text-center">Website Development</h4>
	            <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	            <form action="../ProjectController?action=showcategory" method="post">
	            	<input type="submit" href="#" class="a-tag btn btn-default text-uppercase" value="Post Gig"/>
	            	<input type="text" value="Website Development" name="category" hidden=true/>
	            </form>
	          </div>
	        </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card card-01" style="border:0px solid black">
	          <img class="card-img-top" src="https://images.unsplash.com/photo-1626785774573-4b799315345d?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Card image cap">
	          <div class="card-body">
	            <span class="badge-box"><i class="fa fa-pen-to-square"></i></span>
	            <h4 class="card-title text-center">Graphic Design</h4>
	            <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	            <form action="../ProjectController?action=showcategory" method="post">
	            	<input type="submit" href="#" class="a-tag btn btn-default text-uppercase" value="Post Gig"/>
	            	<input type="text" value="Graphic Design" name="category" hidden=true/>
	            </form>
	          </div>
	        </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card card-01" style="border:0px solid black">
	          <img class="card-img-top" src="../images/socialmedia.jpg" alt="Card image cap">
	          <div class="card-body">
	            <span class="badge-box"><i class="fa fa-hashtag"></i></span>
	            <h4 class="card-title text-center">Social Media Marketing</h4>
	            <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	            <form action="../ProjectController?action=showcategory" method="post">
	            	<input type="submit" href="#" class="a-tag btn btn-default text-uppercase" value="Post Gig"/>
	            	<input type="text" value="Social Media Marketing" name="category" hidden=true/>
	            </form>
	          </div>
	        </div>
	        </div>
        </div>
        </div>
    </div>
    <div class="container">
        <div class="row">    
	        <div class="col-md-4">
	          <div class="card card-01" style="border:0px solid black">
	          <img class="card-img-top" src="https://images.unsplash.com/photo-1506058774676-6360aa0c1584?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Card image cap">
	          <div class="card-body">
	            <span class="badge-box"><i class="fa fa-camera"></i></span>
	            <h4 class="card-title text-center">Photoshoot</h4>
	            <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	            <form action="../ProjectController?action=showcategory" method="post">
	            	<input type="submit" href="#" class="a-tag btn btn-default text-uppercase" value="Post Gig"/>
	            	<input type="text" value="Photoshoot" name="category" hidden=true/>
	            </form>
	          </div>
	        </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card card-01" style="border:0px solid black">
	          <img class="card-img-top" src="https://adverlabs.com/wp-content/uploads/2022/05/Digital-Marketing-Services.jpg" alt="Card image cap">
	          <div class="card-body">
	            <span class="badge-box"><i class="fa fa-arrow-up-right-dots"></i></span>
	            <h4 class="card-title text-center">SEO</h4>
	            <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	            <form action="../ProjectController?action=showcategory" method="post">
	            	<input type="submit" href="#" class="a-tag btn btn-default text-uppercase" value="Post Gig"/>
	            	<input type="text" value="SEO" name="category" hidden=true/>
	            </form>
	          </div>
	        </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card card-01" style="border:0px solid black">
	          <img class="card-img-top" src="../images/videoedit.jpg" alt="Card image cap">
	          <div class="card-body">
	            <span class="badge-box"><i class="fa fa-scissors"></i></span>
	            <h4 class="card-title text-center">Video Editing</h4>
	            <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	            <form action="../ProjectController?action=showcategory" method="post">
	            	<input type="submit" href="#" class="a-tag btn btn-default text-uppercase" value="Post Gig"/>
	            	<input type="text" value="Video Editing" name="category" hidden=true/>
	            </form>
	          </div>
	        </div>
	        </div>
        </div>
        </div>
    </div>
	</section>
    
    
    <!-- footer -->
	 <%@ include file="../components/footer.jsp" %>
	 <script>
	 <% ClientModel cmodel = (ClientModel) session.getAttribute("lmodel");
		int id = cmodel.getclientId();
		int num=1;
	%>
	console.log(<%= id %>+" "+<%= num %>);
	</script>
</body>
</html>