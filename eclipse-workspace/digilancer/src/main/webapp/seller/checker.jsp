<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.Path" %>
<%@ page import="java.nio.file.Paths" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Image Existence Checker</title>
</head>
<body>

<%
    // Replace this with the actual path to your image file
    String imagePath = "/Users/nikhiljain/eclipse-workspace/digilancer/src/main/webapp/images/testimonial3.png";
    Path imageFilePath = Paths.get(imagePath);

    if (Files.exists(imageFilePath)) {
%>
        <p>Image exists.</p>
<%
    } else {
%>
        <p>Image does not exist.</p>
<%
    }
%>

</body>
</html>
