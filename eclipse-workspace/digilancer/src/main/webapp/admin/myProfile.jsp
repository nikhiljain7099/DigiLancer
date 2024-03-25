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
/* Add custom styles for label animation */
.input-material-group input{
	background-color:#2d3035 !important;
	border:0px;
	color:white;
}
.input-material-group textarea{
	background-color:#2d3035 !important;
	border:0px;
	color:white;
	width:100%;
	height:20vh;
}
textarea:focus-visible{
	outline: -webkit-focus-ring-color auto 0px;
}
.input-material-group hr{
	margin:0px
}
body {
            background-color: #f8f9fa;
        }
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .card {
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        .card-header {
            background-color: #343a40;
            color: #ffffff;
            border-bottom: none;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }
        .card-body {
            padding: 30px;
        }
        .card-body img{
        	width:7vw;
        	object-fit:cover;
        	height:15vh;
        }
        .profile-details {
            margin-bottom: 30px;
        }
        .profile-details label {
            font-weight: bold;
        }
        .profile-details p {
            margin-bottom: 0;
        }
        .btn-primary {
            background-color: #343a40;
            border-color: #343a40;
        }
        .btn-primary:hover {
            background-color: #23272b;
            border-color: #23272b;
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
<h2 class="h5 mb-0">My Profile</h2>
</div>
</div>
<div class="container">
        <div class="card">
            <div class="card-header text-center">
                <h5 class="mb-0">My Profile</h5>
            </div>
            <div class="card-body">
                <div class="text-center profile-picture">
                    <img src="../images/freelancer.jpg" class="img-fluid rounded-circle" alt="Profile Picture">
                </div>
                <div class="text-center profile-details">
                    <p>John Doe</p>
                </div>
                <div class="text-center profile-details">
                    <label>Email:</label>
                    <p>john@example.com</p>
                </div>
                <div class="text-center profile-details">
                    <label>Superadmin:</label>
                    <p>No</p>
                </div>
                <div class="d-grid gap-2">
                    <a href="editProfile.jsp" class="btn btn-primary">Edit Profile</a>
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
