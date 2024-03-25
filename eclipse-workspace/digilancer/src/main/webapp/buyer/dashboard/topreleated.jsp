<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.releatedfreelancers .profile{
			background-color:white;
			color:black;
			width:46%;
		}
		.releatedfreelancers .profile .head img{
			width: 75px;
		    height: 75px;
		    object-fit: cover;
		}
		.releatedfreelancers .profile .head p{
			margin-bottom:0px;
		}
		.releatedfreelancers .profile .about p{
			font-size:14px;
			margin-bottom:0px;
		}
		.releatedfreelancers .profile .about .grey{
			color:grey;
		}
		.releatedfreelancers .profile .viewprofile{
			font-size:12px;
			color:#dc2751;
		}
		.releatedfreelancers .profile .viewprofile:hover{
			text-decoration:none;
			color:rgb(40,40,40);
		}
		.releatedfreelancers .profile .shortlist{
			background-color:#dc2751;
			color:white;
			text-align:center;
			padding:5px 10px;
			border-radius:4px;
			transition: 0.3s;
			margin-top:20px;
			width:100%;
			border:0px;
		}
		.releatedfreelancers .profile .shortlist:hover{
			background-color:rgb(40,40,40);
			color:white;
			text-decoration:none;
		}
		.fixed-width {
		    width: 200px; /* Adjust the width as needed */
		    overflow: hidden;
		    text-overflow: ellipsis;
		    white-space: nowrap;
		}
</style>
</head>
<body>
	<%
		Connection cn = new DBUtil().getConnectionData();
		// Get the project ID from the request parameter
	    int projectid = Integer.parseInt(request.getParameter("projectid"));
	    // Fetch the project record using the project ID
	    PreparedStatement projectStatement = cn.prepareStatement("SELECT * FROM project WHERE projectid = ?");
	    projectStatement.setInt(1, projectid);
	    ResultSet projectResult = projectStatement.executeQuery();
	    // Initialize the category variable to store the category of the project
	    String category = "";
	    // Check if the project record exists
	    if (projectResult.next()) {
	        // Get the category of the project
	        category = projectResult.getString("category");
	    }
	
	    // Query to fetch freelancers with relevant skills and shortlist status based on the project's category
	    String query = "SELECT * FROM freelancer WHERE skills LIKE ? AND shortlist = 'no' AND assign = 'no'";
	    PreparedStatement st = cn.prepareStatement(query);
	    st.setString(1, "%" + category + "%");
	    ResultSet rs = st.executeQuery();
	%>
	<h1 class="text-center text-light mt-5">Releated Freelancers</h1>
   		<div class="releatedfreelancers mb-5 flex-wrap d-flex justify-content-around">
   		<% while (rs.next()) { %>
   			<div class="profile d-flex flex-column justify-content-center rounded p-3 mt-5">
   				<div class="head d-flex align-items-center">
   					<img class="rounded-circle" src="../../uploadedimages/freelancerprofile/<%=rs.getString("profile_picture")%>"/>
   					<div class="d-flex flex-column ml-3">
	   					<p class="fixed-width"><%=rs.getString("firstname")+" "+rs.getString("lastname")%></p>
	   					<a class="viewprofile" href="viewfreelancerprofile.jsp?freelancerid=<%= rs.getInt("freelancerid") %>">View Profile</a>
   					</div>
   				</div>
   				<h6 class="mt-3"><%=rs.getString("skills") %></h6>
   				<div class="about mt-2">
   					<p class="grey">About <%=rs.getString("firstname")+" "+rs.getString("lastname")%></p>
   					<p><%=rs.getString("bio") %></p>
   				</div>
   				<form action="../../FreelancerController" method="post">
				    <input type="hidden" name="freelancerId" value="<%= rs.getInt("freelancerid") %>">
				    <input type="hidden" name="projectid" value="<%= request.getParameter("projectid") %>">
				    <input class="shortlist" type="submit" name="action" class="shortlist" value="Shortlist">
				</form>
   			</div>
   		<% } %>
   		</div>
</body>
</html>