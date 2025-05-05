<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movieहेरम - Enjoy on your TV</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <nav>
        <div class="logo">
            <span>
<<<<<<< HEAD
                <img src="${pageContext.request.contextPath}/resources/images/system/logo" alt="Logo" />
=======
                <img src="${pageContext.request.contextPath}/resources/images/system/logo.png" alt="Logo" />
>>>>>>> recovered-changes
            </span>
          </div>

          <div class="nav-links">
            <a href="login" class="sign-in-btn">Sign In</a>
        </div>
        
    </nav>

    <!-- Loader -->
    <div id="loader">
        <div class="spinner"></div>
        <div class="loading-text">Loading...</div>
    </div>

    <div id="back-to-top" class="back-to-top">
        <i class="fas fa-arrow-up"></i>
    </div>

    <main>
        <section class="MainApp">
            <h1>Welcome To Movieहेरम 🎬</h1>
            <p style="font-size: 1.5rem;">Watch unlimited movies, Animes & series</p>
            <a href="signUp" class="get-started-btn">Get Started</a>

        </section>

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
<<<<<<< HEAD
                <a href="termsCondtion">Terms of Service</a>
=======
                <a href="termsCondition">Terms of Service</a>
>>>>>>> recovered-changes
            </div>
            <div class="footer-section">
                <h3>Connect With Us</h3>
                <div class="social-links">
<<<<<<< HEAD
                    <a href="https://www.facebook.com/login.php/">Facebook</a>
                    <a href="https://x.com/i/flow/login">Twitter</a>
                    <a href="https://www.instagram.com/accounts/login/?hl=en">Instagram</a>
=======
                    <a href="https://www.facebook.com">Facebook</a>
                    <a href="https://twitter.com">Twitter</a>
                    <a href="https://www.instagram.com">Instagram</a>
>>>>>>> recovered-changes
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Movieहेरम. All rights reserved.</p>
        </div>
    </footer>

    <!-- JavaScript --> 
    
    <script>
        
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

        </script>
        
</body>
</html>