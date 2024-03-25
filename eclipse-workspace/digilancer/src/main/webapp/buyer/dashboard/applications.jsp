<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="com.util.DBUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Applications Received</title>
<style>
    .releatedfreelancers .profile{
			background-color:white;
			color:black;
			width:40%;
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
    <h1 class="text-center text-light mt-5">Applications Received</h1>
    <div class="releatedfreelancers mb-5 flex-wrap d-flex justify-content-around">
        <% 
        Connection cn = new DBUtil().getConnectionData();
        PreparedStatement st = cn.prepareStatement("SELECT * FROM project_application WHERE projectid=?");
        st.setInt(1, Integer.parseInt(request.getParameter("projectid"))); // projectid=9
        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            int freelancerId = rs.getInt("freelancerid");

            PreparedStatement stFreelancer = cn.prepareStatement("SELECT * FROM freelancer WHERE freelancerid=?");
            stFreelancer.setInt(1, freelancerId);
            ResultSet rsFreelancer = stFreelancer.executeQuery();

            if (rsFreelancer.next()) {
                String name = rsFreelancer.getString("firstname") + " " + rsFreelancer.getString("lastname");
                String profilePicture = rsFreelancer.getString("profile_picture");
                String about = rsFreelancer.getString("bio");
        %>
        <div class="profile d-flex flex-column justify-content-center rounded p-3 mt-5">
            <div class="head d-flex align-items-center">
                <img class="rounded-circle" src="../../uploadedimages/freelancerprofile/<%=profilePicture%>"/>
                <div class="d-flex flex-column ml-3">
                    <p class="fixed-width"><%=name%></p>
                    <a class="viewprofile" href="viewfreelancerprofile.jsp">View Profile</a>
                </div>
            </div>
            <h6 class="mt-3">Graphic Designer</h6>
            <div class="about mt-2">
                <p class="grey">About <%=name%></p>
                <p><%=about%></p>
            </div>
            <div class="buttons d-flex justify-content-around">
                <a class="shortlist ml-2 mr-2" href="http://localhost:8080/digilancer/buyer/dashboard/viewapplication.jsp?projectid=<%= request.getParameter("projectid") %>&freelancerid=<%= freelancerId%>">View Application</a>
                <a class="shortlist ml-2 mr-2" href="">Shortlist</a>
            </div>
        </div>
        <% 
            }
        }
        %>
    </div>
</body>
</html>
