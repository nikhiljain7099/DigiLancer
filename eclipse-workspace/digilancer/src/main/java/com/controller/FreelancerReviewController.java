package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.ClientModel;
import com.util.DBUtil;


@WebServlet("/FreelancerReviewController")
public class FreelancerReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FreelancerReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection cn = new DBUtil().getConnectionData();
		String query = "insert into freelancer_review(title,description,freelancerid,clientid) values(?,?,?,?)";
	    PreparedStatement st;
		try {
			st = cn.prepareStatement(query);
			st.setString(1, request.getParameter("title"));
			st.setString(2, request.getParameter("description"));
			st.setInt(3, Integer.parseInt(request.getParameter("freelancerid")));
			st.setInt(4, Integer.parseInt(request.getParameter("clientid")));
		    int x = st.executeUpdate();
		    if(x>0) {
		    	HttpSession session = request.getSession(true);
		    	ClientModel cmodel = (ClientModel) session.getAttribute("cmodel"); 
		    	response.sendRedirect("buyer/dashboard/dashboard.jsp?userid="+cmodel.getclientId()+"&action1=myprojects");
		    }
		    else {
		    	response.sendRedirect("buyer/dashboard/dashboard.jsp");
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	}

}
