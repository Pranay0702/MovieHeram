package com.movieheram.util;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.http.Part;

/**
 * Utility class for handling image file uploads.
 * <p>
 * This class provides methods for extracting the file name from a {@link Part}
 * object and uploading the image file to a specified directory on the server.
 * </p>
 */
public class ImageUtil {

	/**
	 * Extracts the file name from the given {@link Part} object based on the
	 * "content-disposition" header.
	 * 
	 * <p>
	 * This method parses the "content-disposition" header to retrieve the file name
	 * of the uploaded image. If the file name cannot be determined, a default name
	 * "download.png" is returned.
	 * </p>
	 * 
	 * @param part the {@link Part} object representing the uploaded file.
	 * @return the extracted file name. If no filename is found, returns a default
	 *         name "download.png".
	 */
	public String getImageNameFromPart(Part part) {
		// Retrieve the content-disposition header from the part
		String contentDisp = part.getHeader("content-disposition");

		// Split the header by semicolons to isolate key-value pairs
		String[] items = contentDisp.split(";");

		// Initialize imageName variable to store the extracted file name
		String imageName = null;

		// Iterate through the items to find the filename
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				// Extract the file name from the header value
				imageName = s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}

		// Check if the filename was not found or is empty
		if (imageName == null || imageName.isEmpty()) {
			// Assign a default file name if none was provided
			imageName = "download.png";
		}

		// Return the extracted or default file name
		return imageName;
	}

	/**
	 * Uploads the image file from the given {@link Part} object to a specified
	 * directory on the server.
	 * 
	 * <p>
	 * This method ensures that the directory where the file will be saved exists
	 * and creates it if necessary. It writes the uploaded file to the server's file
	 * system. Returns {@code true} if the upload is successful, and {@code false}
	 * otherwise.
	 * </p>
	 * 
	 * @param part the {@link Part} object representing the uploaded image file.
	 * @return {@code true} if the file was successfully uploaded, {@code false}
	 *         otherwise.
	 */
	public boolean uploadImage(Part part, String rootPath, String saveFolder) {
		String savePath = getSavePath(saveFolder);
		File fileSaveDir = new File(savePath);

		// Ensure the directory exists
		if (!fileSaveDir.exists()) {
			if (!fileSaveDir.mkdir()) {
				return false; // Failed to create the directory
			}
		}
		try {
			// Get the image name
			String imageName = getImageNameFromPart(part);
			// Create the file path
			String filePath = savePath + File.separator + imageName;
			// Write the file to the server
			part.write(filePath);
			return true; // Upload successful
		} catch (IOException e) {
			e.printStackTrace(); // Log the exception
			return false; // Upload failed
		}
	}
	

	public String getSavePath(String saveFolder) {
		return "/Users/najibthapa1/eclipse-workspace/MovieHeram/src/main/webapp/resources/images/"+saveFolder+"/";
	}
	
public class ImageUtil {

    /**
     * Extracts the image file name from the Part header.
     * If not found, assigns a default filename based on context.
     */
    public String getImageNameFromPart(Part part, String defaultFileName) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");

        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                String imageName = s.substring(s.indexOf("=") + 2, s.length() - 1);
                if (imageName != null && !imageName.trim().isEmpty()) {
                    return imageName;
                }
            }
        }

        return defaultFileName; // Fallback if filename is not found
    }

    /**
     * Uploads an image to the specified folder (e.g., "user" or "movie").
     *
     * @param part        the uploaded file part
     * @param saveFolder  folder like "user" or "movie"
     * @return relative image path if success (for DB storage), else null
     */
    public String uploadImage(Part part, String saveFolder) {
        String baseDir = "/Users/najibthapa1/eclipse-workspace/MovieHeram/src/main/webapp/resources/images/";
        String savePath = baseDir + saveFolder + File.separator;

        File dir = new File(savePath);
        if (!dir.exists() && !dir.mkdirs()) {
            System.err.println("Failed to create directory: " + savePath);
            return null;
        }

        try {
            String imageName = getImageNameFromPart(part, "default.png");
            String fullPath = savePath + imageName;
            part.write(fullPath);

            return imageName;

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
>>>>>>> recovered-changes
}