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
		*{
		    margin: 0px;
		    padding: 0px;
		    font-family: poppins;
		    box-sizing: border-box;
		}
		a{
		    text-decoration: none;
		}
		#testimonials{
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    flex-direction: column;
		    width:100%;
		}
		
		.testimonial-box-container{
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    flex-wrap: wrap;
		    width:100%;
		}
		.testimonial-box{
		    width:500px;
		    height:240px;
		    box-shadow: 2px 2px 30px rgba(0,0,0,0.1);
		    background-color: #ffffff;
		    padding: 20px;
		    margin: 15px;
		    cursor: pointer;
		}
		.profile-img{
		    width:50px;
		    height: 50px;
		    border-radius: 50%;
		    overflow: hidden;
		    margin-right: 10px;
		}
		.profile-img img{
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		    object-position: center;
		}
		.profile{
		    display: flex;
		    align-items: center;
		}
		.name-user{
		    display: flex;
		    flex-direction: column;
		}
		.name-user strong{
		    color: #3d3d3d;
		    font-size: 1.1rem;
		    letter-spacing: 0.5px;
		}
		
		.box-top{
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    margin-bottom: 20px;
		}
		.client-comment p{
		    font-size: 0.9rem;
		    color: #4b4b4b;
		}
		.testimonial-box:hover{
		    transform: translateY(-10px);
		    transition: all ease 0.3s;
		}
		 
		@media(max-width:1060px){
		    .testimonial-box{
		        width:45%;
		        padding: 10px;
		    }
		}
		@media(max-width:790px){
		    .testimonial-box{
		        width:100%;
		    }
		    .testimonial-heading h1{
		        font-size: 1.4rem;
		    }
		}
		@media(max-width:340px){
		    .box-top{
		        flex-wrap: wrap;
		        margin-bottom: 10px;
		    }
		    .reviews{
		        margin-top: 10px;
		    }
		}
		::selection{
		    color: #ffffff;
		    background-color: #252525;
		}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<!-- navbar-html -->
   <%@ include file="../navbar.jsp" %>
   	<!-- Review -->
   	<h1 class="text-center text-light mt-5 mb-4">Reviews</h1>
   	<section id="testimonials">
        <!--testimonials-box-container------>
        <div class="testimonial-box-container">
            <!--BOX-1-------------->
            <div class="testimonial-box rounded">
                <!--top------------------------->
                <div class="box-top">
                    <!--profile----->
                    <div class="profile">
                        <!--img---->
                        <div class="profile-img">
                            <img src="images/review.jpg" />
                        </div>
                        <!--name-and-username-->
                        <div class="name-user">
                            <strong>Liam mendes</strong>
                        </div>
                    </div>
                    
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                	<h6>Good Design</h6>
                    <p>The graphic designer exceeded my expectations! Their creativity and attention to detail brought my vision to life. Excellent communication and timely delivery. Highly recommend for any design project!</p>
                </div>
            </div>
            <!--BOX-1-------------->
            <div class="testimonial-box rounded">
                <!--top------------------------->
                <div class="box-top">
                    <!--profile----->
                    <div class="profile">
                        <!--img---->
                        <div class="profile-img">
                            <img src="images/review.jpg" />
                        </div>
                        <!--name-and-username-->
                        <div class="name-user">
                            <strong>Liam mendes</strong>
                        </div>
                    </div>
                    
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                	<h6>Good Design</h6>
                    <p>The graphic designer exceeded my expectations! Their creativity and attention to detail brought my vision to life.</p>
                </div>
            </div>
            <!--BOX-1-------------->
            <div class="testimonial-box rounded">
                <!--top------------------------->
                <div class="box-top">
                    <!--profile----->
                    <div class="profile">
                        <!--img---->
                        <div class="profile-img">
                            <img src="images/review.jpg" />
                        </div>
                        <!--name-and-username-->
                        <div class="name-user">
                            <strong>Liam mendes</strong>
                        </div>
                    </div>
                    
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                	<h6>Good Design</h6>
                    <p>The graphic designer exceeded my expectations!Highly recommend for any design project!</p>
                </div>
            </div>
            <!--BOX-1-------------->
            <div class="testimonial-box rounded">
                <!--top------------------------->
                <div class="box-top">
                    <!--profile----->
                    <div class="profile">
                        <!--img---->
                        <div class="profile-img">
                            <img src="images/review.jpg" />
                        </div>
                        <!--name-and-username-->
                        <div class="name-user">
                            <strong>Liam mendes</strong>
                        </div>
                    </div>
                    
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                	<h6>Good Design</h6>
                    <p>The graphic designer exceeded my expectations! Their creativity and attention to detail brought my vision to life. Excellent communication and timely delivery. Highly recommend for any design project!</p>
                </div>
            </div>
        </div>
      </section>
   <!-- footer-html -->
  	<%@ include file="../../components/footer.jsp" %>
</body>
</html>