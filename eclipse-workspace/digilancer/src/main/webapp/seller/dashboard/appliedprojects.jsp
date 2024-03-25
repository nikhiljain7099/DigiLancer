<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.model.FreelancerModel"%>
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
	/* Adjust main content padding to prevent overlapping with sticky sidebar */
        .profiles {
            padding-top: 10px; /* Adjust as needed */
            color:white;
        }
        #allProfilesContainer {
		    display: grid;
		    grid-template-columns: repeat(auto-fill, minmax(30%, 1fr)); /* Adjust the width based on your preference */
		    gap: 20px; /* Adjust the gap between profiles */
		}
		
		.profiles .profile {
		    width: 100%;
		    background-color: white;
		    border-radius: 5px;
		    color: black;
		}
        
        .profiles .profile .head img{
			height:85px;
			width:85px;
			object-fit:cover;
			border-radius:50%;
		}
		.profiles .profile .head a{
			font-size:13px;
		}
		.profiles .profile .head a:hover{
			text-decoration:none;
		}
		.profiles .profile .content .heading{
			color:grey !important;
			font-size:14px;
		}
		.profiles .profile .buttons a{
			background-color:rgb(40,40,40);
			color:white;
			text-align:center;
			padding:8px;
			border-radius:3px;
			transition:0.3s;
			width:45%;
		}
		.profiles .profile .buttons a:hover{
			background-color:#dc2751;
			color:white;
			text-decoration:none;
		}
		.demo1{
			background-color:white;
			height:70vh;
		}
