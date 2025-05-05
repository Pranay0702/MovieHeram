package com.movieheram.controller.admin;

import jakarta.servlet.ServletException;
<<<<<<< HEAD
=======
import jakarta.servlet.annotation.MultipartConfig;
>>>>>>> recovered-changes
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

<<<<<<< HEAD
/**
 * Servlet implementation class DashboardController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/dashboard" })
=======
import com.movieheram.service.DashboardService;

/**
 * Servlet implementation class DashboardController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/dashboard"})
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024,  // 1MB
	    maxFileSize = 1024 * 1024 * 100,  // 100MB
	    maxRequestSize = 1024 * 1024 * 150 // 150MB
	)
>>>>>>> recovered-changes
public class DashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Optional: Check if admin is logged in
	    Object userObj = request.getSession().getAttribute("user");

	    if (userObj == null) {
	        response.sendRedirect("login");
	        return;
	    }

	    // Forward to the admin dashboard JSP
	    
	    DashboardService dashboardService = new DashboardService();

	    String action = request.getParameter("action");

	    if ("deleteUser".equals(action)) {
	    	try {
	            int deleteUserId = Integer.parseInt(request.getParameter("id"));
	            dashboardService.deleteUser(deleteUserId);
	        } catch (NumberFormatException | NullPointerException e) {
	            System.err.println("Invalid or missing user ID for deletion");
	        }
	    }
	    
	    if ("addMovie".equals(action)) {
	        boolean added = DashboardService.addMovie(request);

	        if (added) {
	            request.setAttribute("message", "Movie added successfully!");
	        } else {
	            request.setAttribute("message", "Failed to add movie.");
	        }
	    }
	    
	    if ("deleteMovie".equals(action)) {

	    	try {
	            int deleteMovieId = Integer.parseInt(request.getParameter("movieID"));
	            dashboardService.deleteMovie(deleteMovieId);
	        } catch (NumberFormatException | NullPointerException e) {
	            System.err.println("Invalid or missing movie ID for deletion");
	        }
	    }

	    
	    int userCount = dashboardService.getUserCount();
	    int movieCount = dashboardService.getMovieCount();
	    int seriesCount = dashboardService.getSeriesCount();
	    int animeCount = dashboardService.getAnimeCount();
	    
	    request.setAttribute("users", dashboardService.getAllUsers());
	    request.setAttribute("movies", dashboardService.getAllMovies());
	    request.setAttribute("userCount", userCount);
	    request.setAttribute("movieCount", movieCount);
	    request.setAttribute("seriesCount", seriesCount);
	    request.setAttribute("animeCount", animeCount);
	    request.getRequestDispatcher("/WEB-INF/pages/dashboard.jsp").forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
