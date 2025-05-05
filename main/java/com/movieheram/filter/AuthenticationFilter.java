package com.movieheram.filter;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
=======

>>>>>>> recovered-changes
import com.movieheram.model.UserModel;
import com.movieheram.util.CookieUtil;
import com.movieheram.util.SessionUtil;

@WebFilter(asyncSupported = true, urlPatterns = "/*")
public class AuthenticationFilter implements Filter {

<<<<<<< HEAD
    private static final String[] PUBLIC_PAGES = { "/login", "/signUp", "/", "/home", "/resources","/getStarted" };
=======
    private static final String[] PUBLIC_PAGES = {
            "/login", "/signUp", "/getStarted", "/termsCondition", "/about", "/membership", "/profile", "/updateProfile", "/changePassword","/favorite"
    };
>>>>>>> recovered-changes

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
<<<<<<< HEAD
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();

        // Let static resources pass through
        if (uri.contains("/resources/") || uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".png") || uri.endsWith(".jpg")) {
=======

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();

        // ✅ Allow static resources
        if (uri.contains("/resources/") || uri.endsWith(".css") || uri.endsWith(".js") ||
            uri.endsWith(".png") || uri.endsWith(".jpg") || uri.endsWith(".jpeg") ||
            uri.endsWith(".webp") || uri.endsWith(".mp4")) {
>>>>>>> recovered-changes
            chain.doFilter(request, response);
            return;
        }

<<<<<<< HEAD
        // Get user from session
        UserModel user = (UserModel) SessionUtil.getAttribute(req, "user");
        String role = CookieUtil.getCookie(req, "role") != null ? CookieUtil.getCookie(req, "role").getValue() : null;

        boolean isLoggedIn = user != null;

        // Check for public pages
        for (String page : PUBLIC_PAGES) {
            if (uri.startsWith(contextPath + page)) {
=======
        // ✅ Allow explicitly public pages
        for (String page : PUBLIC_PAGES) {
            if (uri.equals(contextPath + page) || uri.equals(contextPath + page + "/")) {
>>>>>>> recovered-changes
                chain.doFilter(request, response);
                return;
            }
        }

<<<<<<< HEAD
        if (isLoggedIn) {
            if ("admin".equals(role)) {
                // Admin can access everything for now (extend this if needed)
                chain.doFilter(request, response);
            } else {
                // Regular user (block access to admin-only pages)
                if (uri.contains("/admin")) {
                    res.sendRedirect(contextPath + "/home");
                } else {
                    chain.doFilter(request, response);
                }
            }
        } else {
            // Not logged in → redirect to login for all non-public pages
            res.sendRedirect(contextPath + "/getStarted");
=======
        // ✅ Check login status first
        UserModel user = (UserModel) SessionUtil.getAttribute(req, "user");
        boolean isLoggedIn = user != null;

        if (!isLoggedIn) {
            res.sendRedirect(contextPath + "/getStarted");
            return;
        }

        // ✅ User is logged in, now check role-based access
        String role = CookieUtil.getCookie(req, "role") != null ? CookieUtil.getCookie(req, "role").getValue() : null;
        boolean isAdmin = "admin".equalsIgnoreCase(role);
        boolean isAllowed = false; // Flag to track if the user is allowed to proceed

        if (isAdmin) {
            // Admin trying to access user-only pages
            if (uri.startsWith(contextPath + "/home") ||
                uri.startsWith(contextPath + "/profile") ||
                uri.startsWith(contextPath + "/favorite") ||
                uri.startsWith(contextPath + "/movie") ||
                uri.startsWith(contextPath + "/series") ||
                uri.startsWith(contextPath + "/cartoon") ||
                uri.startsWith(contextPath + "/termsCondition") ||
                uri.startsWith(contextPath + "/about")) {
                res.sendRedirect(contextPath + "/dashboard");
                return;
            }
            // Allow access to admin pages
            if (uri.startsWith(contextPath + "/dashboard") ||
                uri.startsWith(contextPath + "/deleteUser") ||
            	uri.startsWith(contextPath + "/logout") ||
            	uri.contains("/admin")) {
                isAllowed = true;
            } else {
                // If an admin tries to access any other page not explicitly allowed, redirect to dashboard
                res.sendRedirect(contextPath + "/dashboard");
                return;
            }

        } else { // Normal user
            // User trying to access admin-only pages
            if (uri.startsWith(contextPath + "/dashboard") || uri.contains("/admin")) {
                res.sendRedirect(contextPath + "/home");
                return;
            }
            // Allow access to user pages
            if (uri.startsWith(contextPath + "/home") ||
                uri.startsWith(contextPath + "/profile") ||
                uri.startsWith(contextPath + "/favorite") ||
                uri.startsWith(contextPath + "/logout") ||
                uri.startsWith(contextPath + "/movie") ||
                uri.startsWith(contextPath + "/series") ||
                uri.startsWith(contextPath + "/cartoon") ||
                uri.startsWith(contextPath + "/termsCondition") ||
                uri.startsWith(contextPath + "/about")) {
                isAllowed = true;
            } else {
                // If a user tries to access any other page not explicitly allowed, redirect to home
                res.sendRedirect(contextPath + "/home");
                return;
            }
        }

        // ✅ Proceed with the request if the user is allowed
        if (isAllowed) {
            chain.doFilter(request, response);
>>>>>>> recovered-changes
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
<<<<<<< HEAD
        // Optional: init logic
=======
        // Optional init logic
>>>>>>> recovered-changes
    }

    @Override
    public void destroy() {
<<<<<<< HEAD
        // Optional: cleanup logic
=======
        // Optional cleanup logic
>>>>>>> recovered-changes
    }
}