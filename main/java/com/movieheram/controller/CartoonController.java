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

/**
 * Servlet implementation class CartoonController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/cartoon" })
public class CartoonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartoonController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		MovieService movieService = new MovieService();
    	List<MovieModel> movieList = movieService.getAnime();
    	String genre = request.getParameter("genre");
    	String year = request.getParameter("year");
    	if ((genre == null || genre.isEmpty()) && (year == null || year.isEmpty())) {
    	    movieList = movieService.getAnime();
    	} else {
    	    movieList = movieService.getAnimeFiltered(genre, year);
    	}
    	
    	request.setAttribute("movieList", movieList);
	    request.getRequestDispatcher("/WEB-INF/pages/cartoon.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
