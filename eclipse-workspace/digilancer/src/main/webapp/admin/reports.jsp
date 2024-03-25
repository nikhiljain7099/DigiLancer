<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DigiLancer - Admin Report</title>
</head>
<body>
	<h1>Admin Report</h1>
    
    <h2>Projects Statistics</h2>
    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = new DBUtil().getConnectionData();
            stmt = conn.createStatement();
            String query = "SELECT " +
                                "COUNT(*) AS total_projects, " +
                                "SUM(CASE WHEN status = 'completed' THEN 1 ELSE 0 END) AS completed_projects, " +
                                "SUM(CASE WHEN status = 'incomplete' THEN 1 ELSE 0 END) AS incomplete_projects " +
                            "FROM project";
            rs = stmt.executeQuery(query);
            
            // Process the result set
            if (rs.next()) {
                int totalProjects = rs.getInt("total_projects");
                int completedProjects = rs.getInt("completed_projects");
                int incompleteProjects = rs.getInt("incomplete_projects");
                double completionRate = (double) completedProjects / totalProjects * 100;

                // Display the fetched data
    %>
                <ul>
                    <li>Total number of projects: <%= totalProjects %></li>
                    <li>Number of completed projects: <%= completedProjects %></li>
                    <li>Number of incomplete projects: <%= incompleteProjects %></li>
                    <li>Average project completion rate: <%= String.format("%.2f", completionRate) %>%</li>
                </ul>
    <%
            }
        } catch (SQLException e) {
            out.println("Exception occurred: " + e.getMessage());
        }
    %>
    <h2>Clients Statistics</h2>
    <%
        conn = null;
        stmt = null;
        rs = null;

        try {
            conn = new DBUtil().getConnectionData();
            stmt = conn.createStatement();
            String query = "SELECT " +
                                "COUNT(*) AS total_clients, " +
                                "SUM(totalprojectscompleted) AS total_projects_completed, " +
                                "SUM(totalamountspend) AS total_amount_spent " +
                            "FROM client";
            rs = stmt.executeQuery(query);
            
            // Process the result set
            if (rs.next()) {
                int totalClients = rs.getInt("total_clients");
                int totalProjectsCompleted = rs.getInt("total_projects_completed");
                int totalAmountSpent = rs.getInt("total_amount_spent");

                // Display the fetched data
    %>
                <ul>
                    <li>Total number of clients: <%= totalClients %></li>
                    <li>Total projects completed by clients: <%= totalProjectsCompleted %></li>
                    <li>Total amount spent by clients: $<%= totalAmountSpent %></li>
                </ul>
    <%
            }
        } catch (SQLException e) {
            out.println("Exception occurred: " + e.getMessage());
        }
    %>
    
    <h2>Freelancers Statistics</h2>
	   <%
		    conn = null;
		    stmt = null;
		    rs = null;
		
		    try {
		        conn = new DBUtil().getConnectionData();
		        stmt = conn.createStatement();
		        String query = "SELECT " +
		                        "COUNT(DISTINCT f.freelancerid) AS total_freelancers, " +
		                        "COALESCE(SUM(CASE WHEN p.status = 'completed' THEN 1 ELSE 0 END), 0) AS total_projects_completed " +
		                    "FROM freelancer f " +
		                    "LEFT JOIN project p ON f.freelancerid = p.freelancerid " +
		                    "GROUP BY f.freelancerid";
		
		        rs = stmt.executeQuery(query);
		        
		        // Process the result set
		        if (rs.next()) {
		            int totalFreelancers = rs.getInt("total_freelancers");
		            int totalProjectsCompleted = rs.getInt("total_projects_completed");
		
		            // Display the fetched data
		%>
		            <ul>
		                <li>Total number of freelancers: <%= totalFreelancers %></li>
		                <li>Total projects completed by freelancers: <%= totalProjectsCompleted %></li>
		                <!-- Additional logic to get freelancer with the highest number of completed projects can be added here -->
		            </ul>
		<%
		        }
		    } catch (SQLException e) {
		        out.println("Exception occurred: " + e.getMessage());
		    }
		%>
    
    <h2>Project Applications Statistics</h2>
    <%
	    conn = null;
	    stmt = null;
	    rs = null;
	
	    try {
	        conn = new DBUtil().getConnectionData();
	        stmt = conn.createStatement();
	        String query = "SELECT " +
	                        "COUNT(*) AS total_applications, " +
	                        "AVG(amount) AS avg_application_amount, " +
	                        "AVG(expectedcompletiontime) AS avg_completion_time " +
	                    "FROM project_application";
	
	        rs = stmt.executeQuery(query);
	        
	        // Process the result set
	        if (rs.next()) {
	            int totalApplications = rs.getInt("total_applications");
	            double avgApplicationAmount = rs.getDouble("avg_application_amount");
	            double avgCompletionTime = rs.getDouble("avg_completion_time");
	
	            // Display the fetched data
	%>
	            <ul>
	                <li>Total number of project applications: <%= totalApplications %></li>
	                <li>Average project application amount: $<%= String.format("%.2f", avgApplicationAmount) %></li>
	                <li>Average expected completion time for project applications: <%= String.format("%.1f", avgCompletionTime) %> days</li>
	            </ul>
	<%
	        }
	    } catch (SQLException e) {
	        out.println("Exception occurred: " + e.getMessage());
	    }
	%>
     <button onclick="window.print()">Print Report</button>
</body>
</html>