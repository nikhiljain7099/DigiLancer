<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DigiLancer - Admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Choices.js-->
    <link rel="stylesheet" href="vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <style>
    	.image-container {
            position: relative;
        }

        .image-container img {
            width: 100%;
            height: 55vh;
            filter: grayscale(100%);
            border-radius:4px;
        }

        .image-container a {
        	width:75%;
        	font-size:30px;
            position: absolute;
            top: 85%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1;
            background-color:#dc2751 !important;
            border:0px;
            transition:0.5s;
        }
        .image-container a:hover{
        	background-color:black !important;
        	color:white;
        }
		    	
    </style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	 <div class="d-flex align-items-stretch">
      <%@ include file="sidebar.jsp" %>
      <div class="page-content">
            <!-- Page Header-->
            <div class="bg-dash-dark-2 py-4">
              <div class="container-fluid">
                <h2 class="h5 mb-0">Post DLC Blogs</h2>
              </div>
            </div>
            <div class="container-fluid mt-5">
		        <div class="row justify-content-center">
		            <div class="col-md-6 text-center">
		                <!-- Image block with button -->
		                <div class="image-container">
		                    <img src="../images/client.jpg" alt="Image 1">
		                    <a href="addbusinessDLC.jsp" class="btn btn-primary">Post Blog for Business</a>
		                </div>
		            </div>
		            <div class="col-md-6 text-center">
		                <!-- Image block with button -->
		                <div class="image-container">
		                    <img src="../images/freelancer.jpg" alt="Image 2">
		                    <a href="addfreelancerDLC.jsp" class="btn btn-primary">Post Blog for Freelancers</a>
		                </div>
		            </div>
		        </div>
		    </div>


        <!-- Page Footer-->
        <footer class="mt-5 position-absolute bottom-0 bg-dash-dark-2 text-white text-center py-3 w-100 text-xs" id="footer">
          <div class="container-fluid text-center">
            <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            <p class="mb-0 text-dash-gray">2021 &copy; DigiLancer</p>
          </div>
        </footer>
      </div>
      </div>
      <!-- JavaScript files-->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/just-validate/js/just-validate.min.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/choices.js/public/assets/scripts/choices.min.js"></script>
    <script src="js/charts-home.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
</body>
</html>