package com.movieheram.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletException; 
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.movieheram.model.MovieModel;
import com.movieheram.service.MovieService;
import com.movieheram.service.FavoriteService;


/**
 * @author Najib Thapa
 */
@WebServlet(asyncSupported = true, urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // This method will handle GET and POST requests.
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // If the logout button is clicked, redirect to the login page
        String action = request.getParameter("action");
        if ("logout".equals(action)) {
            // Here you would remove session data (user details), if needed
            response.sendRedirect("login"); // Redirect to login page
        } else {
            request.getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	MovieService movieService = new MovieService();
    	FavoriteService favoriteService = new FavoriteService();
    	List<MovieModel> movieList = movieService.getAllMovies();
    	String genre = request.getParameter("genre");
    	String year = request.getParameter("year");
    	if ((genre == null || genre.isEmpty()) && (year == null || year.isEmpty())) {
    	    movieList = movieService.getAllMovies();
    	} else {
    	    movieList = movieService.getMoviesFiltered(genre, year);
    	}
    	
    	// Get the user ID from the session
        Integer userId = (Integer) request.getSession().getAttribute("User_ID");
        if (userId != null) {
            for (MovieModel movie : movieList) {
                boolean isFav = favoriteService.isFavorite(userId, movie.getMovieID());
                movie.setIsFav(isFav);  
            }
        }

    	
    	request.setAttribute("movieList", movieList);
        request.getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(request, response);
    }
}