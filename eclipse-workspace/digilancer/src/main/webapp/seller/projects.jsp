<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.model.ProjectModel"%>
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
    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    
    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <style>
        /* Dark Mode Theme */
        body {
            background-color: rgb(23, 23, 23);
            color: #fff;
        }

        .sidebar {
            background-color: #333;
            color: #fff;
        }

        .sidebar-sticky .apply {
            display: inline-block;
            text-align: center;
            background-color: #dc2751;
            padding: 1vh 0px;
            width: 100%;
            color: white;
            border-radius: 3px;
            border: 0px solid white;
            transition: 0.5s;
        }

        .sidebar-sticky .apply:hover {
            background-color: rgb(40, 40, 40);
            color: white;
        }

        .form-group label {
            color: #fff;
            font-size: 20px;
            font-weight: 500;
        }

        .form-control,
        .custom-control-input {
            background-color: #444;
            color: #fff;
            border: 1px solid #555;
        }

        .custom-checkbox label {
            font-size: 16px;
        }

        /* Adjust main content padding to prevent overlapping with sticky sidebar */
        .profiles {
            padding-top: 10px;
            /* Adjust as needed */
            color: white;
        }

        #allProfilesContainer {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(30%, 1fr));
            /* Adjust the width based on your preference */
            gap: 20px;
            /* Adjust the gap between profiles */
        }

        .profiles .profile {
            width: 100%;
            background-color: white;
            border-radius: 5px;
            color: black;
        }

        .profiles .profile .head img {
            height: 85px;
            width: 85px;
            object-fit: cover;
            border-radius: 50%;
        }

        .profiles .profile .head a {
            font-size: 13px;
        }

        .profiles .profile .head a:hover {
            text-decoration: none;
        }

        .profiles .profile .content .heading {
            color: grey !important;
            font-size: 14px;
        }

        .profiles .profile .buttons a {
            background-color: rgb(40, 40, 40);
            color: white;
            text-align: center;
            padding: 8px;
            border-radius: 3px;
            transition: 0.3s;
            width: 45%;
        }

        .profiles .profile .buttons a:hover {
            background-color: #dc2751;
            color: white;
            text-decoration: none;
            border: 1px solid #dc2751;
        }
        .profiles .profile .buttons .btn-save {
		    background-color: rgb(40, 40, 40);
		    color: white;
		    text-align: center;
		    padding: 8px;
		    border-radius: 3px;
		    transition: 0.3s;
		    width: 100%;
		    border: 2px solid black;
		}
		
		.profiles .profile .buttons .btn-save:hover {
		    background-color: #dc2751;
		    color: white;
		    text-decoration: none;
		    border: 2px solid #dc2751;
		}

        .demo1 {
            background-color: white;
            height: 70vh;
        }
    </style>
    <title>Projects</title>
</head>
<body>
<!-- navbar-html -->
<%@ include file="navbar.jsp" %>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 sidebar sticky-top">
            <div class="sidebar-sticky pt-4 mb-5">
                <h4>Sort and Filter</h4>

                <!-- Sorting Options -->
                <div class="form-group">
                    <label for="sortSelect">Sort by:</label>
                    <select class="form-control" id="sortSelect">
                        <option value="price_low_to_high">Price - Low to High</option>
                        <option value="price_high_to_low">Price - High to Low</option>
                    </select>
                </div>

                <!-- Filtering Options -->
                <div class="form-group">
                    <label>Skills:</label>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="graphicdesign">
                        <label class="custom-control-label" for="graphicdesign">Graphic Design</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="websitedevelopment">
                        <label class="custom-control-label" for="websitedevelopment">Website Development</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="videoediting">
                        <label class="custom-control-label" for="videoediting">Video Editing</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="seo">
                        <label class="custom-control-label" for="seo">SEO</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="contentwriting">
                        <label class="custom-control-label" for="contentwriting">Content Writing</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="socialmediamarketing">
                        <label class="custom-control-label" for="socialmediamarketing">Social Media Marketing</label>
                    </div>
                    <!-- Add more filtering options as needed -->
                </div>


                <!-- Apply Button -->
                <a class="apply" onclick="applyFilters()">Apply</a>
            </div>
        </nav>

        <!-- Main Content -->
        <div class="profiles mt-2 col-md-8 ml-sm-auto col-lg-9 px-4" id="profileContainer">
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
    </div>
