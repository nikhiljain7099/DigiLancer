<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.model.FreelancerModel"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		.viewprofile{
			width:50vw;
		}
		.viewprofile .header{
			background-color:white;
		}
		.viewprofile .header img{
			width: 12vh;
		    height: 12vh;
		    object-fit: cover;
		    border-radius: 50%;
		}

		.viewprofile .header .button-area a{
			background-color:#dc2751;
			padding:6px 20px;
			color:white;
			transition:0.3s;
			text-align:center;
			width:12vw;
		}
		.viewprofile .header .button-area a:hover{
			background-color:rgb(40,40,40);
			text-decoration:none;
		}
		.viewprofile .about,.skills,.portfolio,.education,.reviews{
			background-color:white;
		}
		.viewprofile ul{
			list-style-type:none ;
			padding:0px;;
			margin:0px;
		}
		.viewprofile .reviews img{
			width:4vw;	
			height:9vh;
			border-radius:50%;
		}
		.viewprofile .reviews span{
			font-weight:500;
			font-size:14px;
		}
		.viewprofile .reviews a{
			font-size:14px;
			color:#dc2751;
			display:inline-block;
		}
		.viewprofile .reviews a:hover{
			color:rgb(40,40,40);
			text-decoration:none;
		}
		.viewprofile .portfolio a{
			color:blue;
		}
		.viewprofile .portfolio a:hover{
			color:#dc2751;
			text-decoration:none;
		}
		
		.viewprofile .education .schools h6{
			font-size:20px;
			margin-bottom:4px;
		}
		.viewprofile .education .schools p{
			font-size:14px;
			margin:0px;
		}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<% String source=request.getParameter("source"); %>
	<!-- navbar -->
	<%
	 	Connection cn = new DBUtil().getConnectionData();
	 	PreparedStatement st = cn.prepareStatement("select * from freelancer where freelancerid=?");
	 	st.setInt(1,Integer.parseInt(request.getParameter("freelancerid")));
	 	ResultSet rs = st.executeQuery();
	 	while(rs.next()){
	%>
	<%@ include file="../navbar.jsp" %>
	<div class="d-flex justify-content-center">
		<div class="viewprofile m-5">
			<div class="header rounded d-flex flex-column p-3 align-items-center">
				<div class="profile-image d-flex flex-column align-items-center">
					<img src="../../uploadedimages/freelancerprofile/<%=rs.getString("profile_picture") %>"/>
					<h5 class="m-2"><%=rs.getString("firstname")+" "+rs.getString("lastname") %></h5>
				</div>
				<div class="button-area w-75 mt-2 d-flex justify-content-<%= (source != null && source.equals("completedprojects")) ? "center" : "between" %>">
					<a class="rounded" href="">Chat</a>
					<% 
						
						if(source != null && source.equals("completedprojects")){}else{ %>
							<a class="rounded" href="">Assign Project</a>
					<% } %>
				</div>
			</div>
			<div class="about rounded mt-4 p-3">
				<h4 style="color:#dc2751">Bio</h4>
				<p class="m-0"><%=rs.getString("bio") %></p>
			</div>
			<%
			    // Assuming skills is retrieved from the database and stored in a variable called "skills"
			    String skills = (String) rs.getString("skills");
			
			    // Split the skills string into an array using the comma as a delimiter
			    String[] skillArray = skills.split(",\\s*");
			%>
			<div class="skills rounded mt-4 p-3">
                <h4 style="color:#dc2751">Skills</h4>
                <ul>
                    <% for (String skill : skillArray) { %>
                        <li><%= skill %></li>
                    <% } %>
                </ul>
            </div>
			<div class="reviews rounded mt-4 p-3">
				<h4 style="color:#dc2751">Reviews</h4>
				<div class="content d-flex mt-3">
					<img src="images/review.jpg"/>
					<p class="m-0 ml-3">The Work is really nice<br><span>- Nidhie Verma</span></p>
				</div>
				<div class="content d-flex mt-3">
					<img src="images/review.jpg"/>
					<p class="m-0 ml-3">I must say the designing is very good<br><span>- Nidhie Verma</span></p>
				</div>
				<a class="ml-2 mt-3" href="reviews.jsp">See all reviews</a>
			</div>
			<div class="portfolio rounded mt-4 p-3">
				<h4 style="color:#dc2751">Portfolio</h4>
				<ul>
					<li><a href="<%=rs.getString("portfoliolink") %>"><%=rs.getString("portfolioplatform") %></a></li>
				</ul>
			</div>
			<div class="education rounded mt-4 p-3">
				<h4 style="color:#dc2751">Education</h4>
				<div class="schools mt-3">
					<h6><%=rs.getString("ugprogramme") %> (<%=rs.getInt("ugfrom") %>-<%=rs.getInt("ugto") %>)</h6>
					<p><%=rs.getString("uguniversity") %></p>
				</div>
				<%  String pgprogramme=rs.getString("pgprogramme");
				if(pgprogramme!=null){ %>
				<div class="schools mt-3">
					<h6><%=rs.getString("pgprogramme") %> (<%=rs.getInt("pgfrom") %>-<%=rs.getInt("pgto") %>)</h6>
					<p><%=rs.getString("pguniversity") %></p>
				</div>
				<% } %>
			</div>
		</div>
	</div>
	<%} %>
	<!-- footer -->
	<%@ include file="../../components/footer.jsp" %>
</body>
</html>