<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<<<<<< HEAD
    
=======
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
>>>>>>> recovered-changes
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Media Gallery</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
  <nav>
    <div class="logo">
      <span>
        <img src="${pageContext.request.contextPath}/resources/images/system/logo.png" alt="Logo" />
      </span>
    </div>
    <div class="nav-links" id="navLinks">
      		<a href="#">Home</a>
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
            <a href="favorite">My Favourites</a>
            <a href="logout" id="logoutBtn">Logout</a>
>>>>>>> recovered-changes
          </div>
        </div>
      </div>
    </div>
  </nav>

    <!-- Loader -->
  

  <div id="back-to-top" class="back-to-top">
    <i class="fas fa-arrow-up"></i>
</div>

    <main>
      <section class="MainApp">
      
        <video id="MainApp-video" autoplay loop muted playsinline class="MainApp-video">
            <source src="${pageContext.request.contextPath}/resources/video/intro.mov" type="video/mp4" />
            Your browser does not support the video.
        </video>
        <div class="MainApp-content">
            <h1>Welcome To Movieहेरम 🎬</h1>
            <p style="font-size: 1.5rem;">Watch unlimited movies, Animes & series</p>
        </div>
        <div class="scroll-indicator" data-aos="fade-up" data-aos-delay="500" id="scroll-down-btn">
            <div class="mouse"></div>
            <p>Scroll Down</p>
        </div>
          <!-- Mute Button -->
          <button id="mute-btn" class="mute-btn">🔇</button>
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
        </section>

=======
           <form id="filterForm" action="home" method="get">
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
        </section>
>>>>>>> recovered-changes
        <section class="featured-text">
          <h1>Featured Movies</h1>
        </section>

         <!-- Movie, Series, Cartoons Sections -->
         <section class="featured-cards">

                    <!--mission impossible-->
  
        <div class="media-card">
<<<<<<< HEAD
            <div class="fav-btn-fixed">
              <button class="fav-btn" onclick="toggleFavorite(this)">
                <i class="fa-regular fa-heart"></i>
              </button>
            </div>
=======
>>>>>>> recovered-changes
            <div class="image-wrapper">
              <img src="https://m.media-amazon.com/images/M/MV5BZGQ5NGEyYTItMjNiMi00Y2EwLTkzOWItMjc5YjJiMjMyNTI0XkEyXkFqcGc@._V1_.jpg" alt="Movie">
              <div class="overlay">
                <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
              </div>
            </div>
            <div class="media-info">
              <h3 class="media-title">Mission Impossible The Final Reckoning</h3>
              <p class="media-meta">Genre: Action | Year: 2023</p>
            </div>
          </div>
                
              <!--Maharaja-->
        
              <div class="media-card">
<<<<<<< HEAD
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
=======
>>>>>>> recovered-changes
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BZDJjNzdkNmItZDExMy00NzA3LWE3YzEtM2U3ZGRjMThlMDU2XkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Maharaja.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Maharaja</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
            </div>

            <!-- Breaking Bad -->
        
            <div class="media-card">
<<<<<<< HEAD
                <div class="fav-btn-fixed">
                    <button class="fav-btn" onclick="toggleFavorite(this)">
                      <i class="fa-regular fa-heart"></i>
                    </button>
                  </div>
=======
>>>>>>> recovered-changes
                  <div class="image-wrapper">
                    <img src="https://m.media-amazon.com/images/M/MV5BMzU5ZGYzNmQtMTdhYy00OGRiLTg0NmQtYjVjNzliZTg1ZGE4XkEyXkFqcGc@._V1_.jpg" alt="Movie">
                    <div class="overlay">
                      <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Breaking Bad.mp4')">▶ Watch Now</a>
                    </div>
                  </div>
                  <div class="media-info">
                    <h3 class="media-title">Breaking Bad</h3>
                    <p class="media-meta">Genre: Series | Year: 2023</p>
                  </div>
                </div>

             <!-- Chhaava -->
        
              <div class="media-card">
