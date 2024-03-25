<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
			width:75px;
			height:75px;
			object-fit:cover;
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
		int clientid = cmodel.getclientId();
	
		// Retrieve the category from the project table where project ID is 12
		String category = null;
		PreparedStatement stCategory = cn.prepareStatement("SELECT category FROM project WHERE projectid = ? and clientid=?");
		stCategory.setInt(1, Integer.parseInt(request.getParameter("projectid")));
		stCategory.setInt(2,clientid);
		ResultSet rsCategory = stCategory.executeQuery();
	
		// If a category is found, store it
		if (rsCategory.next()) {
		    category = rsCategory.getString("category");
		}
	
		
	    // Query to fetch freelancers with the retrieved category and not shortlisted
	    String query = "SELECT * FROM freelancer WHERE skills LIKE ? AND shortlist = 'yes' AND assign = 'no'";
	
	    // Create a PreparedStatement
	    PreparedStatement st = cn.prepareStatement(query);
	    // Set the parameter for the retrieved category
		st.setString(1, "%" + category + "%");
		// Execute the query to fetch relevant freelancers
		ResultSet rs = st.executeQuery();
		
	
		// Execute the query to fetch relevant freelancers
		rs = st.executeQuery();
	%>
	<h1 class="text-center text-light mt-5">Shortlisted</h1>
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
				    <input type="hidden" name="projecitd" value="<%= request.getParameter("projectid") %>">
				    <input class="shortlist" type="submit" name="action" class="shortlist" value="Assign Project">
				</form>
   			</div>
   		<% } %>
   		</div>
</body>
</html>