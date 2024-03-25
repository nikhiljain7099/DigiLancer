<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.model.ProjectModel"%>
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
		.myproject{
			width:60%;
			background-color:white;
			margin:auto;
		}
		.myproject p{
			font-size:16px;
			text-align:center;
		}
		.myproject .button-area .button{
			padding:6px 12px;
			border:1px solid #dc2751;
			font-size:19px;
			color:#dc2751;
			border-radius:3px;
			transition:0.3s;
			width:15vw;
			text-align:center;
			font-weight:500;
		}
		.myproject .button-area .button:hover{
			text-decoration:none;
			background-color:#dc2751;
			color:white;
		}
		.myproject .head{
			font-weight:500;
			font-size:20px;
		}
		.myproject .profilepic img{
			width:100px;
			height:100px;
			object-fit:cover;
			border-radius:50%;
		}
		.myproject .button-area input[type="submit"] {
		    padding: 6px 12px;
		    border: 1px solid #dc2751;
		    background: white;
		    font-size: 19px;
		    color: #dc2751;
		    border-radius: 3px;
		    transition: 0.3s;
		    width: 15vw;
		    text-align: center;
		    font-weight: 500;
		    cursor: pointer; /* Optional: Add cursor pointer */
		}
		
		.myproject .button-area input[type="submit"]:hover {
		    background-color: #dc2751;
		    color: white;
		}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<%
		HttpSession session1 = request.getSession();
		session1.setAttribute("category", "Graphic Design");
	%>
   <!-- navbar-html -->
   <%@ include file="navbar.jsp" %>
   <div class="mb-5 view-application">
   <h1 class="text-center text-light mt-5 mb-4">Project Details</h1>
   		<div class="myproject rounded p-3 mt-3">
   		<%
	        Connection cn = new DBUtil().getConnectionData();
	        PreparedStatement st = cn.prepareStatement("SELECT p.projectid, p.projectname, p.category, p.description, p.min, p.max, p.clientid, p.status, p.amount,p.deadline,p.save, c.companyname AS companyname, c.profileimage AS profileimage FROM project p JOIN client c ON p.clientid = c.clientid WHERE p.projectid="+Integer.parseInt(request.getParameter("projectid")));
	        ResultSet rs = st.executeQuery();
	        while(rs.next()){
	    %>
   			<div class="d-flex flex-column align-items-center justify-content-center">
   				<div class="profilepic d-flex align-items-center flex-column mb-4">
		   			<img src="../uploadedimages/clientprofile/<%=rs.getString("profileimage")%>"/>
		   			<h4 class="mt-2 mb-0"><%=rs.getString("companyname") %></h4>
	   			</div>
	   			<div class="details">
		   			<p class="head mb-0">Project Title</p>
		   			<p class="mb-0"><%=rs.getString("projectname") %></p>
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Project Description</p>
		   			<p class="mb-0"><%=rs.getString("description") %></p>
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Project Category</p>
		   			<p class="mb-0"><%=rs.getString("category") %></p>	
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Amount</p>
		   			<p class="mb-0"><%=rs.getInt("min") %> - <%=rs.getInt("max") %></p>	
	   			</div>
	   			<div class="details mt-4">
		   			<p class="head mb-0">Dead Line</p>
		   			<p class="mb-0"><%=rs.getInt("deadline") %> days</p>	
	   			</div>
	   			<div class="button-area mt-4 d-flex justify-content-around w-75">
	   			<form action="../ProjectController" method="post">
	   				<input type="hidden" name="projectid" value="<%= rs.getInt("projectid") %>">
	   				<input type="submit" name="action" value="Save Project"/>
	   			</form>
   				<a class="button" href="apply.jsp?projectid=<%= rs.getInt("projectid") %>">Apply</a>
   				</div>
   			</div>
   			<% } %>
   		</div>
   		</div>
   		<!-- footer-html -->
  	<%@ include file="../../components/footer.jsp" %>
	
</body>
</html>