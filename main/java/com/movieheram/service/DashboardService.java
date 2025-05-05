package com.movieheram.service;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.movieheram.config.DbConfig;
import com.movieheram.model.MembershipModel;
import com.movieheram.model.MovieModel;
import com.movieheram.model.UserModel;
import com.movieheram.util.ImageUtil;
import com.movieheram.util.VideoUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;


public class DashboardService{
	
	private static Connection dbConn;
    private boolean isConnectionError = false;

    public DashboardService() {
        try {
            dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            isConnectionError = true;
        }
    }
    
    public int getUserCount() {
        if (isConnectionError) return -1;
        String sql = "SELECT COUNT(*) FROM user WHERE Is_Admin = 0"; // Replace 'users' with your actual user table name
        try (PreparedStatement stmt = dbConn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int getMovieCount() {
        if (isConnectionError) return -1;
        String sql = "SELECT COUNT(*) FROM movie WHERE Type = 'Movie' "; 
        try (PreparedStatement stmt = dbConn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
    
    public int getSeriesCount() {
        if (isConnectionError) return -1;
        String sql = "SELECT COUNT(*) FROM movie WHERE Type = 'Series' "; 
        try (PreparedStatement stmt = dbConn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
    
    public int getAnimeCount() {
        if (isConnectionError) return -1;
        String sql = "SELECT COUNT(*) FROM movie WHERE Type = 'Anime' "; 
        try (PreparedStatement stmt = dbConn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
    
    public List<UserModel> getAllUsers() {
        List<UserModel> users = new ArrayList<>();
        String sql = "SELECT u.User_ID, u.Name, u.Email, u.Image, u.Created_Date, m.Membership_Type AS Membership_Type " +
                     "FROM user u LEFT JOIN membership m ON u.Membership_ID = m.Membership_ID WHERE u.Is_Admin = 0";

        try (PreparedStatement stmt = dbConn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                UserModel user = new UserModel();
                user.setId(rs.getInt("User_ID"));
                user.setName(rs.getString("Name"));
                user.setEmail(rs.getString("Email"));
                user.setImageUrl(rs.getString("Image"));
                user.setCreatedDate(rs.getDate("Created_Date"));

                // Wrap the membership_type string into a MembershipModel
                String membershipType = rs.getString("Membership_Type");
                if (membershipType != null) {
                    MembershipModel membership = new MembershipModel();
                    membership.setMembershipType(membershipType);
                    user.setMembership(membership);
                }

                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public boolean deleteUser(int userId) {
        String sql = "DELETE FROM user WHERE User_ID = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static boolean addMovie(HttpServletRequest request) {
        boolean success = false;

        try {
            // Get form inputs
            String title = request.getParameter("title");
            String genre = request.getParameter("genre");
            String type = request.getParameter("type");
            int releaseYear = Integer.parseInt(request.getParameter("releaseYear"));

            // Get uploaded files
            Part thumbnailPart = request.getPart("thumbnailFile");
            String thumbnailUrl = request.getParameter("thumbnailUrl");
            Part videoPart = request.getPart("video");
            String thumbnail = "default.png";

            // Save files to resources/images/movie
            if (thumbnailPart != null && thumbnailPart.getSize() > 0) {
                thumbnail = new ImageUtil().uploadImage(thumbnailPart, "movie");
            } else if (thumbnailUrl != null && !thumbnailUrl.trim().isEmpty()) {
                thumbnail = thumbnailUrl.trim();
            }

            String video = VideoUtil.saveFile(videoPart); 

            // Insert into database
            String sql = "INSERT INTO movie (Title, Genre, Type, Release_Year, Thumbnail, Video) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = dbConn.prepareStatement(sql)) {

                stmt.setString(1, title);
                stmt.setString(2, genre);
                stmt.setString(3, type);
                stmt.setInt(4, releaseYear);
                stmt.setString(5, thumbnail);
                stmt.setString(6, video);

                success = stmt.executeUpdate() > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
    
    public List<MovieModel> getAllMovies() {
        List<MovieModel> movies = new ArrayList<>();
        String sql = "SELECT * FROM movie";

        try (PreparedStatement stmt = dbConn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                MovieModel movie = new MovieModel();
                movie.setMovieID(rs.getInt("Movie_ID"));
                movie.setTitle(rs.getString("Title"));
                movie.setGenre(rs.getString("Genre"));
                movie.setType(rs.getString("Type"));
                movie.setReleaseYear(rs.getInt("Release_Year"));
                movie.setThumbnail(rs.getString("Thumbnail"));
                movie.setVideo(rs.getString("Video"));
                movies.add(movie);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }
    
    public boolean deleteMovie(int movieId) {
        String sql = "DELETE FROM movie WHERE Movie_ID = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(sql)) {
            stmt.setInt(1, movieId);
            int result = stmt.executeUpdate();
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
}
