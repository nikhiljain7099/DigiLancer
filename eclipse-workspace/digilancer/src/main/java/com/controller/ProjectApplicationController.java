package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ProjectApplicationDao;
import com.dao.ProjectDao;
import com.model.ClientModel;
import com.model.ProjectApplicationModel;
import com.model.ProjectModel;

@WebServlet("/ProjectApplicationController")
public class ProjectApplicationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ProjectApplicationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("Submit Application")) {
			System.out.println(request.getParameter("projectid"));
			ProjectApplicationModel pmodel=new ProjectApplicationModel();
			pmodel.setProjectId(Integer.parseInt(request.getParameter("projectid")));
			pmodel.setFreelancerId(Integer.parseInt(request.getParameter("freelancerid")));
			pmodel.setAmount(Integer.parseInt(request.getParameter("amount")));
			pmodel.setExpectedCompletionTime(Integer.parseInt(request.getParameter("expectedcompletiontime")));
			pmodel.setProposal(request.getParameter("proposal"));
			try {
				int x=new ProjectApplicationDao().insertProjectApplication(pmodel);
				if(x>0)
				{
					ProjectModel projectmodel=new ProjectModel();
					projectmodel.setProjectId(Integer.parseInt(request.getParameter("projectid")));
					try {
						x=0;
						x=new ProjectDao().applyProject(projectmodel);
						if(x>0)
						{
							response.sendRedirect("seller/dashboard/dashboard.jsp");
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
				else
				{
					request.setAttribute("msg", "failed");
					request.getRequestDispatcher("seller/apply.jsp").forward(request, response);
				}
			}
			catch (Exception e) {
			    e.printStackTrace();
			}
		}
	}

}
