package com.movieheram.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

import com.movieheram.model.MovieModel;
import com.movieheram.service.MovieService;

/**
 * Servlet implementation class MovieController
 */
@WebServlet(asyncSupported = true, name = "Movie", urlPatterns = { "/movie" })
public class MovieController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

    	MovieService movieService = new MovieService();
    	List<MovieModel> movieList = movieService.getMovies();
    	String genre = request.getParameter("genre");
    	String year = request.getParameter("year");
    	if ((genre == null || genre.isEmpty()) && (year == null || year.isEmpty())) {
    	    movieList = movieService.getMovies();
    	} else {
    	    movieList = movieService.getMovieFiltered(genre, year);
    	}
    	request.setAttribute("movieList", movieList);
        request.getRequestDispatcher("/WEB-INF/pages/movie.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

