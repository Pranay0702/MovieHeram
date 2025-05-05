package com.movieheram.controller;

import com.movieheram.model.MovieModel;
import com.movieheram.service.FavoriteService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.movieheram.util.SessionUtil;

@WebServlet(asyncSupported = true, urlPatterns = { "/favorite" })
public class FavoriteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FavoriteService favoriteService;

    public void init() throws ServletException {
        favoriteService = new FavoriteService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); 
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Integer userIdObj = (Integer) session.getAttribute("userId");

    	int userId = userIdObj.intValue();
        // Get favorite movies from service
        List<MovieModel> favoriteMovies = favoriteService.getFavoriteMovies(userId);
        request.setAttribute("movieList", favoriteMovies); // reuse movieList for JSP

        request.getRequestDispatcher("/WEB-INF/pages/favorite.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = (int) request.getSession().getAttribute("userId");
        int movieId = Integer.parseInt(request.getParameter("movieId"));

        boolean isFavorited = favoriteService.toggleFavorite(userId, movieId);
        response.getWriter().write(isFavorited ? "added" : "removed");
    }
}