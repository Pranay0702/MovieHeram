package com.movieheram.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.movieheram.model.UserModel;
import com.movieheram.service.SignUpService;
import com.movieheram.util.SessionUtil;
/**
 * @author Najib Thapa
 */
@WebServlet(asyncSupported = true, urlPatterns = {"/membership"})
public class MembershipController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // This method will handle GET and POST requests.
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Here you can process the form data (if needed) and then forward the request to membership.jsp
    	String membershipIdStr = request.getParameter("membershipId");

    	if (membershipIdStr != null) {
    	    // This is a form submission
    	    int membershipId = Integer.parseInt(membershipIdStr);
    	    Integer userId = SessionUtil.getRegisteredUserId(request);    	    
    	    if (userId == null) {
                response.sendRedirect("register?error=sessionExpired");
                return;
            }
    	    
    	    SignUpService userService = new SignUpService();
    	    if (userService.updateMembership(userId, membershipId)) {
    	    	 UserModel updatedUser = userService.getUserById(userId);
    	    	 SessionUtil.setAttribute(request, "user", updatedUser);
    	        response.sendRedirect("home");
    	    } else {
    	        response.sendRedirect("membership?error=updateFailed");
    	    }
    	} else {
    	    // This is just rendering the membership page
    	    request.getRequestDispatcher("/WEB-INF/pages/membership.jsp").forward(request, response);
    	}    }

    // Handling GET request for loading the membership page
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/membership.jsp").forward(request, response);
    }
    
}