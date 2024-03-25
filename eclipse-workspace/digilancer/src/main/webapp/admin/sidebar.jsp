<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.AdminModel"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	nav#sidebar .sidebar-header .avatar{
		object-fit:cover;
	}
</style>
<body>
	<%
		AdminModel amodel = (AdminModel) session.getAttribute("amodel"); 
	  	if(amodel==null){
	  		request.getRequestDispatcher("login.jsp").forward(request, response);
	  	}
		Connection cn = new DBUtil().getConnectionData();
		int adminid = amodel.getAdminId();
		PreparedStatement st = cn.prepareStatement("SELECT COUNT(*) AS total_projects FROM project");
	  	ResultSet rs = st.executeQuery();
	  	int totalProjects=0;
	  	if(rs.next()) {
	  		totalProjects=rs.getInt("total_projects");
	  	}
	  	int totalUsers=0;
	  	st=cn.prepareStatement("SELECT (SELECT COUNT(*) FROM freelancer) + (SELECT COUNT(*) FROM client) AS total_users");
	  	rs=st.executeQuery();
	  	if(rs.next()){
	  		totalUsers=rs.getInt("total_users");
	  	}
		st = cn.prepareStatement("SELECT * from admin where adminid=?");
		st.setInt(1, adminid);
	  	rs = st.executeQuery();
	  	String adminname="";
	  	String superadmin="";
	  	if(rs.next()) {
	 		adminname=rs.getString("name");
	 		superadmin=rs.getString("superadmin");
	  	}
	%>
	<!-- Sidebar Navigation-->
      <nav id="sidebar">
        <!-- Sidebar Header-->
        <a href="myProfile.jsp">
        <div class="sidebar-header d-flex align-items-center p-4">
        	<img class="avatar shadow-0 img-fluid rounded-circle" src="img/adminimage.jpeg" alt="...">
          <div class="ms-3 title">
            <h1 class="h5 mb-1"><%=adminname %></h1>
            <p class="text-sm text-gray-700 mb-0 lh-1"><%= superadmin.equals("yes") ? "Super Admin" : "Admin" %></p>
          </div>
        
        </div>
        </a>
        <span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2"></span>
        <ul class="list-unstyled">
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>Stats </span></a></li>
              <li class="sidebar-item"><a class="sidebar-link" href="managebusiness.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>Manage Business </span></a></li>
              <li class="sidebar-item"><a class="sidebar-link" href="managefreelancers.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span>Manage Freelancers </span></a></li>
              <li class="sidebar-item"><a class="sidebar-link" href="#exampledropdownDropdown" data-bs-toggle="collapse"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#browser-window-1"> </use>
                      </svg><span>Manage Reviews </span></a>
                <ul class="collapse list-unstyled " id="exampledropdownDropdown">
                  <li><a class="sidebar-link" href="managebusinessreview.jsp">Business's Reviews</a></li>
                  <li><a class="sidebar-link" href="managefreelancerreview.jsp">Freelancer's Reviews</a></li>
                </ul>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="managedlc.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#disable-1"> </use>
                      </svg><span>Post DLC Blogs</span></a></li>
               <% if(superadmin.equals("yes")){ %>
              <li class="sidebar-item"><a class="sidebar-link" href="manageadmin.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span>Manage Admins </span></a></li>
               <%} %>       
        </ul>
      </nav>
</body>
</html>