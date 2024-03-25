<%@page import="com.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans');
        body{
            font-family: 'Poppins', sans-serif;
            background-color:rgb(23,23,23);
        }
        /* heading-css */
        /* Parallax section */
        #promo {
            background: url('images/dlc.jpg') fixed center no-repeat;
            background-size: cover;
            position: relative;
            color: #fff;
            text-align: center;
            padding: 100px 0; /* Adjust padding as needed */
        }

        /* Black overlay */
        #promo::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Adjust the overlay color and opacity */
        }

        /* Container styles */
        #promo .container {
            position: relative;
            z-index: 1;
        }

        /* Text styles */
        #promo h5,
        #promo h1 {
            margin: 0;
            font-size: 40px; /* Adjust the font size */
        }

        #promo h1 {
            margin-top: 10px;
            font-size: 70px; /* Adjust the font size */
        }

        /* Blog Cards */
        .blogs .cards {
            width: 100%;
            background-color: white;
            font-family: 'Open Sans', sans-serif;
            margin-bottom: 20px;
        }

        .blogs .cards img {
		    object-fit: cover;
		    height: 250px;
		    width: 100%;
		}

        .blogs .cards .content h5 {
            font-weight: 600;
        }

        .blogs .cards .content p {
            font-size: 13px;
        }

        .blogs .cards .content a {
            background-color: #ffffff;
            color: #dc2751;
            padding: 5px 15px;
            transition: 0.5s;
            border: 2px solid #dc2751;
            border-radius: 3px;
            display: inline-block; /* Adjust as needed */
            margin-left:auto;
        }

        .blogs .cards .content a:hover {
            text-decoration: none;
            color: white;
            background-color: #dc2751;
        }
        pre{
        font-family: 'Open Sans', sans-serif !important;
        }
        
    </style>
    <title>DigiLancer</title>
</head>
<body>
<!-- navbar -->
<%@ include file="navbar.jsp" %>
<!-- heading -->
<section id="promo" class="parallax-one parallax">
    <div class="container">
        <h1>Digital Learning Center</h1>
    </div>
</section>
<!-- Blog Cards  -->
<div class="blogs m-5">
    <div class="row">
        <%  
            try {
                
                // Establish the connection
                Connection connection = new DBUtil().getConnectionData();
                
                // Create a Statement
                Statement statement = connection.createStatement();
                
                // SQL query to fetch data from the dlc table
                String query = "SELECT * FROM dlc where user='client'";
                
                // Execute the query
                ResultSet resultSet = statement.executeQuery(query);
                
                // Loop through the result set and display the data
                while(resultSet.next()) {
                    String title = resultSet.getString("title");
                    String content = resultSet.getString("content");
                    String titleImage = resultSet.getString("titleimage");
                 // Split content into words
                    String[] words = content.split("\\s+");

                    // Initialize a StringBuilder to construct the displayed content
                    StringBuilder displayedContentBuilder = new StringBuilder();

                    // Append the first 50 words to the StringBuilder
                    int wordCount = Math.min(50, words.length);
                    for (int i = 0; i < wordCount; i++) {
                        displayedContentBuilder.append(words[i]).append(" ");
                    }

                    // Append "..." if the content exceeds 50 words
                    if (words.length > 50) {
                        displayedContentBuilder.append("...");
                    }

                    // Convert StringBuilder to String
                    String displayedContent = displayedContentBuilder.toString();
        %>
        <div class="col-md-4">
		    <div class="cards rounded">
		        <img src="/uploadedimages/dlc/digital.jpeg"/>
		        <div class="content p-4 d-flex flex-column">
		            <h5><%= title %></h5>
		            <p class="mt-2"><%= displayedContent %></p>
		            <a href="blog.jsp?id=<%= resultSet.getInt("dlcid") %>">Read More</a>
		        </div>
		    </div>
		</div>
        <%
                }
                
                // Close the ResultSet, Statement, and Connection
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
</div>
<!-- footer -->
<%@ include file="../components/footer.jsp" %>


</body>
</html>