<<<<<<< HEAD
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
=======
>>>>>>> recovered-changes
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BMDMyZjFmZTctNDAxYi00MWM3LWJiYmItM2VhNWZiM2IwNjNlXkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Chhaava</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
              </div>
         </section>

         <section class="latest-uploads-text">
          <h1>Latest Uploaded Movies</h1>
        </section>

            <section class="latest-uploads-cards">
<<<<<<< HEAD
                
                <!--Avengers Infinity War-->
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://images.moviesanywhere.com/0473778fb19af5e749f06d249804ba13/887b650e-5661-4fd7-aa24-bf38179342a5.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Avengers Infinity War</h3>
                  <p class="media-meta">Genre: Action | Year: 2019</p>
                </div>
              </div>
        
              <!--Tron-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BMmJiMWE2NTYtZWMyZC00Yzg0LTg0YjItZDM3ODlkYTRhNWNlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Tron</h3>
                  <p class="media-meta">Genre: Action | Year: 2025</p>
                </div>
              </div>
        
              <!--mission impossible-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BZGQ5NGEyYTItMjNiMi00Y2EwLTkzOWItMjc5YjJiMjMyNTI0XkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Mission Impossible The Final Reckoning</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
              </div>
        
              <!--Jurassic World Rebirth-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://cdn.europosters.eu/image/1300/posters/jurassic-world-i114154.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="${pageContext.request.contextPath}/resources/video/Mission Impossible The Final Reckoning.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">The Matrix Resurrections</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
              </div>
        
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
        
              <!--Maharaja-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BZDJjNzdkNmItZDExMy00NzA3LWE3YzEtM2U3ZGRjMThlMDU2XkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Maharaja.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Maharaja</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
              </div>
        
              <!--KGF - Chapter 1-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/S/pv-target-images/0978dc3775492a124027b21df5153ab61b4c90cc518cbe126ebb3769d34640d5.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/KGF - Chapter 1.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">KGF - Chapter 1</h3>
                  <p class="media-meta">Genre: Action | Year: 2020</p>
                </div>
              </div>
                      
              <!--Kabir Singh-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BOTQyOWNhOTktODlmNy00NDVkLWE4MTAtYjZlMTg5MzA4ZWY0XkEyXkFqcGc@._V1_QL75_UX820_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Kabir Singh.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Kabir Singh</h3>
                  <p class="media-meta">Genre: Romance/Action | Year: 2019</p>
                </div>
              </div>
        
              <!-- Chhaava -->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BMDMyZjFmZTctNDAxYi00MWM3LWJiYmItM2VhNWZiM2IwNjNlXkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Chhaava.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Chhaava</h3>
                  <p class="media-meta">Genre: Action | Year: 2023</p>
                </div>
              </div>
        
              <!--RAID 2-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://images.filmibeat.com/ph-big/2025/04/everything-you-need-to-know-about-raid-2-cast-plot-and-release-details1743743094_0.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/RAID 2.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">RAID 2</h3>
                  <p class="media-meta">Genre: Thriller | Year: 2025</p>
                </div>
              </div>
        
              <!--Superman-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BZjFhZmU5NzUtZTg4Zi00ZjRjLWI0YmQtODk2MzI4YjNhYTdkXkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Superman.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Superman</h3>
                  <p class="media-meta">Genre: Action | Year: 2015</p>
                </div>
              </div>
                      
              <!--Strangers Things-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BMjg2NmM0MTEtYWY2Yy00NmFlLTllNTMtMjVkZjEwMGVlNzdjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Stranger Things .mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Strangers Things</h3>
                  <p class="media-meta">Genre: Series | Year: 2023</p>
                </div>
              </div>
        
              <!-- Breaking Bad -->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BMzU5ZGYzNmQtMTdhYy00OGRiLTg0NmQtYjVjNzliZTg1ZGE4XkEyXkFqcGc@._V1_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Breaking Bad.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Breaking Bad</h3>
                  <p class="media-meta">Genre: Series | Year: 2023</p>
                </div>
              </div>

               <!--Avengers Infinity War-->
               <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://images.moviesanywhere.com/0473778fb19af5e749f06d249804ba13/887b650e-5661-4fd7-aa24-bf38179342a5.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Marvel Studios Avengers Infinity War.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Avengers Infinity War</h3>
                  <p class="media-meta">Genre: Action | Year: 2019</p>
                </div>
              </div>
        
              <!--Tron-->
        
              <div class="media-card">
                <div class="fav-btn-fixed">
                  <button class="fav-btn" onclick="toggleFavorite(this)">
                    <i class="fa-regular fa-heart"></i>
                  </button>
                </div>
                <div class="image-wrapper">
                  <img src="https://m.media-amazon.com/images/M/MV5BMmJiMWE2NTYtZWMyZC00Yzg0LTg0YjItZDM3ODlkYTRhNWNlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg" alt="Movie">
                  <div class="overlay">
                    <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Tron.mp4')">▶ Watch Now</a>
                  </div>
                </div>
                <div class="media-info">
                  <h3 class="media-title">Tron</h3>
                  <p class="media-meta">Genre: Action | Year: 2025</p>
                </div>
              </div>
        
              <!--Fast and Furious-->
           <div class="media-card">
            <div class="fav-btn-fixed">
              <button class="fav-btn" onclick="toggleFavorite(this)">
                <i class="fa-regular fa-heart"></i>
              </button>
            </div>
            <div class="image-wrapper">
              <img src="https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p10679969_p_v8_av.jpg" alt="Movie">
              <div class="overlay">
                <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Marvel Studios Avengers Infinity War.mp4')">▶ Watch Now</a>
              </div>
            </div>
            <div class="media-info">
              <h3 class="media-title">Fast and Furious</h3>
              <p class="media-meta">Genre: Action | Year: 2019</p>
            </div>
          </div>
    
          <!--Conjuring 2-->
    
          <div class="media-card">
            <div class="fav-btn-fixed">
              <button class="fav-btn" onclick="toggleFavorite(this)">
                <i class="fa-regular fa-heart"></i>
              </button>
            </div>
            <div class="image-wrapper">
              <img src="https://m.media-amazon.com/images/I/81ZpWSeRbVL._AC_UF1000,1000_QL80_.jpg" alt="Movie">
              <div class="overlay">
                <a href="#playerModal" class="watch-btn" onclick="playVideo('/Movies/Tron.mp4')">▶ Watch Now</a>
              </div>
            </div>
            <div class="media-info">
              <h3 class="media-title">Conjuring 2</h3>
              <p class="media-meta">Genre: Horror | Year: 2025</p>
            </div>
          </div>
=======
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
            <a href="about">About Us</a>
            <a href="#">Contact</a>
            <a href="termsCondition">Terms of Service</a>
        </div>
        <div class="footer-section">
            <h3>Connect With Us</h3>
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
<<<<<<< HEAD
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
=======
function toggleFavorite(btn, movieId) {
    btn.classList.toggle("active");
    const icon = btn.querySelector("i");
    const isAdding = btn.classList.contains("active");

    // Toggle icon style
    icon.classList.toggle("fa-solid", isAdding);
    icon.classList.toggle("fa-regular", !isAdding);

    // AJAX to backend
    fetch("favorite", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: `movieId=${movieId}`
    })
    .then(response => response.text())
    .then(data => {
        console.log("Favorite status:", data);
    })
    .catch(error => {
        console.error("Error updating favorite:", error);
    });
}
>>>>>>> recovered-changes
 
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

<<<<<<< HEAD
<script src="${pageContext.request.contextPath}/javascript/main.js/"></script>
=======
>>>>>>> recovered-changes

</body>
</html>
