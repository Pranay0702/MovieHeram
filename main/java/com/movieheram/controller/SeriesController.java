package com.movieheram.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
<<<<<<< HEAD
=======
import java.util.List;

import com.movieheram.model.MovieModel;
import com.movieheram.service.MovieService;
>>>>>>> recovered-changes

/**
 * Servlet implementation class SeriesController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/series" })
public class SeriesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeriesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
<<<<<<< HEAD
=======
		MovieService movieService = new MovieService();
    	List<MovieModel> movieList = movieService.getSeries();
    	String genre = request.getParameter("genre");
    	String year = request.getParameter("year");
    	if ((genre == null || genre.isEmpty()) && (year == null || year.isEmpty())) {
    	    movieList = movieService.getSeries();
    	} else {
    	    movieList = movieService.getSeriesFiltered(genre, year);
    	}
    	
    	request.setAttribute("movieList", movieList);
>>>>>>> recovered-changes
	    request.getRequestDispatcher("/WEB-INF/pages/series.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
