<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======
 <%@ page import="java.util.*, com.movieheram.model.UserModel" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    UserModel user = (UserModel) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("getStarted");
        return;
    }
    %>
>>>>>>> recovered-changes
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <title>Movie Dashboard</title>
    <style>
        /* Reset and Base Styles */
        
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dashboard.css" />
</head>
</head>
<body>
    <div class="dashboard">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-header">
                <i class="fas fa-user-tie"></i>
                <h2>Admin<span>Dashboard</span></h2>
            </div>
            <div class="sidebar-menu">
                <div class="menu-item active">
                    <i class="fas fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-user-friends"></i>
                    <span>Users</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-video"></i>
                    <span>Movies</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-upload"></i>
                    <span>Upload</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-user-circle"></i>
                    <span>Profile</span>
                </div>
                <div class="menu-item" id="logout-btn">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </div>
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>MovieHerau</h1>
                <div class="user-info">
                    <img src="IMG_0944.PNG" alt="User  ">
                    <span>John Doe</span>
                </div>
            </div>

            <div class="stats-cards">
                <div class="card">
                    <h3><i class="fas fa-users"></i> Total Users</h3>
                    <p>1,254</p>
                </div>
                <div class="card">
                    <h3><i class="fas fa-film"></i> Movies</h3>
                    <p>827</p>
                </div>
                <div class="card">
                    <h3><i class="fas fa-tv"></i> Series</h3>
                    <p>432</p>
                </div>
                <div class="card">
                    <h3><i class="fas fa-child"></i> Cartoons</h3>
                    <p>1,089</p>
                </div>
            </div>

            <!-- User Section -->
            <div class="user-section" id="user-section">
                <div class="user-section-header">
                    <h2 class="section-title"><i class="fas fa-user-friends"></i> User Management</h2>
                    <div class="user-actions">
                        <button class="action-btn add-btn">
                            <i class="fas fa-user-plus"></i> Add User
                        </button>
                        <button class="action-btn manage-btn">
                            <i class="fas fa-cog"></i> Manage
                        </button>
                    </div>
                </div>

                <div class="user-list-card">
                    <!-- User Item 1 -->
                    <div class="user-list-item">
                        <div class="user-info-container">
                            <img src="user1.jpg" alt="User" class="user-avatar">
                            <div class="user-details">
                                <div class="user-name">John Smith</div>
                                <div class="user-email">john.smith@example.com</div>
                            </div>
                        </div>
                        <div class="user-actions-container">
                            <button class="user-action-btn edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="user-action-btn delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <!-- User Item 2 -->
                    <div class="user-list-item">
                        <div class="user-info-container">
                            <img src="user2.jpg" alt="User" class="user-avatar">
                            <div class="user-details">
                                <div class="user-name">Sarah Johnson</div>
                                <div class="user-email">sarah.j@example.com</div>
                            </div>
                        </div>
                        <div class="user-actions-container">
                            <button class="user-action-btn edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="user-action-btn delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <!-- User Item 3 -->
                    <div class="user-list-item">
                        <div class="user-info-container">
                            <img src="user3.jpg" alt="User" class="user-avatar">
                            <div class="user-details">
                                <div class="user-name">Michael Brown</div>
                                <div class="user-email">michael.b@example.com</div>
                            </div>
                        </div>
                        <div class="user-actions-container">
                            <button class="user-action-btn edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="user-action-btn delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Movies Section -->
            <div class="movies-section" id="movies-section">
                <h2 class="section-title"><i class="fas fa-video"></i> Contents List</h2>

                <div class="movie-list-card">
                    <!-- Single Movie Item -->
                    <div class="movie-list-item">
                        <img src="https://via.placeholder.com/120x80" alt="Thumbnail" class="movie-thumb">
                        <div class="movie-info">
                            <h4>Inception</h4>
                            <p>Released on: April 1, 2025 | Genre: Sci-Fi | Category: Movie</p>
                        </div>
                        <div class="movie-actions">
                            <button class="movie-action-btn movie-edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="movie-action-btn movie-delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <div class="movie-list-item">
                        <img src="https://via.placeholder.com/120x80" alt="Thumbnail" class="movie-thumb">
                        <div class="movie-info">
                            <h4>Interstellar</h4>
                            <p>Released on: March 15, 2025 | Genre: Sci-Fi | Category: Movie</p>
                        </div>
                        <div class="movie-actions">
                            <button class="movie-action-btn movie-edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="movie-action-btn movie-delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <div class="movie-list-item">
                        <img src="https://via.placeholder.com/120x80" alt="Thumbnail" class="movie-thumb">
                        <div class="movie-info">
                            <h4>The Dark Knight</h4>
                            <p>Released on: March 28, 2025 | Genre: Action | Category: Movie</p>
                        </div>
                        <div class="movie-actions">
                            <button class="movie-action-btn movie-edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="movie-action-btn movie-delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Upload Section -->
            <div class="upload-section" id="upload-section">
                <div class="upload-header">
                    <h2 class="section-title"><i class="fas fa-upload"></i> Upload New Movie</h2>
                </div>
                <div class="upload-container">
                    <!-- Column 1: Upload Input -->
                    <div class="upload-input" style="display: flex; flex-direction: column;">
                        <div style="height: 310px;">
                            <label for="movie-upload" style="display: block; margin-bottom: 20px;"><h2>Select Movie:</h2></label>
                            <input type="file" id="movie-upload" accept="video/*">
                            <video id="video-preview" controls style="margin-top: 5px; display: none;"></video>
                        </div>
                        <div style="border-top: solid grey; padding: 10px;">
                            <label for="movie-title">Title:</label>
                            <input type="text" id="movie-title" placeholder="Enter movie title" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                        </div>
                    </div>
                    
                    <!-- Column 2: Movie Details -->
                    <div class="movie-details">
                        <div><h2 style="margin-top: -28px;">Movie Details</h2></div>
                        <div style="margin-bottom: 10px; margin-top: 15px;">
                            <label for="movie-genre">Genre:</label>
                            <input type="text" id="movie-genre" placeholder="Enter movie genre">
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="movie-category">Category:</label>
                            <input type="text" id="movie-category" placeholder="Enter movie category">
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="movie-description">Description:</label>
                            <textarea id="movie-description" placeholder="Enter movie description" rows="4"></textarea>
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="release-date">Release Date:</label>
                            <input type="date" id="release-date">
                        </div>
                    </div>

                    <!-- Column 3: Thumbnail Selector -->
                    <div class="thumbnail-selector" style="display: flex; flex-direction: column;">
                        <div style="height: 310px;">
                            <label for="thumbnail-upload" style="display: block; margin-bottom: 20px;"><h2>Select Thumbnail:</h2></label>
                            <input type="file" id="thumbnail-upload" accept="image/*" 
                            style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                            <img id="thumbnail-preview" src="" alt="Thumbnail Preview" style="margin-top: 15px; display: none;">
                        </div>
                        <div style="border-top: solid grey; padding: 10px;">
                            <button class="upload-btn">Upload</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Logout Confirmation Modal -->
    <div class="modal" id="logout-modal">
        <div class="modal-content">
            <h3><i class="fas fa-sign-out-alt"></i> Confirm Logout</h3>
            <p>Are you sure you want to logout from Admin Dashboard?</p>
            <div class="modal-buttons">
                <button class="modal-btn cancel-btn" id="cancel-logout">Cancel</button>
                <button class="modal-btn confirm-btn" id="confirm-logout">Logout</button>
            </div>
        </div>
    </div>

    <script>
        // Sidebar functionality remains exactly the same
        const menuItems = document.querySelectorAll('.menu-item');
        const mainContent = document.querySelector('.main-content');
        const userSection = document.getElementById('user-section');
        const moviesSection = document.getElementById('movies-section');
        const uploadSection = document.getElementById('upload-section');

        menuItems.forEach(item => {
            item.addEventListener('click', () => {
                // Remove 'active' class from all items
                menuItems.forEach(i => i.classList.remove('active'));
                // Add 'active' class to the clicked item
                item.classList.add('active');
                
                const text = item.textContent.trim();
                
                // Scroll to sections based on menu item clicked
                if (text === 'Dashboard') {
                    mainContent.scrollTo({
                        top: 0,
                        behavior: 'smooth'
                    });
                }
                else if (text === 'Users') {
                    userSection.scrollIntoView({ behavior: 'smooth' });
                }
                else if (text === 'Movies') {
                    moviesSection.scrollIntoView({ behavior: 'smooth' });
                }
                else if (text === 'Upload') {
                    moviesSection.scrollIntoView({ behavior: 'smooth' });
                }
                else if (text === 'Profile') {
                    // You can add profile section scrolling here if you add a profile section
                }
            });
        });

        // Logout modal functionality remains the same
        const logoutBtn = document.getElementById('logout-btn');
        const logoutModal = document.getElementById('logout-modal');
        const cancelLogout = document.getElementById('cancel-logout');
        const confirmLogout = document.getElementById('confirm-logout');

        logoutBtn.addEventListener('click', () => {
            logoutModal.style.display = 'flex';
        });

        cancelLogout.addEventListener('click', () => {
            logoutModal.style.display = 'none';
        });

        confirmLogout.addEventListener('click', () => {
            // Submit a POST request to logout controller
            const form = document.createElement("form");
            form.method = "POST";
            form.action = "logout";
            document.body.appendChild(form);
            form.submit();
        });

        window.addEventListener('click', (event) => {
            if (event.target === logoutModal) {
                logoutModal.style.display = 'none';
            }
        });

        // File upload preview functionality remains the same
        const movieUpload = document.getElementById('movie-upload');
        const videoPreview = document.getElementById('video-preview');
        const thumbnailUpload = document.getElementById('thumbnail-upload');
        const thumbnailPreview = document.getElementById('thumbnail-preview');

        movieUpload.addEventListener('change', function() {
            const file = this.files[0];
            if (file) {
                const fileURL = URL.createObjectURL(file);
                videoPreview.src = fileURL;
                videoPreview.style.display = 'block';
                videoPreview.classList.add('uploaded');
            }
        });

        thumbnailUpload.addEventListener('change', function() {
            const file = this.files[0];
            if (file) {
                const fileURL = URL.createObjectURL(file);
                thumbnailPreview.src = fileURL;
                thumbnailPreview.style.display = 'block';
                thumbnailPreview.classList.add('uploaded');
            }
        });


        // New functionality for user actions
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('Add User functionality will be implemented here');
            });
        });

        document.querySelectorAll('.remove-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('Remove User functionality will be implemented here');
            });
        });

        document.querySelectorAll('.manage-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('Manage Users functionality will be implemented here');
            });
        });

        // New functionality for user edit/delete buttons
        document.querySelectorAll('.user-action-btn.edit-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const userName = btn.closest('.user-list-item').querySelector('.user-name').textContent;
                alert(`Edit user: ${userName}`);
            });
        });

        document.querySelectorAll('.user-action-btn.delete-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const userName = btn.closest('.user-list-item').querySelector('.user-name').textContent;
                if (confirm(`Are you sure you want to delete user: ${userName}?`)) {
                    btn.closest('.user-list-item').remove();
                }
            });
        });

        // New functionality for movie edit/delete buttons
        document.querySelectorAll('.movie-action-btn.movie-edit-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const movieTitle = btn.closest('.movie-list-item').querySelector('h4').textContent;
                alert(`Edit movie: ${movieTitle}`);
            });
        });

        document.querySelectorAll('.movie-action-btn.movie-delete-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const movieTitle = btn.closest('.movie-list-item').querySelector('h4').textContent;
                if (confirm(`Are you sure you want to delete movie: ${movieTitle}?`)) {
                    btn.closest('.movie-list-item').remove();
                }
            });
        });
    </script>
