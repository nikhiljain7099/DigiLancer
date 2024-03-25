<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        .myproject{
            width:60%;
            background-color:white;
            margin:auto;
        }
        .myproject p{
            font-size:18px;
            text-align:center;
        }
        .myproject .head{
            font-weight:600;
        }
        .myproject .button-area .button{
            padding:6px 12px;
            border:1px solid #dc2751;
            font-size:18px;
            color:#dc2751;
            border-radius:3px;
            transition:0.3s;
            width:15vw;
            text-align:center;
            font-weight:500;
            background-color:white
        }
        .myproject .button-area .button:hover{
            text-decoration:none;
            background-color:#dc2751;
            color:white;
        }
        .myproject .head{
            font-size:22px;
        }
    </style>
    <title>DigiLancer</title>
  </head>
<body>
    <%
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            // Establishing database connection
            conn = new DBUtil().getConnectionData();

            // Creating prepared statement to execute query
            pstmt = conn.prepareStatement("SELECT p.projectname AS projecttitle, p.category AS category, p.description AS description, CONCAT(f.firstname, ' ', f.lastname) AS freelancer, pa.proposal AS proposal, pa.amount AS amount, pa.expectedcompletiontime AS expectedcompletiontime FROM  project AS p JOIN  project_application AS pa ON p.projectid = pa.projectid JOIN  freelancer AS f ON pa.freelancerid = f.freelancerid WHERE p.projectid = ? AND pa.freelancerid = ?");
            pstmt.setInt(1, Integer.parseInt(request.getParameter("projectid"))); // projectid=9
            pstmt.setInt(2, Integer.parseInt(request.getParameter("freelancerid"))); // freelancerid=1
            
            // Executing query
            rs = pstmt.executeQuery();

            // Checking if any data is found
            if (rs.next()) {
    %>
    <!-- navbar-html -->
    <%@ include file="../navbar.jsp" %>
    <div class="mb-5 view-application">
    <h1 class="text-center text-light mt-5 mb-4">Application</h1>
            <div class="myproject rounded p-3 mt-3">
                <div class="d-flex flex-column align-items-center justify-content-center">
                    <div class="details">
                        <p class="head mb-0">Project Title</p>
                        <p class="mb-0"><%=rs.getString("projecttitle") %></p>
                    </div>
                    <div class="details mt-4">
                        <p style="width:30vw" class="head mb-0 mr-auto ml-auto">Project Description</p>
                        <p class="mb-0"><%=rs.getString("description") %></p>
                    </div>
                    <div class="details mt-4">
                        <p class="head mb-0">Project Category</p>
                        <p class="mb-0"><%=rs.getString("category") %></p>    
                    </div>
                    <div class="details mt-4">
                        <p class="head mb-0">Freelancer</p>
                        <p class="mb-0"><%=rs.getString("freelancer") %></p>    
                    </div>
                    <div class="details mt-4">
                        <p style="width:15%" class="head mb-0 mr-auto ml-auto">Proposal</p>
                        <p class="mb-0"><%=rs.getString("proposal") %></p>    
                    </div>
                    <div class="details mt-4">
                        <p class="head mb-0">Amount</p>
                        <p class="mb-0"><%=rs.getInt("amount") %></p>    
                    </div>
                    <div class="details mt-4">
                        <p class="head mb-0">Expected Completion Time</p>
                        <p class="mb-0"><%=rs.getString("expectedcompletiontime") %></p>    
                    </div>
                    <div class="button-area mt-4 d-flex justify-content-around w-75">
                    <form action="../../ProjectController" method="post">
                    	<input type="hidden" name="projectid" value="<%=request.getParameter("projectid") %>"/>
                    	<input type="hidden" name="freelancerid" value="<%=request.getParameter("freelancerid")%>" />
                    	<input type="submit" name="action" class="button" value="Assign Project" />
                    </form>
                    
                    <a class="button" href="dashboard.jsp">Shortlist</a>
                </div>
                </div>
            </div>
            </div>
    <%    
            } 
        } catch(SQLException e){
            e.printStackTrace();
        } finally {
            // Closing resources
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
    <!-- footer-html -->
    <%@ include file="../../components/footer.jsp" %>
</body>
</html>
