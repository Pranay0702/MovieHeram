<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.movieheram.model.UserModel" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<<<<<< HEAD
=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

>>>>>>> recovered-changes
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cartoons - Movieहेरम</title>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/css/msc.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
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
<body style="opacity: 0; animation: fadeIn 1s ease-in-out forwards;">
    <nav>
        <div class="logo">
            <span><img src="${pageContext.request.contextPath}/resources/images/system/logo.png" alt="Movie Heram Logo" /></span>
          </div>
        <div class="nav-links">
            <a href="home" class="active">Home</a>
            <a href="movie">Movies</a>
            <a href="series">Series</a>
            <a href="cartoon">Anime</a>
            <div class="search-container">
                <input type="text" id="searchInput" placeholder="Search...">
            </div>
            <div class="auth-buttons">
                <div class="profile-container" id="profileContainer">
 						<!-- If user image is available -->
				        <c:if test="${not empty sessionScope.user.imageUrl}">
				            <img src="${pageContext.request.contextPath}/resources/images/user/${sessionScope.user.imageUrl}" 
				                 alt="Profile" class="profile-icon">
				        </c:if>
				
				        <!-- If user image is not available -->
				        <c:if test="${empty sessionScope.user.imageUrl}">
				            <img src="https://ui-avatars.com/api/?name=${sessionScope.user.name}" 
				                 alt="Profile" class="profile-icon">
				        </c:if>                   
				        <div class="profile-dropdown">
                        <a href="profile">My Profile</a>
<<<<<<< HEAD
                        <a href="profile">My Favourites</a>
                        <a href="logOut" id="logoutBtn">Logout</a>
=======
                        <a href="favorite">My Favorites</a>
                        <a href="logout" id="logoutBtn">Logout</a>
>>>>>>> recovered-changes
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div id="back-to-top" class="back-to-top">
      <i class="fas fa-arrow-up"></i>
  </div>
    <main>
        <main>
            <section class="page-header">
                <h1>Anime 🎬</h1>
                <p>Your favorite animated shows and series</p>
            </section>

        <section class="filters">
<<<<<<< HEAD
            <select id="genreFilter">
                <option value="">All Genres</option>
                <option value="action">Action</option>
                <option value="comedy">Comedy</option>
                <option value="drama">Drama</option>
                <option value="horror">Horror</option>
            </select>
            <select id="yearFilter">
                <option value="">All Years</option>
                <option value="2024">2024</option>
                <option value="2023">2023</option>
                <option value="2022">2022</option>
                <option value="2021">2021</option>
            </select>
=======
             <form id="filterForm" action="cartoon" method="get">
    <select name="genre" onchange="document.getElementById('filterForm').submit()">
        <option value="">All Genres</option>
        <option value="Action" ${param.genre == 'Action' ? 'selected' : ''}>Action</option>
        <option value="Drama" ${param.genre == 'Drama' ? 'selected' : ''}>Drama</option>
        <option value="Sci-Fi" ${param.genre == 'Sci-Fi' ? 'selected' : ''}>Sci-Fi</option>
        <option value="Comedy" ${param.genre == 'Comedy' ? 'selected' : ''}>Comedy</option>
        
    </select>

    <select name="year" onchange="document.getElementById('filterForm').submit()">
        <option value="">All Years</option>
        <option value="2024" ${param.year == '2024' ? 'selected' : ''}>2024</option>
        <option value="2023" ${param.year == '2023' ? 'selected' : ''}>2023</option>
        <option value="2022" ${param.year == '2022' ? 'selected' : ''}>2022</option>
        <option value="2021" ${param.year == '2021' ? 'selected' : ''}>2021</option>
        <option value="2020" ${param.year == '2020' ? 'selected' : ''}>2020</option>

    </select>
</form>
>>>>>>> recovered-changes
        </section>

        <section class="featured-text">
          <h1>Featured Movies</h1>
        </section>

<<<<<<< HEAD
         <!-- Movie, Series, Cartoons Sections -->
         <section class="featured-cards">
               <!--Kung fu Panda 4-->
        
               <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSrakPTsqdEOxYzMjxiAu2V8Lb_MV8luTzwiGTuyhzcnUdL5m5Pn8P0QUvDsOqSol-i27-eSg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/KUNG FU PANDA 4.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">KUNG FU PANDA 4</h3>
                  <p class="media-meta">Genre: Animation | Year: 2024</p>
                </div>
              </div>
        
              <!--Despicable Me 4 | Rotten Tomatoes-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://resizing.flixster.com/vH3pXN9NjNObggCELzxEkFZfmM8=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzMyNmZhYmFmLWFkN2EtNDViMC1iM2U4LWM4YjUzMjcyMDNiNC5qcGc=" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Despicable Me 4.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Despicable Me 4 | Rotten Tomatoes</h3>
                  <p class="media-meta">Genre: Animation | Year: 2024</p>
                </div>
              </div>
                      
              <!--Cars-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://lumiere-a.akamaihd.net/v1/images/p_cars_19643_4405006d.jpeg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Cars</h3>
                  <p class="media-meta">Genre: Animation | Year: 2020</p>
                </div>
              </div>
        
              <!-- How to train ur Dragon -->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p3625299_p_v13_al.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">HOW TO TRAIN YOUR DRAGON</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
              </div>
