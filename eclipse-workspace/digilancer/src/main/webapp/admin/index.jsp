<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.model.AdminModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DigiLancer - Admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Choices.js-->
    <link rel="stylesheet" href="vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<%@ include file="navbar.jsp" %>
    <div class="d-flex align-items-stretch">
      <%@ include file="sidebar.jsp" %>
      <div class="page-content">
            <!-- Page Header-->
            <div class="bg-dash-dark-2 py-4">
              <div class="container-fluid">
                <h2 class="h5 mb-0">Stats</h2>
              </div>
            </div>
        <section>
          <div class="container-fluid">
            <div class="row gy-4">
              <div class="col-md-4 col-sm-6">
                <div class="card mb-0">
                  <div class="card-body">
                    <div class="d-flex align-items-end justify-content-between mb-2">
                      <div class="me-2">
                            <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                              <use xlink:href="#stack-1"> </use>
                            </svg>
                        <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Incomplete Projects</p>
                      </div>
                      <%
                      	st = cn.prepareStatement("SELECT COUNT(*) AS incomplete_projects FROM project WHERE status = 'incomplete'");
                      	rs = st.executeQuery();
                      	if(rs.next()) {
                      %>
                      <p class="text-xxl lh-1 mb-0 text-dash-color-2"><%=rs.getInt("incomplete_projects") %></p>
                    </div>
                    <div class="progress" style="height: 3px">
                      <div class="progress-bar bg-dash-color-2" role="progressbar" style="width: <%= (rs.getInt("incomplete_projects")*100)/totalProjects %>%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <%} %>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="card mb-0">
                  <div class="card-body">
                    <div class="d-flex align-items-end justify-content-between mb-2">
                      <div class="me-2">
                            <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                              <use xlink:href="#survey-1"> </use>
                            </svg>
                        <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Completed Projects</p>
                      </div>
                      <%
	                      	st = cn.prepareStatement("SELECT COUNT(*) AS completed_projects FROM project WHERE status = 'completed'");
	                      	rs = st.executeQuery();
	                      	if(rs.next()) {
	                      %>
                      <p class="text-xxl lh-1 mb-0 text-dash-color-3"><%=rs.getInt("completed_projects") %></p>
                    </div>
                    <div class="progress" style="height: 3px">
                      <div class="progress-bar bg-dash-color-3" role="progressbar" style="width: <%= (rs.getInt("completed_projects")*100)/totalProjects %>%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <% } %>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="card mb-0">
                  <div class="card-body">
                    <div class="d-flex align-items-end justify-content-between mb-2">
                      <div class="me-2">
                            <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                              <use xlink:href="#paper-stack-1"> </use>
                            </svg>
                        <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Total Projects</p>
                      </div>
                      
                      <p class="text-xxl lh-1 mb-0 text-dash-color-4"> <%=totalProjects %></p>
                      
                    </div>
                    <div class="progress" style="height: 3px">
                      <div class="progress-bar bg-dash-color-4" role="progressbar" style="width: 100%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row gy-4 mt-2">
              <div class="col-md-4 col-sm-6">
                <div class="card mb-0">
                  <div class="card-body">
                    <div class="d-flex align-items-end justify-content-between mb-2">
                      <div class="me-2">
                            <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                              <use xlink:href="#stack-1"> </use>
                            </svg>
                        <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Total Freelancers</p>
                      </div>
                      <%
	                      	st = cn.prepareStatement("SELECT COUNT(*) AS total_freelancers FROM freelancer");
	                      	rs = st.executeQuery();
	                      	if(rs.next()) {
	                      %>
                      <p class="text-xxl lh-1 mb-0 text-dash-color-3"><%=rs.getInt("total_freelancers") %></p>
                    </div>
                    <div class="progress" style="height: 3px">
                      <div class="progress-bar bg-dash-color-3" role="progressbar" style="width: <%= (rs.getInt("total_freelancers")*100)/totalUsers %>%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <%} %>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="card mb-0">
                  <div class="card-body">
                    <div class="d-flex align-items-end justify-content-between mb-2">
                      <div class="me-2">
                            <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                              <use xlink:href="#survey-1"> </use>
                            </svg>
                        <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Total Clients</p>
                      </div>
                      <%
	                      	st = cn.prepareStatement("SELECT COUNT(*) AS total_client FROM client");
	                      	rs = st.executeQuery();
	                      	if(rs.next()) {
	                      %>
                      <p class="text-xxl lh-1 mb-0 text-dash-color-2"><%=rs.getInt("total_client") %></p>
                    </div>
                    <div class="progress" style="height: 3px">
                      <div class="progress-bar bg-dash-color-2" role="progressbar" style="width: <%= (rs.getInt("total_client")*100)/totalUsers %>%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <% } %>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="card mb-0">
                  <div class="card-body">
                    <div class="d-flex align-items-end justify-content-between mb-2">
                      <div class="me-2">
                            <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                              <use xlink:href="#paper-stack-1"> </use>
                            </svg>
                        <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Total Users</p>
                      </div>
                      <p class="text-xxl lh-1 mb-0 text-dash-color-3"><%=totalUsers %></p>
                    </div>
                    <div class="progress" style="height: 3px">
                      <div class="progress-bar bg-dash-color-3" role="progressbar" style="width: 100%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="container-fluid mb-5">
		    <div class="row gy-4">
		      <div class="col-md-6">
		        <div class="card">
		          <div class="card-header">
		            Projects Overview
		          </div>
		          <div class="card-body">
		            <canvas id="projectPieChart" width="400" height="200"></canvas>
		          </div>
		        </div>
		      </div>
		      <div class="col-md-6">
		        <div class="card">
		          <div class="card-header">
		            Freelancer Skills
		          </div>
		          <div class="card-body">
		            <canvas id="freelancerSkillsPieChart" width="400" height="200"></canvas>
		          </div>
		        </div>
		      </div>
		    </div>
		    <a href="reports.jsp" class="btn btn-primary mt-4 w-100">Generat Pdf Report</a>
		  </div>
        <!-- Page Footer-->
        <footer class="mt-5 position-absolute bottom-0 bg-dash-dark-2 text-white text-center py-3 w-100 text-xs" id="footer">
          <div class="container-fluid text-center">
            <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            <p class="mb-0 text-dash-gray">2021 &copy; DigiLancer</p>
          </div>
        </footer>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/just-validate/js/just-validate.min.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/choices.js/public/assets/scripts/choices.min.js"></script>
    <script src="js/charts-home.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
    <script>
	 // Initialize Chart.js
	    var ctx = document.getElementById('freelancerSkillsPieChart').getContext('2d');
	    var freelancerSkillsPieChart = new Chart(ctx, {
	      type: 'pie',
	      data: {
	        labels: ['Graphic Designer', 'Website Developer', 'SEO', 'Social Media Marketer', 'Video Editor', 'Photo Shooting'],
	        datasets: [{
	          label: 'Skills',
	          data: [150, 200, 120, 100, 80, 50], // Initial data
	          backgroundColor: [
	            'rgba(255, 99, 132, 0.7)',
	            'rgba(54, 162, 235, 0.7)',
	            'rgba(255, 206, 86, 0.7)',
	            'rgba(75, 192, 192, 0.7)',
	            'rgba(153, 102, 255, 0.7)',
	            'rgba(255, 159, 64, 0.7)'
	          ],
	          borderColor: [
	            'rgba(255, 99, 132, 1)',
	            'rgba(54, 162, 235, 1)',
	            'rgba(255, 206, 86, 1)',
	            'rgba(75, 192, 192, 1)',
	            'rgba(153, 102, 255, 1)',
	            'rgba(255, 159, 64, 1)'
	          ],
	          borderWidth: 1
	        }]
	      },
	      options: {
	        responsive: true,
	        maintainAspectRatio: false,
	        legend: {
	          position: 'right'
	        },
	        title: {
	          display: false,
	          text: 'Freelancer Skills'
	        }
	      }
	    });
	
	    // Function to update pie chart data
	    function updateFreelancerSkills(newData) {
	      freelancerSkillsPieChart.data.datasets[0].data = newData;
	      freelancerSkillsPieChart.update();
	    }
	
	    // Example of updating data
	    var newData = [2, 4, 1, 3, 2, 3]; // New data
	    updateFreelancerSkills(newData);
	 // Initialize Chart.js
	    var ctx = document.getElementById('projectPieChart').getContext('2d');
	    var projectPieChart = new Chart(ctx, {
	      type: 'pie',
	      data: {
	        labels: ['Web Development', 'Graphic Design', 'SEO', 'Video Editing', 'Social Media Marketing', 'Photoshoot'],
	        datasets: [{
	          label: 'Projects',
	          data: [200, 150, 100, 50, 120, 80], // Initial data
	          backgroundColor: [
	            'rgba(255, 99, 132, 0.7)',
	            'rgba(54, 162, 235, 0.7)',
	            'rgba(255, 206, 86, 0.7)',
	            'rgba(75, 192, 192, 0.7)',
	            'rgba(153, 102, 255, 0.7)',
	            'rgba(255, 159, 64, 0.7)'
	          ],
	          borderColor: [
	            'rgba(255, 99, 132, 1)',
	            'rgba(54, 162, 235, 1)',
	            'rgba(255, 206, 86, 1)',
	            'rgba(75, 192, 192, 1)',
	            'rgba(153, 102, 255, 1)',
	            'rgba(255, 159, 64, 1)'
	          ],
	          borderWidth: 1
	        }]
	      },
	      options: {
	        responsive: true,
	        maintainAspectRatio: false,
	        legend: {
	          position: 'right'
	        },
	        title: {
	          display: false,
	          text: 'Projects Overview'
	        }
	      }
	    });
	
	    // Function to update pie chart data
	    function updatePieChartData(newData) {
	      projectPieChart.data.datasets[0].data = newData;
	      projectPieChart.update();
	    }
	
	    // Example of updating data
	    var newData = [4, 3, 3, 2, 2, 1]; // New data
	    updatePieChartData(newData);
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }
      // this is set to BootstrapTemple website as you cannot 
      // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
      // while using file:// protocol
      // pls don't forget to change to your domain :)
      injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg'); 
      
      
    </script>
    <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</body>
</html>