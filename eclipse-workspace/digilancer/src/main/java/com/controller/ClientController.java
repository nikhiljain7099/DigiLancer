package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.ClientDao;
import com.model.ClientModel;
import com.util.DBUtil;


@WebServlet("/ClientController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB
public class ClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ClientController() {
        super();
    }
    
    private String extractFileName(Part file) {
        String cd = file.getHeader("content-disposition");
        String[] items = cd.split(";");
        for (String string : items) {
            if(string.trim().startsWith("filename")) {
                int index = string.indexOf("=");
                String filename = string.substring(index + 2, string.length() - 1);
                return filename;
            }
        }
        return cd;
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("Register")) {
			String savePath = "/Users/nikhiljain/eclipse-workspace/digilancer/src/main/webapp/uploadedimages/clientprofile";
			File fileSaveDir=new File(savePath);
			if(!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			Part file = request.getPart("profileimage");
			String fileName = extractFileName(file);
			if (!fileName.toLowerCase().endsWith(".jpg")) {
				request.setAttribute("msg", "Invalid file format. Please upload a file with '.jpg' extension.");
				request.getRequestDispatcher("buyer/registration.jsp").forward(request, response);
	            return;
	        }
			file.write(savePath+File.separator+fileName);
			
			ClientModel rmodel=new ClientModel();
			rmodel.setFirstname(request.getParameter("firstname"));
			rmodel.setLastname(request.getParameter("lastname"));
			rmodel.setEmail(request.getParameter("email"));
			rmodel.setPassword(request.getParameter("password"));
			rmodel.setCompanyName(request.getParameter("companyname"));
			rmodel.setAbout(request.getParameter("about"));
			rmodel.setWebsite(request.getParameter("website"));
			rmodel.setProfileImage(fileName);
			try {
				int x=new ClientDao().insertClient(rmodel);
				if(x>0)
				{
					request.setAttribute("msg", "success");
					request.getRequestDispatcher("buyer/login.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("msg", "Website or Email are already registered");
					request.getRequestDispatcher("buyer/registration.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
			
		}
		else if(action.equals("Login")) {
			ClientModel model = new ClientModel();
			model.setEmail(request.getParameter("email"));
			model.setPassword(request.getParameter("password"));
			ClientModel lmodel = new ClientDao().getLogin(model);
			if(lmodel!=null) {
				HttpSession session = request.getSession(true);
				session.setMaxInactiveInterval(7200);
				session.setAttribute("cmodel", lmodel);
				response.sendRedirect("http://localhost:8080/digilancer/buyer/dashboard/dashboard.jsp?userid="+lmodel.getclientId()+"&action1=myprojects");
			}
			else {
				request.setAttribute("msg", "invalid");
				request.getRequestDispatcher("buyer/login.jsp").forward(request, response);
			}
		}
		else if(action.equals("Logout")) {
			HttpSession session = request.getSession();
			ClientModel cmodel = (ClientModel) session.getAttribute("cmodel"); 
		    if(cmodel == null){
		        // Redirect to login page if session attribute "cmodel" is not found
		        request.getRequestDispatcher("login.jsp").forward(request, response);
		    } else {
		        // If the session attribute "cmodel" is found, invalidate the session
		        session.invalidate();
		        // Redirect to login page or any other page after logout
		        request.getRequestDispatcher("buyer/login.jsp").forward(request, response);
		    }
		}
	}

}
