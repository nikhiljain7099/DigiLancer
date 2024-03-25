package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ClientDao;
import com.dao.ProjectDao;
import com.model.ClientModel;
import com.model.ProjectApplicationModel;
import com.model.ProjectModel;
import com.util.DBUtil;

@WebServlet("/ProjectController")
public class ProjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ProjectController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println("Entered 1"+action);
		if(action.equals("showcategory")) {
			String category = request.getParameter("category");
			HttpSession session = request.getSession();
			session.setAttribute("category", category);
			response.sendRedirect("buyer/postproject.jsp");
		}
		if(action.equals("postproject")) {
			ProjectModel pmodel=new ProjectModel();
			pmodel.setProjectName(request.getParameter("projectname"));
			HttpSession session1 = request.getSession();
			String category = session1.getAttribute("category").toString();
			pmodel.setCategory(category);
			pmodel.setDescription(request.getParameter("pdescription"));
			pmodel.setMinAmount(Integer.parseInt(request.getParameter("min")));
			pmodel.setMaxAmount(Integer.parseInt(request.getParameter("max")));
			pmodel.setDeadline(Integer.parseInt(request.getParameter("deadline")));
			HttpSession session = request.getSession(false);
			ClientModel cmodel = (ClientModel) session.getAttribute("cmodel");
			pmodel.setClientId(cmodel.getclientId());
			try {
				int x=new ProjectDao().insertProject(pmodel);
				if(x>0)
				{
					System.out.println("Redirected");
					response.sendRedirect("buyer/congratulations.jsp");
				}
				else
				{
					request.setAttribute("msg", "failed");
					request.getRequestDispatcher("buyer/registration.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
		else if(action.equals("Update")) {
			ProjectModel pmodel=new ProjectModel();
			pmodel.setProjectName(request.getParameter("projectname"));
			pmodel.setCategory(request.getParameter("category"));
			pmodel.setDescription(request.getParameter("description"));
			pmodel.setMinAmount(Integer.parseInt(request.getParameter("min")));
			pmodel.setMaxAmount(Integer.parseInt(request.getParameter("max")));
			HttpSession session = request.getSession(false);
			ClientModel cmodel = (ClientModel) session.getAttribute("cmodel");
			pmodel.setClientId(cmodel.getclientId());
			pmodel.setProjectId(Integer.parseInt(request.getParameter("projectid")));
			try {
				int x=new ProjectDao().editProject(pmodel);
				if(x>0)
				{
					response.sendRedirect("buyer/dashboard/dashboard.jsp?msg=edited");
				}
				else
				{
					request.setAttribute("msg", "failed");
					request.getRequestDispatcher("buyer/registration.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
		else if(action.equals("Delete")) {
			ProjectModel pmodel=new ProjectModel();
			pmodel.setProjectId(Integer.parseInt(request.getParameter("projectid")));
			try {
				int x=new ProjectDao().deleteProject(pmodel);
				if(x>0)
				{
					response.sendRedirect("buyer/dashboard/dashboard.jsp?msg=deleted");
				}
				else
				{
					request.setAttribute("msg", "failed");
					request.getRequestDispatcher("buyer/registration.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
		else if(action.equals("Save Project")) {
			ProjectModel pmodel=new ProjectModel();
			pmodel.setProjectId(Integer.parseInt(request.getParameter("projectid")));
			try {
				int x=new ProjectDao().saveProject(pmodel);
				if(x>0)
				{
					response.sendRedirect("seller/projects.jsp");
				}
				else
				{
					request.getRequestDispatcher("seller/projects.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
		else if(action.equals("Assign Project")) {
			int freelancerid=Integer.parseInt(request.getParameter("freelancerid"));
			int projectid=Integer.parseInt(request.getParameter("projectid"));
			try {
		        // Establishing database connection
		        Connection conn = new DBUtil().getConnectionData();
		        
		        // Creating prepared statement to update the status
		        String query = "UPDATE project SET status = 'assign',freelancerid=? WHERE projectid = ?";
		        PreparedStatement pstmt = conn.prepareStatement(query);
		        pstmt.setInt(1, freelancerid);
		        pstmt.setInt(2, projectid);
		        
		        // Executing the update query
		        int rowsAffected = pstmt.executeUpdate();
		        
		        // Closing the prepared statement and connection
		        pstmt.close();
		        conn.close();
		        
		        if(rowsAffected > 0) {
		            // Status updated successfully
		            response.sendRedirect("buyer/dashboard/dashboard.jsp?projectid="+projectid);
		        } else {
		            // Failed to update status
		            response.sendRedirect("buyer/dashboard/dashboard.jsp?msg=status_update_failed");
		        }
		    } catch(SQLException e) {
		        e.printStackTrace();
		    }
		}
		else if(action.equals("Project Completed")) {
			int freelancerid=Integer.parseInt(request.getParameter("freelancerid"));
			int projectid=Integer.parseInt(request.getParameter("projectid"));
			try {
		        // Establishing database connection
		        Connection conn = new DBUtil().getConnectionData();
		        
		        // Creating prepared statement to update the status
		        String query = "UPDATE project SET status = 'completed' WHERE projectid = ?";
		        PreparedStatement pstmt = conn.prepareStatement(query);
		        pstmt.setInt(1, projectid);
		        
		        // Executing the update query
		        int rowsAffected = pstmt.executeUpdate();
		        
		        // Closing the prepared statement and connection
		        pstmt.close();
		        conn.close();
		        
		        if(rowsAffected > 0) {
		            // Status updated successfully
		            response.sendRedirect("buyer/dashboard/submitreview.jsp?projectid="+projectid+"&freelancerid="+freelancerid);
		        } else {
		            // Failed to update status
		            response.sendRedirect("buyer/dashboard/dashboard.jsp?msg=status_update_failed");
		        }
		    } catch(SQLException e) {
		        e.printStackTrace();
		    }
		}
		else {
			System.out.println(action);
		}
	}

}
