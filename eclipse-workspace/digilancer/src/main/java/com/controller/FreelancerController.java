package com.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.ClientDao;
import com.dao.FreelancerDao;
import com.model.ClientModel;
import com.model.FreelancerModel;

@WebServlet("/FreelancerController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB
public class FreelancerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FreelancerController() {
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
			String savePath = "/Users/nikhiljain/eclipse-workspace/digilancer/src/main/webapp/uploadedimages/freelancerprofile";
			File fileSaveDir=new File(savePath);
			if(!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			Part file = request.getPart("profileimage");
			String fileName = extractFileName(file);
			if (!fileName.toLowerCase().endsWith(".jpg")) {
				request.setAttribute("msg", "Invalid file format. Please upload a file with '.jpg' extension.");
				request.getRequestDispatcher("seller/registration.jsp").forward(request, response);
	            return;
	        }
			file.write(savePath+File.separator+fileName);
			System.out.println(savePath+File.separator+fileName);
			FreelancerModel rmodel=new FreelancerModel();
			rmodel.setFirstName(request.getParameter("firstname"));
			rmodel.setLastName(request.getParameter("lastname"));
			rmodel.setEmail(request.getParameter("email"));
			rmodel.setPassword(request.getParameter("password"));
			rmodel.setBio(request.getParameter("bio"));
			String[] selectedSkills = request.getParameterValues("skill");
			String skills="";
	        if (selectedSkills != null) {
	            for (String skill : selectedSkills) {
	                System.out.println("Selected Skill: " + skill);
	                if(skills.equals("")) {
	                	skills=skill;
	                }
	                else {
	                	skills=skills+", "+skill;
	                }
	            }
	        }
	        if(skills.equals("")) {
	        	request.setAttribute("msg", "Select atleast one skill");
				request.getRequestDispatcher("seller/registration.jsp").forward(request, response);
				return;
	        }
	        System.out.println(skills);
			rmodel.setSkills(skills);
			rmodel.setProfilePicture(fileName);
			rmodel.setUgprogramme(request.getParameter("ugprogramme"));
			rmodel.setUguniversity(request.getParameter("uguniversity"));
			rmodel.setUgfrom(Integer.parseInt(request.getParameter("ugfrom")));
			rmodel.setUgto(Integer.parseInt(request.getParameter("ugto")));
			rmodel.setPgprogramme(request.getParameter("pgprogramme"));
			rmodel.setPguniversity(request.getParameter("pguniversity"));
			rmodel.setPgfrom(Integer.parseInt(request.getParameter("pgfrom")));
			rmodel.setPgto(Integer.parseInt(request.getParameter("pgto")));
			rmodel.setPortfolioplatform(request.getParameter("portfolioplatform"));
			rmodel.setPortfoliolink(request.getParameter("portfoliolink"));
			
			try {
				int x=new FreelancerDao().insertFreelancer(rmodel);
				if(x>0)
				{
					request.setAttribute("msg", "success");
					request.getRequestDispatcher("seller/login.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("msg", "Email is already registered");
					request.getRequestDispatcher("seller/registration.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
			
		}
		else if(action.equals("Login")) {
			FreelancerModel model = new FreelancerModel();
			model.setEmail(request.getParameter("email"));
			model.setPassword(request.getParameter("password"));
			FreelancerModel lmodel = new FreelancerDao().getLogin(model);
			if(lmodel!=null) {
				HttpSession session = request.getSession(true);
				session.setMaxInactiveInterval(7200);
				session.setAttribute("fmodel", lmodel);
				response.sendRedirect("http://localhost:8080/digilancer/seller/dashboard/dashboard.jsp");
			}
			else {
				request.setAttribute("msg", "invalid");
				request.getRequestDispatcher("seller/login.jsp").forward(request, response);
			}
		}
		else if(action.equals("Shortlist")) {
			FreelancerModel model = new FreelancerModel();
			model.setFreelancerId(Integer.parseInt(request.getParameter("freelancerId")));
			try {
				int x=new FreelancerDao().shortlistFreelancer(model);
				System.out.println(x);
				if (x > 0) {
					response.sendRedirect("buyer/dashboard/dashboard.jsp?projectid="+request.getParameter("projectid"));
		        } else {
		            response.sendRedirect("error.jsp"); // Redirect to an error page
		        }
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
		else if(action.equals("Assign Project")) {
			System.out.println(request.getParameter("freelancerid"));
			System.out.println(request.getParameter("projectid"));
		}
		
	}

}