=======
        
            <section class="featured-cards">
                <c:forEach var="movie" items="${movieList}">
					  <div class="media-card">
					    <div class="fav-btn-fixed">
					      <button class="fav-btn" onclick="toggleFavorite(this, '${movie.movieID}')">
					        <i class="fa-regular fa-heart"></i>
					      </button>
					    </div>
					    <div class="image-wrapper">
								<c:choose>
								  <c:when test="${fn:startsWith(movie.thumbnail, 'http')}">
								    <img src="${movie.thumbnail}" alt="${movie.title}">
								  </c:when>
								  <c:otherwise>
								    <img src="${pageContext.request.contextPath}/resources/images/movie/${movie.thumbnail}" alt="${movie.title}">
								  </c:otherwise>
								</c:choose>					      
								<div class="overlay">
					        <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/${movie.video}')">▶ Watch Now</a>
					      </div>
					    </div>
					    <div class="media-info">
					      <h3 class="media-title">${movie.title}</h3>
					      <p class="media-meta">Genre: ${movie.genre} | Year: ${movie.releaseYear}</p>
					    </div>
					  </div>
					</c:forEach>
        
>>>>>>> recovered-changes
            </section>
        
            <!-- Popup Player -->
            <div id="playerModal" class="popup-player">
              <div class="player-content">
                <a href="#" class="close-btn">&times;</a>
                <video controls>
                  <source src="sample.mp4" type="video/mp4">
                  Your browser does not support the video tag.
                </video>
              </div>
            </div>
          </main>
 

  <footer>
    <div class="footer-content">
        <div class="footer-section">
            <h3>Movieहेरम</h3>
            <p>Your ultimate streaming destination</p>
        </div>
        <div class="footer-section">
            <h3>Quick Links</h3>
            <a href="about.html">About Us</a>
            <a href="Contact.html">Contact</a>
            <a href="T&C.html">Terms of Service</a>
        </div>
        <div class="footer-section">
            <h3>Connect With Us</h3>
            <div class="social-links">
              <a href="https://www.facebook.com/login.php/">Facebook</a>
              <a href="https://x.com/i/flow/login">Twitter</a>
              <a href="https://www.instagram.com/accounts/login/?hl=en">Instagram</a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 Movieहेरम. All rights reserved.</p>
    </div>
</footer>
    

    <script src="${pageContext.request.contextPath}/javascript/main.js">
        function scrollToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }
    </script>
    <script>
    if ('ontouchstart' in window) {
        document.body.classList.add('touch-device');
      }
      // Home page mp4 (Only mute/unmute toggle button)
      document.addEventListener('DOMContentLoaded', () => {
          const muteButton = document.getElementById('mute-btn');
          const video = document.getElementById('hero-video');
      
          // Set initial muted state to true (muted initially)
          video.muted = true;
          muteButton.textContent = '🔇'; // Set icon on load
      
          // Handle mute/unmute button click
          muteButton.addEventListener('click', () => {
              if (video.muted) {
                  video.muted = false;  // Unmute the video
                  muteButton.textContent = '🔊';  // Change button to unmute icon
              } else {
                  video.muted = true;  // Mute the video
                  muteButton.textContent = '🔇';  // Change button to mute icon
              }
          });
      });
      

     // Back to Top Button(->)
     const backToTop = document.getElementById('back-to-top');

     window.addEventListener('scroll', () => {
         if (window.scrollY > 500) {
             backToTop.classList.add('visible');
         } else {
             backToTop.classList.remove('visible');
         }
     });
     
     backToTop.addEventListener('click', () => {
         window.scrollTo({
             top: 0,
             behavior: 'smooth'
         });
     });
     
    //Loader

     window.onload = function () {
         // Delay before fading out the loader
         setTimeout(function () {
             document.getElementById("loader").style.opacity = "0"; // Fade out loader
             setTimeout(function () {
                 document.getElementById("loader").style.display = "none"; // Hide loader
                 document.body.style.opacity = "1"; // Fade in the content
             }, 500); // 500ms for smooth fade transition
         }, 1000); // Show loader for 2 seconds
     };
             function scrollToTop() {
             window.scrollTo({ top: 0, behavior: 'smooth' });
         }
     
    //Toggle Fav Btn
    function toggleFavorite(btn) {
           btn.classList.toggle("active");
           const icon = btn.querySelector("i");
           if (btn.classList.contains("active")) {
             icon.classList.remove("fa-regular");
             icon.classList.add("fa-solid");
           } else {
             icon.classList.remove("fa-solid");
             icon.classList.add("fa-regular");
           }
        }
     
        //MP4 player

        function playVideo(videoSrc) {
           const video = document.querySelector("#playerModal video");
           video.src = videoSrc;
           video.load();
           video.play();
         }

         //Close btn
         document.querySelector(".close-btn").addEventListener("click", () => {
           const video = document.querySelector("#playerModal video");
           video.pause();
           video.currentTime = 0;
         });

         //Mouse scroll down(<-)

       const scrollBtn = document.getElementById("scroll-down-btn");
     
       scrollBtn.addEventListener("click", () => {
         window.scrollBy({
           top: window.innerHeight / 1.14, // scrolls half a page
           behavior: 'smooth'
         });
       });

    </script>
</body>
</html>