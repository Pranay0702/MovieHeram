package com.movieheram.model;

public class MovieUserModel {

	private int movieID;
    private int userID;
    
	public MovieUserModel(int movieID, int userID) {
		super();
		this.movieID = movieID;
		this.userID = userID;
	}

	public int getMovieID() {
		return movieID;
	}

	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}
    
    
}
