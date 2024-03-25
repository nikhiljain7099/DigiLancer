package com.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.BlogDao;
import com.model.BlogModel;
import com.util.DBUtil;


@WebServlet("/DLCController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB
public class DLCController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DLCController() {
        super();
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get the form data
        String title = request.getParameter("title");
        String blogContent = request.getParameter("blog-content");
        
        // Handle file upload for title image
        String savePath = "/Users/nikhiljain/eclipse-workspace/digilancer/src/main/webapp/uploadedimages/dlc"; // Change this to your desired save path
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        Part filePart = request.getPart("title-image");
        String fileName = getFileName(filePart);
        String filePath = savePath + File.separator + fileName;
        filePart.write(filePath);
        
        // Insert the data into the database
        try {
            // Your database insertion logic here
            // For example:
            BlogModel blogModel = new BlogModel();
            blogModel.setTitle(title);
            blogModel.setContent(blogContent);
            blogModel.setTitleImage(fileName); // Storing file path in the database
            blogModel.setUser(request.getParameter("user")); // Assuming user is retrieved from the request
            int result = new BlogDao().insertBlog(blogModel); // Inserting blog data into the database
            
            if (result > 0) {
                response.sendRedirect("admin/managedlc.jsp");
            } else {
            	System.out.println("admin/managedlc.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exception
        }
	}

}
