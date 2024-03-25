<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.model.ClientModel"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
     <!-- Bootstrap CSS -->
    <script src="https://kit.fontawesome.com/3b161c540c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		.dashboard .myproject{
			width:60%;
			background-color:white;
			margin:auto;
		}
		.dashboard .myproject p{
			font-size:18px;
			text-align:center;
		}
		.dashboard .myproject .head{
			font-weight:600;
		}
		.dashboard .myproject .button-area .button{
			padding:6px 12px;
			border:1px solid #dc2751;
			font-size:18px;
			color:#dc2751;
			border-radius:3px;
			transition:0.3s;
			width:12vw;
			text-align:center;
			font-weight:500;
		}
		.dashboard .myproject .button-area .button:hover{
			text-decoration:none;
			background-color:#dc2751;
			color:white;
		}
		.dashboard .myproject .head{
			background-color:#dc2751;
			padding:4px 20px;
			transition:0.3s;
			border-radius:20px;
			color:white;
		}
		.dashboard .myproject .description{
			height:12vh;
		}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
   <h1 class="text-center text-light mt-5">My Projects</h1>
   <div class="container">
    <div class="row">
   		<%
	 	Connection cn = new DBUtil().getConnectionData();
		int clientid = cmodel.getclientId();
	 	PreparedStatement st = cn.prepareStatement("select * from project where clientid=? and status='incomplete' or status='assign'");
	 	st.setInt(1,clientid);
	 	ResultSet rs = st.executeQuery();
	 	while(rs.next()){
		%>
		<div class="col-lg-6 col-md-8 col-sm-12">
   		<div class="w-100 myproject rounded p-3 mt-3">
   			<div class="d-flex flex-column align-items-center justify-content-center">
	   			<div class="details">
		   			<p class="head mb-0">Project Title</p>
		   			<p class="mb-0"><%=rs.getString("projectname") %></p>
	   			</div>
	   			<div class="details mt-4">
		   			<p style="width:16vw" class="head mb-0 mr-auto ml-auto">Project Description</p>
		   			<p class="mb-0 description"><%=rs.getString("description") %></p>
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Project Category</p>
		   			<p class="mb-0"><%=rs.getString("category") %></p>
		   			
	   			</div>
	   			<div class="details w-75 mt-4 d-flex justify-content-between">
	   				<div class="min">
			   			<p class="head mb-0">Minimum</p>
			   			<p class="mb-0"><%=rs.getInt("min") %></p>
		   			</div>
		   			<div class="max">
			   			<p class="head mb-0">Maximum</p>
			   			<p class="mb-0"><%=rs.getInt("max") %></p>
		   			</div>
	   			</div>
	   			<div class="button-area mt-4 d-flex justify-content-around w-75">
   				<a class="button" href="editproject.jsp?projectid=<%=rs.getInt("projectid") %>">Edit Project</a>
   				<a class="button" href="dashboard.jsp?projectid=<%=rs.getInt("projectid") %>">Manage Project</a>
   			</div>
   			</div>
   		</div>
   		</div>
   	 <% } %>
   	 </div>
	</div>
</body>
</html>