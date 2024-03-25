
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="d-flex align-items-stretch">
<%@ include file="sidebar.jsp" %>
<div class="page-content">
<!-- Page Header-->
<div class="bg-dash-dark-2 py-4">
<div class="container-fluid">
<h2 class="h5 mb-0">Manage Admins</h2>
</div>
</div>
<div class="d-flex justify-content-center align-items-center">
<div class="card mb-0 w-75 mt-4">
<div class="card-header">
<h3 class="h4 mb-0">Admins</h3>
</div>
<div class="card-body pt-0">
<div class="mb-3">
<!-- Add email, password fields, and button -->
<form action="../AdminController" method="post">
<div class="input-group mb-3">
<input type="text" name="name" style="margin-right:25px !important" class="form-control" required placeholder="Name" aria-label="Name" aria-describedby="basic-addon2">
<input type="email" name="email" style="margin-right:25px !important" class="form-control" required placeholder="Email" aria-label="Email" aria-describedby="basic-addon2">
<input type="text" name="password" style="margin-right:25px !important" class="form-control" required placeholder="Password" aria-label="Password" aria-describedby="basic-addon2">
<input type="submit" style="border-radius:3px !important" class="btn btn-success" name="action" value="Add"/>
</div>
</form>
<label for="search" class="form-label">Search</label>
<input type="text" id="search" class="form-control" placeholder="Enter name to search...">
</div>
<div class="table-responsive">
<table class="table mb-0 table-striped table-hover" id="adminTable">
<thead>
<tr>
<th>#</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Remove Users</th>
</tr>
</thead>
<tbody>
<%
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    try {
        // Establishing connection
        connection = new DBUtil().getConnectionData();
        
        // Creating statement
        statement = connection.createStatement();
        
        // Executing query
        resultSet = statement.executeQuery("SELECT * FROM admin");
        
        // Iterating through result set and displaying data
        int count = 1;
        while(resultSet.next()) {
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            String password = resultSet.getString("password");
%>
<tr>
<th scope="row"><%= count++ %></th>
<td><%= name %></td>
<td><%= email %></td>
<td><%= password %></td>
<td> <!-- Delete button -->
<form action="../AdminController" method="post">
	<input type="hidden" name="adminid" value="<%= resultSet.getInt("adminid") %>">
	<input name="action" type="submit" value="Remove" class="btn btn-danger">
</form>
</td>
</tr>
<%
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Closing resources
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</tbody>
</table>
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
<script>
document.addEventListener("DOMContentLoaded", function() {
    const searchInput = document.getElementById('search');
    const adminTable = document.getElementById('adminTable').getElementsByTagName('tbody')[0].getElementsByTagName('tr');

    searchInput.addEventListener('keyup', function() {
        const searchValue = this.value.toLowerCase();
        Array.from(adminTable).forEach(function(row) {
            const name = row.getElementsByTagName('td')[0].innerText.toLowerCase();
            if (name.includes(searchValue)) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    });
});
</script>
</body>
</html>
