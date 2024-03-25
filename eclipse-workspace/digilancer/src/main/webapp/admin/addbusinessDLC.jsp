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
	width:100%;
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
<h2 class="h5 mb-0">Add Business's DLC Blog</h2>
</div>
</div>
<div class="d-flex justify-content-center align-items-center">
<div class="col-lg-10 bg-white mt-5">
<div class="d-flex align-items-center px-4 px-lg-5 h-100 bg-dash-dark-2">
<form class="login-form py-5 w-100" enctype="multipart/form-data" method="post" action="../DLCController">
<div class="input-material-group mb-3">
<label>Title</label><br>
<input type="text" name="title"/>
<hr>
</div>
<div class="input-material-group mb-4">
<label>Blog Content</label><br>
<textarea name="blog-content"></textarea>
<hr>
</div>
<div class="input-material-group mb-4">
<label>Upload Title Image</label><br>
<input type="file" name="title-image"/>
<input type="hidden" name="user" value="client"/>
<hr>
</div>
<div class="d-flex justify-content-center">
<button class="btn btn-primary mb-3" id="login" type="submit">Post Blog</button>
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
