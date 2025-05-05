package com.movieheram.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

public class VideoUtil {
	    public static String saveMovieVideo(Part videoPart, HttpServletRequest request) {
	        String fileName = Paths.get(videoPart.getSubmittedFileName()).getFileName().toString();
	        String uploadPath = request.getServletContext().getRealPath("") + File.separator + "resources/video";

	        File uploadDir = new File(uploadPath);
	        if (!uploadDir.exists()) uploadDir.mkdirs();

	        try (InputStream input = videoPart.getInputStream()) {
	            Files.copy(input, new File(uploadPath + File.separator + fileName).toPath(), StandardCopyOption.REPLACE_EXISTING);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	        return fileName;
	    }

		public static String saveFile(Part videoPart) {
			    String fileName = Paths.get(videoPart.getSubmittedFileName()).getFileName().toString();
			    String uploadPath = "/Users/najibthapa1/eclipse-workspace/MovieHeram/src/main/webapp/resources/video";

			    File uploadDir = new File(uploadPath);
			    if (!uploadDir.exists()) uploadDir.mkdirs();

			    try (InputStream input = videoPart.getInputStream()) {
			        Files.copy(input, new File(uploadPath + File.separator + fileName).toPath(), StandardCopyOption.REPLACE_EXISTING);
			    } catch (IOException e) {
			        e.printStackTrace();
			    }

			    return fileName;
			}
		}


