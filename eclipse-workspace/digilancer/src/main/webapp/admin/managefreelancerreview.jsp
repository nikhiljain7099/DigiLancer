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
                <h2 class="h5 mb-0">Manage Reviews</h2>
              </div>
            </div>
            <div class="d-flex justify-content-center align-items-center">
        	<div style="width:90%" class="card mb-0 mt-4">
                  <div class="card-header">
                    <h3 class="h4 mb-0">Freelancer's Review</h3>
                  </div>
                  <div class="card-body pt-0">
                    <div class="table-responsive">
                    <div class="mb-3">
					    <label for="search" class="form-label">Search</label>
					    <input type="text" id="search" class="form-control" placeholder="Enter name to search...">
					</div>
		                  
                      <table class="table mb-0 table-striped table-hover">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Review</th>
                            <th>Project</th>
                            <th>Company Name</th>
                            <th>Delete Review</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>The freelancer was very co-operative throughout the project</td>
                            <td>Insta Ads</td>
                            <td>Marketing Minds</td>
                            <td> <!-- Delete button -->
                            <button type="button" class="btn btn-danger">Delete</button>
                        	</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>It was nice working with this freelancer.</td>
                            <td>Social Media Posts Design</td>
                            <td>Devarsh Edits</td>
                            <td> <!-- Delete button -->
                            <button type="button" class="btn btn-danger">Delete</button>
                        	</td>
                          </tr>
                          <tr>
                            <th class="border-bottom-0" scope="row">3</th>
                            <td class="border-bottom-0">Larry</td>
                            <td class="border-bottom-0">the Bird</td>
                            <td>The project was very good to work with but the freelancer was not not meeting deadlines</td>
                            <td>Reels Editing</td>
                            <td>Pelican Marketing</td>
                            <td> <!-- Delete button -->
                            <button type="button" class="btn btn-danger">Delete</button>
                        	</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
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
	    document.addEventListener("DOMContentLoaded", function() {
	        const searchInput = document.getElementById("search");
	        const tableRows = document.querySelectorAll(".table tbody tr"); // Updated selector
	        searchInput.addEventListener("keyup", function(event) {
	            const searchText = event.target.value.toLowerCase();
	            tableRows.forEach(function(row) {
	                const name = row.cells[1].textContent.toLowerCase();
	                const companyName = row.cells[5].textContent.toLowerCase(); // Updated index for company name
	                if (name.includes(searchText) || companyName.includes(searchText)) {
	                    row.style.display = "";
	                } else {
	                    row.style.display = "none";
	                }
	            });
	        });
	    });
	</script>

</body>
</html>