=======
    <title>movieहेरम Admin Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
    <style>
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body style="opacity: 0; animation: fadeIn 0.6s ease-in-out forwards;">
    <div class="root">
    <div class="container">
        <nav class="sidebar">
            <div class="logo">
                <h2>👨‍💼 Admin</h2>
            </div>
            <ul class="nav-links">
                <li class="active" data-page="dashboard">
                    <span class="icon">📊</span> Dashboard
                </li>
                <li data-page="users">
                    <span class="icon">👥</span> Users
                </li>
                <li data-page="movies">
                    <span class="icon">🎥</span> Movies
                </li>
            </ul>
            <div class="admin-info">
                <div class="admin-avatar">
                    <img src="${pageContext.request.contextPath}/resources/images/user/${user.imageUrl}" style="width: 60px; border-radius: 100px;">
                </div>
                <div class="admin-details">
                    <p class="admin-name"><%= user.getName() %></p>
                    <p class="admin-role"></p>
                </div>
            </div>
        </nav>

        <main class="main-content">
            <header>           
                <h1 style="color: rgb(232, 0, 0);">Movieहेरम 🎬</h1>
                <div class="header-actions">
                   <a href="logout"><button class="logout" id="logout">Logout</button></a>
                </div>
            </header>
        
            <div class="page-content popup-wrapper" id="dashboard">
                <div class="stats-cards">
                    <div class="stat-card">
                        <h3>Total Users</h3>
                        <p class="stat-number">${userCount}</p>
                     </div>
                    <div class="stat-card">
                        <h3>Total Movies</h3>
                        <p class="stat-number">${movieCount}</p>
                    </div>
                    <div class="stat-card">
                        <h3>Total Series</h3>
                        <p class="stat-number">${seriesCount}</p>
                    </div>
                    <div class="stat-card">
                        <h3>Total Anime</h3>
                        <p class="stat-number">${animeCount}</p>
                    </div>
                </div>

                <div class="recent-activity">
                    <h2>Activity Chart</h2>
                    <div style="display: flex; justify-content: center; align-items: center;">
                        <img src="${pageContext.request.contextPath}/resources/images/system/chart.png" style="margin-top: 20px; width: 85rem; border-radius: 1rem;">
                    </div>
                </div>
            </div>

            <div class="page-content popup-wrapper hidden" id="users">
                <h1>User Management</h1>
                <div class="users-table">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Plan</th>
                                <th>Image</th>
                                <th>Registered Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
	                        <tbody id="usersTableBody">
								   <c:forEach var="user" items="${users}">
									    <tr>
									        <td>${user.id}</td>
									        <td>${user.name}</td>
									        <td>${user.email}</td>
									        <td>${user.membership.membershipType}</td>
									        <td>${user.imageUrl}</td>
									        <td>${user.createdDate}</td>
									        <td>
									           <!-- Delete Button and Confirmation Box -->
													<div style="position: relative;">
													    <button onclick="toggleConfirm(${user.id})" class="delete-btn">Delete</button>
													    
													    <div id="confirm-${user.id}" class="confirm-box" style="display: none; position: absolute; top: 53%; left: 0;">
													        Are you sure?
													        <div style="display: flex; gap: 10px;">
													            <a href="dashboard?action=deleteUser&id=${user.id}"
													               style="text-decoration: none; background-color: red; color: white; padding: 5px 10px; border-radius: 5px;">
													               Yes
													            </a>
													            <button onclick="toggleConfirm(${user.id})"
													                    style="background-color: gray; color: white; padding: 5px 10px; border-radius: 5px;">
													                No
													            </button>
													        </div>
													    </div>
													</div>
									        </td>
									    </tr>
									</c:forEach>
							</tbody>
                    </table>
                </div>
            </div>

            <div class="page-content popup-wrapper hidden" id="movies">
                <h1>Movie Management</h1>
                <div class="action-bar">
                    <div class="dropdown-container">
                        <button class="add-btn" id="addMovieBtn">Add New Movie</button>
						<form action="dashboard" method="post" enctype="multipart/form-data">
						  <input type="hidden" name="action" value="addMovie">
                        
                        <div class="dropdown-modal hidden" id="movieModal">
                            <div class="dropdown-modal-content">
                                <h2>Upload Movie</h2>
                                    <div class="form-row">
                                        <div class="form-group">
                                            <label>Title</label>
                                            <input type="text" name="title" required>
                                        </div>
                                    </div>
                                    
                                    <div class="form-row">
                                        <div class="form-group">
                                            <label>Genre</label>
                                            <select name="genre" required>
                                                <option value="">Select Genre</option>
                                                <option value="Action">Action</option>
                                                <option value="Drama">Drama</option>
                                                <option value="Comedy">Comedy</option>
                                                <option value="Sci-Fi">Sci-Fi</option>
                                                <option value="Horror">Horror</option>
                                            </select>
                                        </div>
                                     <div class="form-group">
                                            <label>Type</label>
                                            <select name="type" required>
                                                <option value="">Select Type</option>
                                                <option value="Movie">Movie</option>
                                                <option value="Series">Series</option>
                                                <option value="Anime">Anime</option>
                                            </select>
                                            </div>
                                        <div class="form-group">
                                            <label>Release Year</label>
                                            <input type="number" name="releaseYear" required>
                                        </div>
                                    </div>
                                    
                                    <div class="preview-section">
                                        <div class="thumbnail-preview-container">
                                            <h3>Thumbnail</h3>
                                            <div class="form-group">
                                                <label>Poster URL</label>
                                                <input type="file" name="thumbnailFile">
												<input type="url" name="thumbnailUrl" placeholder="or paste image URL">
                                            </div>
                                        </div>
                                        
                                        <div class="video-preview-container">
                                            <h3>Content</h3>
                                            <div class="form-group">
                                                <label>Video File URL</label>
                                                <input type="file" name="video" accept="video/*" id="videoInput" required>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-actions">
                                        <button type="button" class="cancel-btn">Cancel</button>
                                        <button type="submit" class="save-btn">Add Movie</button>
                                    </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
                <div class="users-table">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Title</th>
                                <th>Genre</th>
                                <th>Type</th>
                                <th>Release Year</th>
                                <th>Thumbnail</th>
                                <th>Video</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
						<tbody id="user-table-body">
					    <c:forEach var="movie" items="${movies}">
						        <tr>
						          <td>${movie.movieID}</td>
						          <td>${movie.title}</td>
						          <td>${movie.genre}</td>
						          <td>${movie.type}</td>
						          <td>${movie.releaseYear}</td>
						          <td>${movie.thumbnail}</td>
						          <td>${movie.video}</td>
						 		 <td>	
								   <form action="dashboard?action=deleteMovie" method="post">
									    <input type="hidden" name="movieID" value="${movie.movieID}">
									    <button type="submit" class="delete-btn">Delete</button>
									</form>
						        </tr>
						        </c:forEach>
						</tbody>
                        </table>
                </div>
            </div>
        </main>
    </div>