</style>
</head>
<body>
	<h1 class="text-center text-light mt-5">Applied Projects</h1>
   		<!-- Main Content -->
	        <div class="profiles mt-2 ml-auto mr-auto col-md-11 col-lg-11 px-4" id="profileContainer">
			    <!-- Profiles container -->
			    <div id="allProfilesContainer">
			        <!-- Profiles will be dynamically added here using JavaScript -->
			    </div>
			
			    <!-- Add pagination below the last row of profiles -->
			    <nav aria-label="Page navigation">
			        <ul class="pagination justify-content-center mt-4" id="pagination">
			            <!-- Pagination links will be dynamically added here using JavaScript -->
			        </ul>
			    </nav>
			</div>
	<script>
		// Function to show profiles for a specific page
	    function showPage(pageNumber, profilesPerPage) {
	        // Hide all profiles
	        var allProfiles = document.querySelectorAll('.profile');
	        allProfiles.forEach(function (profile) {
	            profile.style.display = 'none';
	        });
	
	        // Calculate the start and end index of profiles to display
	        var startIndex = (pageNumber - 1) * profilesPerPage;
	        var endIndex = startIndex + profilesPerPage;
	
	        // Show profiles for the current page
	        for (var i = startIndex; i < endIndex && i < allProfiles.length; i++) {
	            allProfiles[i].style.display = 'block';
	        }
	    }
	
	    // Function to create pagination links
	    function createPagination(profilesPerPage) {
	        // Get all profile elements
	        var allProfiles = document.querySelectorAll('.profile');
	
	        // Calculate the total number of pages
	        var totalPages = Math.ceil(allProfiles.length / profilesPerPage);
	
	        // Create pagination links
	        var pagination = document.getElementById('pagination');
	        pagination.innerHTML = ''; // Clear existing pagination links
	
	        for (var i = 1; i <= totalPages; i++) {
	            var listItem = document.createElement('li');
	            listItem.className = 'page-item';
	            var link = document.createElement('a');
	            link.className = 'page-link';
	            link.href = '#';
	            link.textContent = i;
	            link.dataset.pageNumber = i; // Store the page number as data
	            listItem.appendChild(link);
	            pagination.appendChild(listItem);
	        }
	
	        // Add click event handler for all page links
	        pagination.querySelectorAll('a.page-link').forEach(function (link) {
	            link.addEventListener('click', function () {
	                var pageNumber = parseInt(this.dataset.pageNumber, 10);
	                showPage(pageNumber, profilesPerPage);
	            });
	        });
	
	        // Show the first page by default
	        showPage(1, profilesPerPage);
	    }
	
	    
	     // Assuming profilesData is an array containing profile information
	    <% 
        Connection cn = new DBUtil().getConnectionData();
        FreelancerModel pmodel = (FreelancerModel) session.getAttribute("lmodel");
        PreparedStatement st = cn.prepareStatement("SELECT p.projectid, p.projectname, p.category, p.description, p.min, p.max, p.clientid, p.status, p.amount,p.deadline,p.save,p.apply, c.companyname AS companyname, c.profileimage AS profileimage FROM project p JOIN client c ON p.clientid = c.clientid WHERE p.status = 'incomplete' and p.apply='yes'");
        ResultSet rs = st.executeQuery();
    	%>
    	var profilesData = [
	        <%while(rs.next()){ %>
		    { image: '../../uploadedimages/clientprofile/<%= rs.getString("profileimage") %>', profileLink: 'dashboard/viewbusinessprofile.jsp?id=<%= rs.getInt("clientid") %>', profileName: '<%= rs.getString("companyname") %>', heading: '<%=rs.getString("projectname")%>', category: '<%= rs.getString("category") %>', projectAmount: '<%= rs.getInt("min") %> - <%= rs.getInt("max") %>', deadline: '<%= rs.getInt("deadline")%>',id: <%= rs.getInt("projectid") %> },
		    <%}%>
	    ];
	
	    // Create profiles dynamically
	    var profilesContainer = document.getElementById('allProfilesContainer');
	    profilesData.forEach(function (profile) {
	        // Create a div for each profile with the .profile class
	        var profileDiv = document.createElement('div');
	        profileDiv.className = 'profile p-2';
	
	        // Profile header
	        var headDiv = document.createElement('div');
	        headDiv.className = 'head d-flex flex-column align-items-center';
	        var profileImage = document.createElement('img');
	        profileImage.src = profile.image; // Replace with actual image source
	        profileImage.alt = 'Profile Image';
	        var profileHead = document.createElement('h5');
	        profileHead.textContent=profile.profileName
	        profileHead.className='mt-2 mb-1';
	        var profileNameLink = document.createElement('a');
	        profileNameLink.href = profile.profileLink; // Replace with actual profile link
	        profileNameLink.textContent = 'View Profile'; // Replace with actual profile name
	        headDiv.appendChild(profileImage);
	        headDiv.appendChild(profileHead);
	        headDiv.appendChild(profileNameLink);
	
	        // Profile content
	        var contentDiv = document.createElement('div');
	        contentDiv.className = 'content';
	        var titleDiv1 = document.createElement('div');
	        titleDiv1.className = 'title mt-2';
	        var headingSpan = document.createElement('span');
	        headingSpan.className = 'heading';
	        headingSpan.textContent = 'Project Title';
	        var descSpan1 = document.createElement('span');
	        descSpan1.className = 'desc mt-0';
	        descSpan1.textContent = profile.heading; // Replace with actual heading
	        titleDiv1.appendChild(headingSpan);
	        titleDiv1.appendChild(document.createElement('br'));
	        titleDiv1.appendChild(descSpan1);
	
	        var titleDiv2 = document.createElement('div');
	        titleDiv2.className = 'title mt-2';
	        var headingSpan2 = document.createElement('span');
	        headingSpan2.className = 'heading';
	        headingSpan2.textContent = 'Project Amount';
	        var descSpan2 = document.createElement('span');
	        descSpan2.className = 'desc mt-0';
	        descSpan2.textContent = profile.projectAmount; // Replace with actual project amount
	        titleDiv2.appendChild(headingSpan2);
	        titleDiv2.appendChild(document.createElement('br'));
	        titleDiv2.appendChild(descSpan2);
	
	        var titleDiv3 = document.createElement('div');
	        titleDiv3.className = 'title mt-2';
	        var headingSpan3 = document.createElement('span');
	        headingSpan3.className = 'heading';
	        headingSpan3.textContent = 'Deadline';
	        var descSpan3 = document.createElement('span');
	        descSpan3.className = 'desc mt-0';
	        descSpan3.textContent = profile.deadline; // Replace with actual deadline
	        titleDiv3.appendChild(headingSpan3);
	        titleDiv3.appendChild(document.createElement('br'));
	        titleDiv3.appendChild(descSpan3);
	
	        contentDiv.appendChild(titleDiv1);
	        contentDiv.appendChild(titleDiv2);
	        contentDiv.appendChild(titleDiv3);
	
	        // Profile buttons
	        var buttonsDiv = document.createElement('div');
	        buttonsDiv.className = 'buttons d-flex justify-content-around mt-3';
	        var actionButton1 = document.createElement('a');
	        actionButton1.textContent = 'Save Project';
	        actionButton1.href="projectdetails.jsp";
	        var actionButton = document.createElement('a');
	        actionButton.textContent = 'View & Apply';
	        actionButton.href="projectdetails.jsp";
	        // Add event listeners or other button details as needed
	        /* buttonsDiv.appendChild(actionButton); */
	        // Add the header, content, and buttons to the profile div
	        profileDiv.appendChild(headDiv);
	        profileDiv.appendChild(contentDiv);
	        profileDiv.appendChild(buttonsDiv);
	
	        // Append the profile div to the container (allProfilesContainer)
	        profilesContainer.appendChild(profileDiv);
	    });
	
	    // After adding all profiles, recreate the pagination
	    createPagination(6); // Assuming 3 profiles per page, adjust as needed
	</script>
</body>
</html>