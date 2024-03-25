<%@page import="com.model.ClientModel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
			width:100px;
			height:100px;
			border-radius:50%;
		}
		.viewprofile .profile-image a{
			font-size:14px;
			color:#dc2751;
		}
		.viewprofile .profile-image a:hover{
			color:rgb(40,40,40);
			text-decoration:none;
		}
		.viewprofile .header .button-area a,input{
			background-color:#dc2751;
			padding:6px 20px;
			color:white;
			transition:0.3s;
			text-align:center;
			width:12vw;
			border:0px;
		}
		.viewprofile .header .button-area a:hover,input:hover{
			cursor:pointer;
			background-color:rgb(40,40,40);
			text-decoration:none;
		}
		.viewprofile .about,.skills,.portfolio,.education{
			background-color:white;
		}
		.viewprofile ul{
			list-style-type:none ;
			padding:0px;;
			margin:0px;
		}
		.viewprofile .portfolio a{
			color:blue;
		}
		.viewprofile .portfolio a:hover{
			color:#dc2751;
			text-decoration:none;
		}
		.viewprofile .
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
	<%
		ClientModel cmodel = (ClientModel) session.getAttribute("cmodel"); 
	  	if(cmodel==null){
	  		request.getRequestDispatcher("../login.jsp").forward(request, response);
	  	}
	  	else{
		Connection cn = new DBUtil().getConnectionData();
		String query = "select count(*) as totalprojectsposted from project where clientid=?";
		PreparedStatement st = cn.prepareStatement(query);
		st.setInt(1, cmodel.getclientId());
		ResultSet rs = st.executeQuery();
		int totalprojectsposted=0;
		if(rs.next()){
			totalprojectsposted=rs.getInt("totalprojectsposted");
		}
	    // Fetch the project record using the project ID
	   	query = "SELECT * FROM client WHERE clientid=?";
	    st = cn.prepareStatement(query);
	    st.setInt(1, cmodel.getclientId());
	    rs = st.executeQuery();
	%>
	<!-- navbar -->
	<%@ include file="../navbar.jsp" %>
	<div class="d-flex justify-content-center">
		<div class="viewprofile m-5">
		<% while (rs.next()) { %>
			<div class="header rounded d-flex flex-column p-3 align-items-center">
				<div class="profile-image d-flex flex-column align-items-center">
					<img src="../../uploadedimages/clientprofile/<%= rs.getString("profileimage") %>"/>
					<h5 class="m-2"><%=rs.getString("companyname") %></h5>
				</div>
				<div class="button-area w-75 mt-2 d-flex justify-content-between">
					<a class="rounded" href="editprofile.jsp">Edit Profile</a>
					<form method="post" action="../../ClientController">
						<input type="submit" name="action" class="rounded" value="Logout"/>
					</form>
				</div>
			</div>
			<div class="about rounded mt-4 p-3">
				<h4 style="color:#dc2751">About Company</h4>
				<p class="m-0"><%=rs.getString("about") %></p>
			</div>
			<div class="skills rounded mt-4 p-3">
				<h4 style="color:#dc2751">Total Projects Posted</h4>
				<p class="m-0"><%= totalprojectsposted %></p>
			</div>
			<div class="skills rounded mt-4 p-3">
				<h4 style="color:#dc2751">Total Amount Spent</h4>
				<p class="m-0"><%=rs.getInt("totalamountspend") %></p>
			</div>
			<div class="portfolio rounded mt-4 p-3">
				<h4 style="color:#dc2751">Company Website</h4>
				<ul>
					<li><a href="<%=rs.getString("website")%>"><%=rs.getString("website")%></a></li>
				</ul>
			</div>
			
		</div>
		<%} }%>
	</div>
	<!-- footer -->
	<%@ include file="../../components/footer.jsp" %>
</body>
</html>