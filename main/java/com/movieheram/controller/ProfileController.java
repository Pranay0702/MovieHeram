package com.movieheram.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletException; 
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

import com.movieheram.util.ImageUtil;
import com.movieheram.model.UserModel;
import com.movieheram.service.UpdateService;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet(asyncSupported = true, name = "Profile", urlPatterns = { "/profile","/updateProfile", "/changePassword" })
@MultipartConfig
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private final UpdateService userService = new UpdateService();
	    private final ImageUtil imageUtil = new ImageUtil();

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	 UserModel sessionUser = (UserModel) request.getSession().getAttribute("user");

	    	    if (sessionUser == null) {
	    	        response.sendRedirect("login");
	    	        return;
	    	    }
	    	   

	    	    request.setAttribute("user", sessionUser); // Optional if JSP uses EL for user
	    	    request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String path = request.getServletPath();
	        UserModel sessionUser = (UserModel) request.getSession().getAttribute("user");

	        if (sessionUser == null) {
	            response.sendRedirect("login");
	            return;
	        }

	        switch (path) {
	            case "/updateProfile":
	                Part filePart = request.getPart("newImage");
	                String newName = request.getParameter("newName");
	                
	                if (newName != null && !newName.trim().isEmpty()) {
	                    userService.updateName(sessionUser.getId(), newName);
	                    sessionUser.setName(newName); // update session object too
	                }

	                if (filePart != null && filePart.getSize() > 0) {
	                    String imageName = imageUtil.getImageNameFromPart(filePart);
	                    // This gets the absolute path of the webapp root
	                    String rootPath = getServletContext().getRealPath("/");
	                    
	                    // Save the image to /webapp/user/
	                    imageUtil.uploadImage(filePart, rootPath, "resources/images/user");
	                    
	                    String imageName = imageUtil.getImageNameFromPart(filePart,"user");
	                    // This gets the absolute path of the webapp root
	                    String rootPath = "";                   
	                    // Save the image to /webapp/user/
	                    imageUtil.uploadImage(filePart, "user");	                    
	                    // Update in DB and session
	                    userService.updateImage(sessionUser.getId(), imageName);
	                    sessionUser.setImageUrl(imageName);
	                    request.getSession().setAttribute("user", sessionUser);
	                }
	                break;

	            case "/changePassword":
	                String currentPwd = request.getParameter("currentPassword");
	                String newPwd = request.getParameter("newPassword");

	                if (userService.changePassword(sessionUser.getEmail(), currentPwd, newPwd)) {
	                    request.setAttribute("message", "Password changed successfully!");
	                } else {
	                    request.setAttribute("error", "Incorrect current password.");
	                }
	                break;
	        }

	        request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);
	    }
	}
	