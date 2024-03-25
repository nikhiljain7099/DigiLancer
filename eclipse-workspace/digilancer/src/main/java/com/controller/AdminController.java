package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.dao.ClientDao;
import com.model.AdminModel;
import com.model.ClientModel;
import com.util.DBUtil;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("Login")) {
		    AdminModel model = new AdminModel();
		    model.setEmail(request.getParameter("email"));
		    model.setPassword(request.getParameter("password"));
		    AdminModel amodel = new AdminDao().getLogin(model);
		    if(amodel != null) {
		        HttpSession session = request.getSession(true);
		        session.setMaxInactiveInterval(7200);
		        session.setAttribute("amodel", amodel); // Set admin model to session attribute
		        response.sendRedirect("http://localhost:8080/digilancer/admin/index.jsp?adminId=" + amodel.getAdminId());
		    } else {
		    	response.sendRedirect("http://localhost:8080/digilancer/admin/login.jsp?msg=invalid");
		    }
		}
		if(action.equals("Delete")) {
			if(request.getParameter("clientid") != null) {
				int clientid=Integer.parseInt(request.getParameter("clientid"));
				boolean success = new AdminDao().deleteRecord(clientid);
				if (success) {
			        response.sendRedirect("admin/managebusiness.jsp");
			    } else {
			        response.sendRedirect("admin/managebusiness.jsp");
			    }
			}
			else{
				int freelancerid=Integer.parseInt(request.getParameter("freelancerid"));
				boolean success = new AdminDao().deleteRecordFreelancer(freelancerid);
				if (success) {
			        response.sendRedirect("admin/managefreelancers.jsp");
			    } else {
			        response.sendRedirect("admin/managefreelancers.jsp");
			    }
			}
		}
		if(action.equals("Add")) {
			AdminModel amodel=new AdminModel();
			amodel.setName(request.getParameter("name"));
			amodel.setEmail(request.getParameter("email"));
			amodel.setPassword(request.getParameter("password"));
			try {
				int x=new AdminDao().insertAdmin(amodel);
				if(x>0)
				{
					response.sendRedirect("admin/manageadmin.jsp");
				}
				else
				{
					response.sendRedirect("admin/manageadmin.jsp");
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
		if (action.equals("Remove")) {
            int adminId = Integer.parseInt(request.getParameter("adminid"));
            System.out.println(request.getParameter("adminid")+"HELlo");
            // Database connection
            Connection connection = null;
            PreparedStatement statement = null;
            
            try {
                // Establishing connection
                connection = new DBUtil().getConnectionData();
                
                // Deleting admin
                String query = "DELETE FROM admin WHERE adminid = ?";
                statement = connection.prepareStatement(query);
                statement.setInt(1, adminId);
                
                // Execute the delete statement
                int rowsDeleted = statement.executeUpdate();
                if (rowsDeleted > 0) {
                    System.out.println("Admin deleted successfully!");
                    response.sendRedirect(request.getContextPath() + "/admin/manageadmin.jsp");
                } else {
                    System.out.println("Admin deletion failed!");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}

}
