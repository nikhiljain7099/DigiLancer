<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		.releatedfreelancers .profile .head{
			width:15vw;	
		}
		.releatedfreelancers .profile .head img {
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
			width: 18vw;
    		border: 0px;
		}
		.releatedfreelancers .profile .shortlist:hover{
			background-color:rgb(40,40,40);
			color:white;
			text-decoration:none;
		}
</style>
</head>
<body>
    <%@ page import="java.util.ArrayList" %>
	<%
	Connection cn = new DBUtil().getConnectionData();
    // Get the project ID from the request parameter
    String query = "SELECT * FROM project WHERE status='assign' AND projectid=?";
    PreparedStatement st = cn.prepareStatement(query);
    st.setInt(1, Integer.parseInt(request.getParameter("projectid")));
    ResultSet rs = st.executeQuery();
    if(rs.next()){
        int freelancerId = rs.getInt("freelancerid");
        String freelancerQuery = "SELECT * FROM freelancer WHERE freelancerid=?";
        PreparedStatement freelancerStatement = cn.prepareStatement(freelancerQuery);
        freelancerStatement.setInt(1, freelancerId);
        ResultSet freelancerResultSet = freelancerStatement.executeQuery();
        if (freelancerResultSet.next()) {
            String firstname = freelancerResultSet.getString("firstname");
            String lastname = freelancerResultSet.getString("lastname");
            String email = freelancerResultSet.getString("email");
            String bio = freelancerResultSet.getString("bio");
            String skills = freelancerResultSet.getString("skills");
            String profile_picture = freelancerResultSet.getString("profile_picture");
            String created_at = freelancerResultSet.getString("created_at");
    %>
	<h1 class="text-center text-light mt-5">Project Assigned</h1>
   		<div class="releatedfreelancers mb-5 flex-wrap d-flex justify-content-around">
   			<div class="profile d-flex flex-column justify-content-center rounded p-3 mt-5">
   				<div class="head d-flex align-items-center">
   					<img class="rounded-circle" src="../../uploadedimages/freelancerprofile/<%= profile_picture %>"/>
   					<div class="d-flex flex-column ml-3">
	   					<p><%= firstname+" "+lastname %></p>
	   					<a class="viewprofile" href="viewfreelancerprofile.jsp?freelancerid=<%=freelancerId%>">View Profile</a>
   					</div>
   				</div>
   				<h6 class="mt-3"><%= skills %></h6>
   				<div class="about mt-2">
   					<p class="grey">About <%= firstname+" "+lastname %></p>
   					<p><%= bio %></p>
   				</div>
   				<div class="buttons d-flex justify-content-around">
	   				<a class="shortlist" href="">Chat</a>
	   				<form action="../../ProjectController" method="post">
	   					<input type="hidden" value="<%=request.getParameter("projectid") %>" name="projectid"/>
	   					<input type="hidden" value="<%=freelancerId %>" name="freelancerid"/>
	   					<input  class="shortlist" type="submit" name="action" value="Project Completed"/>
	   				</form>
   				</div>
   			</div>
   		</div>
   	<% 
            }
        } 
    %>
</body>
</html>