</div>

	<script>
	
		// DOM Elements
		const navLinks = document.querySelectorAll('.nav-links li');
		const pages = document.querySelectorAll('.page-content');
		const movieModal = document.getElementById('movieModal');
		const addMovieBtn = document.getElementById('addMovieBtn');
		const movieForm = document.getElementById('movieForm');
		const usersTableBody = document.getElementById('usersTableBody');
		const moviesGrid = document.querySelector('.movies-grid');
		const cancelBtns = document.querySelectorAll('.cancel-btn');
		
		navLinks.forEach(link => {
		    link.addEventListener('click', () => {
		        // Remove active class from all links
		        navLinks.forEach(l => l.classList.remove('active'));
		        // Add active class to clicked link
		        link.classList.add('active');
	
		        // Show corresponding page
		        const pageName = link.getAttribute('data-page');
		        pages.forEach(page => {
		            if (page.id === pageName) {
		                page.classList.remove('hidden');
		            } else {
		                page.classList.add('hidden');
		            }
		        });
		    });
		});
		// Toggle Modal
		addMovieBtn?.addEventListener('click', (e) => {
		    e.stopPropagation();
		    movieModal.classList.toggle('hidden');
		});
		
		// Close modal when clicking outside
		document.addEventListener('click', (e) => {
		    if (!movieModal.contains(e.target) && e.target !== addMovieBtn) {
		        movieModal.classList.add('hidden');
		    }
		});
		
		// Close modal with cancel button
		cancelBtns.forEach(btn => {
		    btn.addEventListener('click', () => {
		        movieModal.classList.add('hidden');
		    });
		});
		
		
		function toggleConfirm(id) {
		    const box = document.getElementById('confirm-' + id);
		    box.style.display = box.style.display === 'none' ? 'block' : 'none';
		}
		
		function addMovie(movieData) {
		    mockMovies.push({
		        id: mockMovies.length + 1,
		        ...movieData
		    });
		    renderMovies();
		}
	
		// Initialize
		document.addEventListener('DOMContentLoaded', () => {
		    renderUsers();
		    renderMovies();
		});
		
		
		
	</script>
>>>>>>> recovered-changes
</body>
</html>