</div>
<!-- footer -->
<%@ include file="../components/footer.jsp" %>
<!-- Bootstrap JS, Popper.js, and jQuery (Make sure they are included) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script>
    // Variable to keep track of the current sort order
    var sortOrder = 'price_low_to_high';

    // Variable to store all profiles data
    var allProfilesData = [];

    // Function to toggle sort order
    function toggleSortOrder() {
        if (sortOrder === 'price_low_to_high') {
            sortOrder = 'price_high_to_low';
        } else {
            sortOrder = 'price_low_to_high';
        }
    }

    // Function to sort profiles based on project amount (price) in ascending order
    function sortByPriceAscending() {
        profilesData.sort(function (a, b) {
            return parseInt(a.projectAmount.split(' - ')[0]) - parseInt(b.projectAmount.split(' - ')[0]);
        });
    }

    // Function to sort profiles based on project amount (price) in descending order
    function sortByPriceDescending() {
        profilesData.sort(function (a, b) {
            return parseInt(b.projectAmount.split(' - ')[0]) - parseInt(a.projectAmount.split(' - ')[0]);
        });
    }

    // Event listener for sorting select element
    document.getElementById('sortSelect').addEventListener('change', function () {
        // Toggle sort order
        toggleSortOrder();

        // Check the selected option
        var sortOption = this.value;
        if (sortOption === 'price_low_to_high') {
            // Sort profiles based on price in ascending order
            sortByPriceAscending();
        } else if (sortOption === 'price_high_to_low') {
            // Sort profiles based on price in descending order
            sortByPriceDescending();
        }

        // Recreate profiles after sorting
        createProfiles();
    });

 // Function to apply filters
    function applyFilters() {
        // Get selected skills
        var skills = [];
        var checkboxes = document.querySelectorAll('.custom-control-input');
        checkboxes.forEach(function(checkbox) {
            if (checkbox.checked) {
                skills.push(checkbox.id);
            }
        });

        console.log('Selected skills:', skills); // Debugging statement

        // Filter profiles based on selected skills
        if (skills.length === 0) {
            // If no skills are selected, show all profiles
            profilesData = allProfilesData;
        } else {
            profilesData = allProfilesData.filter(function(profile) {
                console.log('Current profile category:', profile.category); // Debugging statement
                return skills.includes(profile.category);
            });
        }

        console.log('Filtered profiles:', profilesData); // Debugging statement

        // Recreate profiles after filtering
        createProfiles();
    }

    // Function to create profiles dynamically
    function createProfiles() {
        // Clear existing profiles
        var profilesContainer = document.getElementById('allProfilesContainer');
        profilesContainer.innerHTML = '';

        // Add profiles dynamically
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
            profileHead.textContent = profile.profileName
            profileHead.className = 'mt-2 mb-1';
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

            var titleDiv4 = document.createElement('div');
            titleDiv4.className = 'title mt-2';
            var headingSpan4 = document.createElement('span');
            headingSpan4.className = 'heading';
            headingSpan4.textContent = 'Project Category';
            var descSpan4 = document.createElement('span');
            descSpan4.className = 'desc mt-0';
            descSpan4.textContent = profile.category; // Replace with actual category
            titleDiv4.appendChild(headingSpan4);
            titleDiv4.appendChild(document.createElement('br'));
            titleDiv4.appendChild(descSpan4);

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
            contentDiv.appendChild(titleDiv4);
            contentDiv.appendChild(titleDiv2);
            contentDiv.appendChild(titleDiv3);

         // Profile buttons
            var buttonsDiv = document.createElement('div');
            buttonsDiv.className = 'buttons d-flex justify-content-around mt-3';

            // Save Project Form
            var saveForm = document.createElement('form');
            saveForm.action = "../ProjectController";
            saveForm.method = "post";

            // Hidden input for project ID
            var projectIdInput = document.createElement('input');
            projectIdInput.type = 'hidden';
            projectIdInput.name = 'projectid';
            projectIdInput.value = profile.id; // Assuming profile.id holds the project ID

            // Save Project Button
            var actionButton1 = document.createElement('input');
            actionButton1.type = 'submit';
            actionButton1.value = 'Save Project';
            actionButton1.name = 'action'; // Set the name attribute to 'action'
            actionButton1.className = 'btn-save'; // Added class for specific styling

            // View & Apply Button
            var actionButton = document.createElement('a');
            actionButton.textContent = 'View & Apply';
            actionButton.href = "projectdetails.jsp?projectid="+profile.id;
            actionButton.className = 'btn btn-dark'; // Set the button color to black

            // Add event listeners or other button details as needed
            saveForm.appendChild(projectIdInput);
            saveForm.appendChild(actionButton1);
            buttonsDiv.appendChild(saveForm);
            buttonsDiv.appendChild(actionButton);

            // Add the header, content, and buttons to the profile div
            profileDiv.appendChild(headDiv);
            profileDiv.appendChild(contentDiv);
            profileDiv.appendChild(buttonsDiv);

            // Append the profile div to the container (allProfilesContainer)
            profilesContainer.appendChild(profileDiv);




        });
    }

    // Assuming profilesData is an array containing profile information
    <%
        Connection cn = new DBUtil().getConnectionData();
        PreparedStatement st = cn.prepareStatement("SELECT p.projectid, p.projectname, p.category, p.description, p.min, p.max, p.clientid, p.status, p.amount,p.deadline,p.save,p.apply, c.companyname AS companyname, c.profileimage AS profileimage FROM project p JOIN client c ON p.clientid = c.clientid WHERE p.status = 'incomplete' and p.save='no' and p.apply='no'");
        ResultSet rs = st.executeQuery();
    %>
    var profilesData = [
    <%while(rs.next()){ %>
    { image: '../uploadedimages/clientprofile/<%= rs.getString("profileimage") %>', profileLink: 'dashboard/viewbusinessprofile.jsp?id=<%= rs.getInt("clientid") %>', profileName: '<%= rs.getString("companyname") %>', heading: '<%=rs.getString("projectname")%>', category: '<%= rs.getString("category") %>', projectAmount: '<%= rs.getInt("min") %> - <%= rs.getInt("max") %>', deadline: '<%= rs.getInt("deadline")%>',id: <%= rs.getInt("projectid") %> },
    <%}%>
    // Add more profiles as needed
    ];

    // Store all profiles data initially
    allProfilesData = profilesData;

    // Call createProfiles initially
    createProfiles();
</script>
</body>
</html>
