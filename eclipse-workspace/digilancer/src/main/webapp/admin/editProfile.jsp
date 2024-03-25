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
<h2 class="h5 mb-0">Edit Profile</h2>
</div>
</div>
<div class="d-flex justify-content-center align-items-center">
<div class="col-lg-10 bg-white mt-5">
<div class="d-flex align-items-center px-4 px-lg-5 h-100 bg-dash-dark-2">
<form class="login-form py-5 w-100" method="get" action="index.html">
<div class="input-material-group mb-2">
<label>Name</label><br>
<input type="text" name="title" required/>
<hr>
</div>
<div class="input-material-group mb-2">
<label>Email</label><br>
<input type="email" name="email" required/>
<hr>
</div>
<div class="input-material-group mb-2">
<label>Password</label><br>
<input type="password" name="password" required/>
<hr>
</div>
<div class="input-material-group mb-2">
<label>Superadmin</label><br>
<div>
  <input type="radio" id="yes" name="superadmin" value="yes">
  <label for="yes">Yes</label>
  <input style="margin-left:10px !important" class="mr-3" type="radio" id="no" name="superadmin" value="no">
  <label for="no">No</label>
</div>
</div>
<div class="input-material-group mb-2">
<label>Upload Profile Picture</label><br>
<input type="file" name="profile"/>
<hr>
</div>
<div class="d-flex justify-content-center">
<button class="btn btn-primary mb-3" id="login" type="submit">Update Profile</button>
</div>
</form>
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
