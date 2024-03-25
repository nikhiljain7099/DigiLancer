<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.DBUtil"%>
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
        body {
            font-family: 'Poppins', sans-serif;
            background-color: rgb(23, 23, 23);
        }

        .blog img {
            width: 85vw;
            height: 85vh;
            object-fit: cover;
            display: inline-block;
            margin: auto;
            transition: 0.5s;
        }

        .blog img:hover {
            transform: scale(0.98);
        }

        .blog .heading h1 {
            font-size: 50px;
        }
    </style>
    <title>DigiLancer</title>
  </head>
  <body>
    <!-- navbar-html -->
    <%@ include file="navbar.jsp" %>
    <%
        try {
            // Establish the connection
            Connection connection = new DBUtil().getConnectionData();

            // SQL query to fetch data from the dlc table
            String query = "SELECT * FROM dlc WHERE dlcid=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            // Set the dlcid parameter
            preparedStatement.setInt(1, Integer.parseInt(request.getParameter("id")));

            // Execute the query
            ResultSet resultSet = preparedStatement.executeQuery();

            // Loop through the result set and display the data
            while(resultSet.next()) {
                String title = resultSet.getString("title");
                String content = resultSet.getString("content");
                String titleImage = resultSet.getString("titleimage");
    %>
    <!-- Blog -->
    <div class="blog mb-5">
        <div class="heading">
            <h1 class="text-light ml-5 mt-5 text-center"><%= title %></h1>
        </div>
        <div class="image d-flex justify-content-center mt-5">
            <img src="../uploadedimages/dlc/<%= titleImage %>"/>
        </div>
        <div class="content mt-5 ml-5">
            <%
			    // Split the content into paragraphs using the newline character
			    String[] paragraphs = content.split("\\n");
			
			    // Display each paragraph within a <p> tag
			    for (String paragraph : paragraphs) {
			%>
			    <p class="text-light">
			        <%= paragraph %>
			    </p>
			<%
			    }
			%>
        </div>
    </div>
    <%
            }
            // Close resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <!-- footer -->
    <%@ include file="../components/footer.jsp" %>
  </body>
</html>
