<%@page import="com.model.ClientModel"%>
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
		.dashboard .createproject a{
			background-color:#dc2751;
			padding:4px 20px;
			transition:0.3s;
			border-radius:20px;
			color:white;
		}
		.dashboard .createproject a:hover{
			background-color:white;
			color:#dc2751;
			text-decoration:none !important;
		}
		.dashboard .manageproject a{
			background-color:white;
			padding:15px 20px;
			transition:0.3s;
			border-radius:5px;
			color:black;
			display: inline-block; /* Ensure each button is on a new line */
            width: 24%; /* Set the width to 200px */
            font-size:18px
		}
		.dashboard .manageproject a:hover,.dashboard .manageproject a:active{
			background-color:#dc2751;
			color:white;
			text-decoration:none !important;
		}
		
		.dashboard .manageproject i{
			color:white;
			background-color:rgb(50,50,50);
			display:inline-block;
			width:2.4vw;
			text-align:center;
			border-radius:4px;
			transition:0.3s;
			font-size:23px;
		}
		.dashboard .manageproject a:hover i,.dashboard .manageproject a:active i{
			background-color:white;
			color:rgb(50,50,50);
		}
		
		.dashboard .managefreelancers input{
			background-color:#dc2751;
			padding:6px 20px;
			transition:0.3s;
			border-radius:20px;
			border:0px solid black;
			color:white;
			width:24%;
			text-align:center;
			font-size:14px;
		}
		.dashboard .managefreelancers input:hover{
			background-color:rgb(40,40,40);
			color:white;
			text-decoration:none !important;
		}
		.dashboard .whattodo .steps{
			color:white;
			width:17vw;
		}
		.dashboard .whattodo .steps .number-border{
			border:1px solid white;
			width:3vw;
			text-align:center;
			vertical-align:center;
			padding:5px 2px;
			border-radius:100%;
		}
		
	</style>
    <title>DigiLancer</title>
  </head>
<body onload="hideAlert()">
	<% ClientModel cmodel = (ClientModel) session.getAttribute("cmodel"); 
	      	if(cmodel==null){
	      		request.getRequestDispatcher("../login.jsp").forward(request, response);
	      	}
	      	else{
	      %>
	<!-- navbar-html -->
   <%@ include file="../navbar.jsp" %>
   <!-- dashboard -->
   <div class="dashboard container-fluid pr-5 pl-5 mb-5">
   <% 
      String msgAttribute = request.getParameter("msg");
      if (msgAttribute != null) {%>
      <% String msg = msgAttribute.toString();
          if (msg.equals("edited")) {
      %>
      <div class="alert alert-success text-center" id="successAlert" role="alert">
	  	Updated Successfully
	  </div>
	  <% } else{ %>
        	  <script>console.log("Failed")</script>
       <%   }
	  	}
      %>
      
   		<div class="createproject mt-3 mr-3 d-flex justify-content-end">
   			<a href="http://localhost:8080/digilancer/buyer/buyer.jsp"> Create Project + </a>
   		</div>
   		<div class="ml-3 mr-3 manageproject d-flex justify-content-between mt-3">
   			<a class="d-flex align-items-center" href="dashboard.jsp?action1=myprojects"><span><i class="uil uil-bag mr-2"></i></i></span><span >My Projects</span></a>
   			<a class="d-flex align-items-center" href="dashboard.jsp?action1=completedprojects"><span><i class="uil uil-check-circle mr-2"></i></i></span><span>Completed Projects</span></a>
   			<a class="d-flex align-items-center" href=""><span><i class="uil uil-comment-alt-lines mr-2"></i></i></span><span>Chat</span></a>
   			<a class="d-flex align-items-center" href="dashboard.jsp?action1=managereviews"><span><i class="uil uil-favorite mr-2"></i></i></span><span>Reviews</span></a>
   		</div>
   		<%
   		if(request.getParameter("action1") != null && request.getParameter("action1").equals("myprojects")){
   		%>
   			<%@ include file="myprojects.jsp" %>
   		<% }  else if(request.getParameter("action1") != null && request.getParameter("action1").equals("completedprojects")){ %>
   			<%@ include file="completedproject.jsp" %>
   		<% } else if(request.getParameter("action1") != null && request.getParameter("action1").equals("chat")){ %>
			<%-- <%@ include file="shortlisted.jsp" %> --%>
		<% } else if(request.getParameter("action1") != null && request.getParameter("action1").equals("managereviews")){ %>
   			<%@ include file="managereviews.jsp" %>
   		<% } else {%>
	   		<div class="ml-3 mr-3 managefreelancers mt-4">
	   			<form  class="w-100 d-flex justify-content-between" action="" method="post">
		   			<input name="action" value="Releated Freelancers" type="submit">
		   			<input name="action" value="Applications Received" type="submit">
		   			<input name="action" value="Shortlisted" type="submit">
		   			<input name="action" value="Projects Assigned" type="submit">
	   			</form>
	   		</div>
	   		<p class="ml-3 mr-3 mt-5 text-light">What to do next?</p>
	   		<div class="ml-3 mr-3 whattodo d-flex justify-content-around align-items-center mt-3">
	   			<div class="steps d-flex align-items-center">
	   				<div class="number-border mr-2">1</div>
	   				<div class="content">View Freelancers Profile</div>
	   			</div>
	   			<img style="width:150px; height:20px" class="mr-4 ml-4" src="images/arrow.png"/>
	   			<div class="steps d-flex align-items-center justify-content-around">
	   				<div class="number-border mr-2">2</div>
	   				<div class="content">Chat with shortlisted freelancer</div>
	   			</div>
	   			<img style="width:150px; height:20px" class="mr-4 ml-4" src="images/arrow.png"/>
	   			<div class="steps d-flex align-items-center">
	   				<div class="number-border mr-2">3</div>
	   				<% String action = request.getParameter("action"); %>
	   				<div class="content">Assign Project</div>
	   			</div>
	   		</div>
	   		<!-- Releated Freelancers -->
	   		<%
	   		if(request.getParameter("action") != null && request.getParameter("action").equals("Releated Freelancers")){
	   		%>
	   			<%@ include file="topreleated.jsp" %>
	   		<% }  else if(request.getParameter("action") != null && request.getParameter("action").equals("Applications Received")){ %>
	   			<%@ include file="applications.jsp" %>
	   		<% } else if(request.getParameter("action") != null && request.getParameter("action").equals("Shortlisted")){ %>
				<%@ include file="shortlisted.jsp" %>
			<% } else if(request.getParameter("action") != null && request.getParameter("action").equals("Projects Assigned")){ %>
	   			<%@ include file="projectsassigned.jsp" %>
	   		<% } else { %>
	   			<%@ include file="topreleated.jsp" %>
	   		<% } %>
   		<% } %>
   </div>
	<!-- footer-html -->
  	<%@ include file="../../components/footer.jsp" %>

  	<script>
	 <% 
		int id = cmodel.getclientId();
		int num=1;
		/* String category = session.getAttribute("category").toString(); */
	%>
	<%-- console.log(<%= id %>+" "+<%= category %>+1); --%>
	console.log("Entered 1");
	function hideAlert() {
		console.log("Entered");
        var alert = document.getElementsByClassName('alert-success')[0];
        setTimeout(function(){
        	console.log(alert);
        	if(alert) {
                alert.style.display = 'none';
            }
        }, 2000);
    }
	</script>
	<% } %>
</body>
</html>